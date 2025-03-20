import cv2
import tensorflow as tf
import os
import csv
import sys
from predict import convert_to_png, predict_mask

def calculate_single_image_error(predicted_table_mask, ground_truth_table_mask):
    """
    Calculates the Bitwise XOR error rate between a predicted table mask and a ground truth table mask.
    
    Parameters:
    predicted_table_mask (str): Path to the predicted table mask image.
    ground_truth_table_mask (str): Path to the ground truth table mask image.
    
    Returns:
    float or None: The calculated error rate as a percentage, or None if an error occurs.
    """
    try:
        image1 = cv2.imread(ground_truth_table_mask)
        #tf.keras.preprocessing.image.save_img("../test/res.png",predicted_table_mask)
        #image2 = cv2.imread("../test/res.png")
        image2 = cv2.imread(predicted_table_mask)
        image1 = cv2.resize(image1, (image2.shape[1], image2.shape[0]))
        gray_image1 = cv2.cvtColor(image1, cv2.COLOR_RGB2GRAY)
        _, binary_image1 = cv2.threshold(gray_image1, 127, 255, cv2.THRESH_BINARY)
        gray_image2 = cv2.cvtColor(image2, cv2.COLOR_RGB2GRAY)
        _, binary_image2 = cv2.threshold(gray_image2, 127, 255, cv2.THRESH_BINARY)

        difference = cv2.bitwise_xor(binary_image1, binary_image2)
        bitwise_xor_white_pixel_count = cv2.countNonZero(difference)
        overall_pixel_count = image1.shape[0] * image1.shape[1]
        error_rate = (bitwise_xor_white_pixel_count / overall_pixel_count) * 100

        return error_rate
    except Exception as e:
        print(f"Error calculating bitwise xor error rate: {e}")
        return None

def calculate_average_error_rate_for_images_in_a_particular_folder(model_path, input_size_of_model, input_images_folder, ground_truth_table_mask_folder, output_csv):
    """
    Calculates the average Bitwise XOR error rate for predicted table masks against ground truth table masks in a folder.
    
    Parameters:
    model_path (str): Path to the trained model.
    input_size_of_model (tuple): Tuple representing the input size of the model (height, width).
    input_images_folder (str): Path to the folder containing input images to process.
    ground_truth_table_mask_folder (str): Path to the folder containing ground truth table mask images.
    output_csv (str): Path to the output CSV file where results will be saved.
    
    Returns:
    None
    """
    images_list = os.listdir(input_images_folder)

    with open(output_csv, 'w', newline='') as csvfile:
        csvwriter = csv.writer(csvfile)
        csvwriter.writerow(['Image Name', 'Error Rate'])

        for image_name in images_list:
            print(len(images_list))
            #if image_name.lower().endswith('.png'):
            try:
                
                image_path = os.path.join(input_images_folder, image_name)
                print("yes")
                table_mask, _ = predict_mask(model_path, input_size_of_model, image_path)
                print("No")
                tf.keras.preprocessing.image.save_img("../test/res.png",table_mask)
                #predicted_table_mask = cv2.imread("../test/res.png")
                ground_truth_table_mask = os.path.join(ground_truth_table_mask_folder, os.path.splitext(image_name)[0]+".png")
                print(ground_truth_table_mask)
                #ground_truth_table_mask = cv2.imread(ground_truth_table_mask_path)
                error_rate = calculate_single_image_error("../test/res.png", ground_truth_table_mask)
                csvwriter.writerow([image_name, error_rate])
                print("successfully written")
            except Exception as e:
                print(f"Error processing {image_name}: {e}")

if __name__ == "__main__":
    if len(sys.argv) == 5:
        model_path = sys.argv[1]
        input_size_of_model = tuple(map(int, sys.argv[2].split(',')))
        input_image = sys.argv[3]
        ground_truth_table_mask = sys.argv[4]

        table_mask, _ = predict_mask(model_path, input_size_of_model, input_image)
        tf.keras.preprocessing.image.save_img("../test/res.png",table_mask)
        predicted_table_mask = cv2.imread("../test/res.png")
        error_rate = calculate_single_image_error(predicted_table_mask, ground_truth_table_mask)
        if error_rate is not None:
            print(f"Bitwise XOR Error Rate for {ground_truth_table_mask}: {error_rate:.2f}%")

    elif len(sys.argv) == 6:
        model_path = sys.argv[1]
        input_size_of_model = tuple(map(int, sys.argv[2].split(',')))
        input_images_folder = sys.argv[3]
        ground_truth_table_mask_folder = sys.argv[4]
        output_csv = sys.argv[5]

        calculate_average_error_rate_for_images_in_a_particular_folder(model_path, input_size_of_model, input_images_folder, ground_truth_table_mask_folder, output_csv)

    else:
        print("Usage for single image: python combined_script.py <model_path> <input_size_of_model> <input_image> <ground_truth_table_mask>")
        print("Usage for folder: python combined_script.py <model_path> <input_size_of_model> <input_images_folder> <ground_truth_table_mask_folder> <output_csv>")
