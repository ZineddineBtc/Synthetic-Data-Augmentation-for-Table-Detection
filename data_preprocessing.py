'''
Generate Comumn and Table mask from Marmot Data
'''

import xml.etree.ElementTree as ET
import os
import numpy as np
from PIL import Image

# Returns if columns belong to same table or not
def sameTable(ymin_1, ymin_2, ymax_1, ymax_2):
    """
    Determines if two columns belong to the same table based on their y-coordinates.
    
    Parameters:
    ymin_1 (int): The ymin value of the first column.
    ymin_2 (int): The ymin value of the second column.
    ymax_1 (int): The ymax value of the first column.
    ymax_2 (int): The ymax value of the second column.
    
    Returns:
    bool: True if columns belong to the same table, False otherwise.
    """
    min_diff = abs(ymin_1 - ymin_2)
    max_diff = abs(ymax_1 - ymax_2)

    if min_diff <= 5 and max_diff <=5:
        return True
    elif min_diff <= 4 and max_diff <=7:
        return True
    elif min_diff <= 7 and max_diff <=4:
        return True
    return False


if __name__ == "__main__":
    #directory = './dataset/Marmot_data/'
    #final_col_directory = './dataset/column_mask/'
    #final_table_directory = './dataset/table_mask/'
    directory = './dataset/test_ICDAR_data/'
    final_col_directory = './dataset/test_column_mask/'
    final_table_directory = './dataset/test_table_mask/'

    for file in os.listdir(directory):
        filename = os.fsdecode(file)
        # Find all the xml files
        if filename.endswith(".xml"):
            filename = filename[:-4]

            # Parse xml file
            #tree = ET.parse('./dataset/Marmot_data/' + filename + '.xml')
            tree = ET.parse('./dataset/test_ICDAR_data/' + filename + '.xml')
            root = tree.getroot()
            size = root.find('size')

            # Parse width
            width = int(size.find('width').text)
            height = int(size.find('height').text)

            # Create grayscale image array for column and table masks
            col_mask = np.zeros((height, width), dtype=np.int32)
            table_mask = np.zeros((height, width), dtype = np.int32)

            got_first_column = False
            i=0
            table_xmin = 10000
            table_xmax = 0

            table_ymin = 10000
            table_ymax = 0

            for column in root.findall('object'):
                bndbox = column.find('bndbox')
                xmin = int(bndbox.find('xmin').text)
                ymin = int(bndbox.find('ymin').text)
                xmax = int(bndbox.find('xmax').text)
                ymax = int(bndbox.find('ymax').text)

                col_mask[ymin:ymax, xmin:xmax] = 255
                                
                if got_first_column:
                    if sameTable(prev_ymin, ymin, prev_ymax, ymax) == False:
                        i+=1
                        got_first_column = False
                        table_mask[table_ymin:table_ymax, table_xmin:table_xmax] = 255
                        
                        table_xmin = 10000
                        table_xmax = 0

                        table_ymin = 10000
                        table_ymax = 0
                        
                if got_first_column == False:
                    got_first_column = True
                    first_xmin = xmin
                    
                prev_ymin = ymin
                prev_ymax = ymax
                
                table_xmin = min(xmin, table_xmin)
                table_xmax = max(xmax, table_xmax)
                
                table_ymin = min(ymin, table_ymin)
                table_ymax = max(ymax, table_ymax)

            table_mask[table_ymin:table_ymax, table_xmin:table_xmax] = 255

            im = Image.fromarray(col_mask.astype(np.uint8),'L')
            im.save(final_col_directory + filename + ".jpeg")

            im = Image.fromarray(table_mask.astype(np.uint8),'L')
            im.save(final_table_directory + filename + ".jpeg")

            



