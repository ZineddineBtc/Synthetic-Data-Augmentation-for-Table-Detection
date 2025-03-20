import tensorflow as tf
import os
import sys
from PIL import Image

def convert_to_png(image):
    """
    Converts an image to PNG format if it's in JPEG, JPG, or BMP format.
    
    Parameters:
    image (str): Path to the input image file.
    
    Returns:
    str: Path to the converted PNG image or the original image path if no conversion is needed.
    """
    if image.lower().endswith(('.jpg', '.jpeg', '.bmp')):
        try:
            img = Image.open(image)
            png_image = os.path.splitext(image)[0] + '.png'
            img.save(png_image, format='PNG')
            return png_image
        except Exception as e:
            print(f"Error converting {image}: {e}")
    return image

def predict_mask(model_path, input_size_of_model, input_image):
    """
    Predicts the table and column masks using a trained model.
    
    Parameters:
    model_path (str): Path to the trained model.
    input_size_of_model (tuple): Tuple representing the input size of the model (height, width).
    input_image (str): Path to the input image for which to predict the masks.
    
    Returns:
    tuple: A tuple containing the predicted table mask and column mask as NumPy arrays.
    """
    model = tf.keras.models.load_model(model_path, compile=False)

    image = convert_to_png(input_image)

    image = tf.io.read_file(image)
    image = tf.image.decode_png(image, channels=3)
    resized_image = tf.image.resize(image, input_size_of_model)
    reshaped_image = tf.reshape(resized_image, [-1, *input_size_of_model, 3])

    pred_mask1, pred_mask2 = model.predict(reshaped_image)
    pred_mask1 = tf.argmax(pred_mask1, axis=-1)
    pred_mask1 = pred_mask1[..., tf.newaxis]
    pred_mask2 = tf.argmax(pred_mask2, axis=-1)
    pred_mask2 = pred_mask2[..., tf.newaxis]
    table_mask, column_mask = pred_mask1[0], pred_mask2[0]

    return table_mask, column_mask

if __name__ == "__main__":
    #model_path = '../tablenet_sandbox1/mymodel_151/'  # Modify this path
    #input_size_of_model = (1024, 1024)
    #input_image = '../test/input_images/10.1.1.8.2165_10.png'  # Modify this path
    model_path = sys.argv[1]
    input_size_of_model = tuple(map(int, sys.argv[2].split(',')))
    input_image = sys.argv[3]

    table_mask, column_mask = predict_mask(model_path, input_size_of_model, input_image)
    