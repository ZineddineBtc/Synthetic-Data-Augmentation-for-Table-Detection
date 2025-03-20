import numpy as np

def calculate_iou(ground_truth_coords, predicted_coords):
    """
    Calculates the Intersection over Union (IoU) between ground truth and predicted table coordinates.
    
    Parameters:
    ground_truth_coords (tuple): Tuple containing coordinates of the ground truth bounding box in the format (x1, y1, x2, y2).
    predicted_coords (tuple): Tuple containing coordinates of the predicted bounding box in the format (x1, y1, x2, y2).
    
    Returns:
    float: The calculated IoU value, indicating the overlap between the two bounding boxes.
    """
    # Calculate the intersection area
    x1 = max(ground_truth_coords[0], predicted_coords[0])
    y1 = max(ground_truth_coords[1], predicted_coords[1])
    x2 = min(ground_truth_coords[2], predicted_coords[2])
    y2 = min(ground_truth_coords[3], predicted_coords[3])
    
    intersection_area = max(0, x2 - x1 + 1) * max(0, y2 - y1 + 1)
    
    # Calculate the union area
    ground_truth_area = (ground_truth_coords[2] - ground_truth_coords[0] + 1) * (ground_truth_coords[3] - ground_truth_coords[1] + 1)
    predicted_area = (predicted_coords[2] - predicted_coords[0] + 1) * (predicted_coords[3] - predicted_coords[1] + 1)
    union_area = ground_truth_area + predicted_area - intersection_area
    
    # Calculate IoU
    iou = intersection_area / union_area
    
    return iou
