import cv2
import numpy as np
from PIL import Image
import os

def create_table_mask(image_path, mask_folder):
    """
    Creates a binary mask for the table in an input image and saves the binary mask image in a given folder.
    
    Parameters:
    image_path (str): Path to the input image for which the table mask needs to be created.
    mask_folder (str): Path to the folder where the mask image will be saved.
    
    Returns:
    tuple: A tuple containing bounding box coordinates (min_x, min_y, max_x, max_y) of the detected table.
    """
    image_without_text = cv2.imread(image_path)
    
    table_location = np.where(image_without_text != 255)
    
    min_x = np.min(table_location[1])
    min_y = np.min(table_location[0])
    
    max_x = np.max(table_location[1])
    max_y = np.max(table_location[0])
    
    print("Table start location: ({}, {})".format(min_x, min_y))
    print("Table end location: ({}, {})".format(max_x, max_y))
    
    mask = np.zeros(image_without_text.shape[:2], dtype=np.uint8)
    cv2.rectangle(mask, (min_x, min_y), (max_x, max_y), (255), thickness=cv2.FILLED)
    
    base_filename = os.path.splitext(os.path.basename(image_path))[0]
    mask_filename = f'{base_filename}_table_mask.png'
    mask_path = os.path.join(mask_folder, mask_filename)
    
    cv2.imwrite(mask_path, mask)
    
    return min_x, min_y, max_x, max_y

# Main block
if __name__ == "__main__":
    input_folder = 'input_images_folder'
    output_folder = 'mask_output_folder'
    
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)
    
    for filename in os.listdir(input_folder):
        if filename.lower().endswith('.png'):
            image_path = os.path.join(input_folder, filename)
            bounding_box = create_table_mask(image_path, output_folder)
