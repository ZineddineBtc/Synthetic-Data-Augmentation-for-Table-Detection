import random
import subprocess
import string
import sys
from table_formats import *

def generate_random_data(datatypes, num_rows, num_cols):
    """
    Generates random data for a table.
    
    Parameters:
    datatypes (list): List of datatypes to generate for each column.
    num_rows (int): Number of rows in the table.
    num_cols (int): Number of columns in the table.
    
    Returns:
    list: A list of lists representing the generated random data.
    """
    random.seed(52)
    data = []
    for _ in range(num_rows):
        row = []
        for datatype in datatypes:
            if datatype == "integer":
                row.append(random.randint(1, 1000))
            elif datatype == "float":
                row.append(round(random.uniform(1.0, 1000.0), 2))
            elif datatype == "text":
                row.append(generate_random_text())
            elif datatype == "email":
                row.append(generate_random_email())
        data.append(row)
    return data

def generate_random_email():
    """
    Generates a random email address.
    
    Returns:
    str: A randomly generated email address.
    """
    letters = string.ascii_lowercase
    email = ''.join(random.choice(letters) for _ in range(5)) + "@example.com"
    return email

def generate_random_text():
    """
    Generates random text.
    
    Returns:
    str: Randomly generated text.
    """
    letters = string.ascii_lowercase
    text = ''.join(random.choice(letters) for _ in range(5))
    return text

def generate_table_with_styles(data, style):
    """
    Generates a PDF containing table in LaTeX format with specified style.
    
    Parameters:
    data (list): List of lists containing the table data.
    style (str): Style of the table. Choose from available styles such as "no_vertical_lines", "dashed_lines", "colored_headers", 
                "no_horizontal_lines", "no_horizontal_and_vertical_lines", "booktabs".
    
    Returns:
    None
    """
    num_rows = len(data)
    num_cols = len(data[0])

    # Generate header line
    column_names = [f"Header{i}" for i in range(1, num_cols + 1)]
    header_line = " & ".join(["\\textbf{" + each_column_name + "}" for each_column_name in column_names])
    header_line = " " + header_line + " \\\\"

    table_data = ""
    for row in data:
        table_row = " & ".join(str(value) for value in row)
        table_data += table_row + " \\\\\n"
        if style == "dashed_lines":
            table_data += "\\hdashline \n"
        elif style == "no_horizontal_lines":
            continue
        elif style == "booktabs":
            continue
        elif style == "no_horizontal_and_vertical_lines":
            continue
        else:
            table_data += "\\hline \n"

    # Generate the appropriate table template based on the style
    if style == "no_vertical_lines":
        table_template = table_with_no_vertical_lines(num_cols, header_line, table_data)
    elif style == "dashed_lines":
        table_template = table_with_dashed_lines(num_cols, header_line, table_data)
    elif style == "colored_headers":
        table_template = table_with_colored_headers(num_cols, header_line, table_data)
    elif style == "no_horizontal_lines":
        table_template = table_with_no_horizontal_lines(num_cols, header_line, table_data)
    elif style == "booktabs":
        table_template = table_with_booktabs_style(num_cols, header_line, table_data)
    elif style == "no_horizontal_and_vertical_lines":
        table_template = table_with_no_horizontal_and_vertical_lines(num_cols, header_line, table_data)
    else:
        print("Invalid table style.")
        return

    # Save the LaTeX code to a file
    with open("table.tex", "w") as f:
        f.write(table_template)

    # Compile the LaTeX file to generate a PDF
    subprocess.call(["pdflatex", "table.tex"])

    print("Table generated successfully.")

if len(sys.argv) != 5:
    print("Usage: python script_name.py <datatypes> <num_rows> <num_cols> <style>")
    sys.exit(1)

# Get command-line arguments
datatypes = sys.argv[1].split(',')
num_rows = int(sys.argv[2])
num_cols = int(sys.argv[3])
style = sys.argv[4]

# Example usage
if __name__ == "__main__":
    data = generate_random_data(datatypes, num_rows, num_cols)
    generate_table_with_styles(data, style)