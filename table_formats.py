import random

def table_with_dashed_lines(num_cols, header_line, table_data):
    latex_code = f"""
    \\documentclass{{article}}
    \\usepackage{{arydshln}}
    \\usepackage{{lipsum}}
    \\usepackage{{color}}
    \\usepackage{{wrapfig}}
    \\begin{{document}}
    
    % Page 1
    \\pagenumbering{{arabic}}
    \\lipsum[5]
    \\begin{{wraptable}}{{l}}{{10cm}}
    \\centering
    \\begin{{tabular}}{{:{'c:' * num_cols}}}
    \\hdashline
    {header_line}
    \\hdashline
    {table_data}
    \\end{{tabular}}
    \\caption{{Example Table}}
    \\end{{wraptable}}
    \\lipsum[3-4]
    
    \\newpage
    
    % Page 2: Table with white text, no title, and no page number
    \\thispagestyle{{empty}}
    \\textcolor{{white}}{{\\lipsum[5]}}
    \\begin{{wraptable}}{{l}}{{10cm}}
    \\centering
    \\begin{{tabular}}{{:{'c:' * num_cols}}}
    \\hdashline
    {header_line}
    \\hdashline
    {table_data}
    \\end{{tabular}}
    \\caption{{Example Table}}
    \\end{{wraptable}}
    \\textcolor{{white}}{{\\lipsum[3-4]}}
    \\end{{document}}
    """
    return latex_code

def table_with_no_vertical_lines(num_cols, header_line, table_data):
    latex_code = f"""
    \\documentclass{{article}}
    \\usepackage{{arydshln}}
    \\usepackage{{lipsum}}
    \\usepackage{{color}}
    \\usepackage{{wrapfig}}
    \\begin{{document}}
    
    % Page 1
    \\pagenumbering{{arabic}}
    \\lipsum[7]
    \\begin{{wraptable}}{{l}}{{10cm}}
    \\centering
    \\begin{{tabular}}{{{'c' * num_cols}}}
    \\hline
    {header_line}
    \\hline
    {table_data}
    \\end{{tabular}}
    \\caption{{Example Table}}
    \\end{{wraptable}}
    \\lipsum[2-3]
    
    
    \\newpage
    
    % Page 2: Table with white text, no title, and no page number
    \\thispagestyle{{empty}}
    \\textcolor{{white}}{{\\lipsum[7]}}
    \\begin{{wraptable}}{{l}}{{10cm}}
    \\centering
    \\begin{{tabular}}{{{'c' * num_cols}}}
    \\hline
    {header_line}
    \\hline
    {table_data}
    \\end{{tabular}}
    \\end{{wraptable}}
    \\textcolor{{white}}{{\\lipsum[2-3]}}
    \\end{{document}}
    """
    return latex_code

def table_with_colored_headers(num_cols, header_line, table_data):
    latex_code = f"""
    \\documentclass{{article}}
    \\usepackage{{arydshln}}
    \\usepackage[table]{{xcolor}}
    \\usepackage{{lipsum}}
    \\usepackage{{color}}
    \\usepackage{{wrapfig}}
    \\begin{{document}}
    
    % Page 1
    \\pagenumbering{{arabic}}
    \\lipsum[5-8]
    \\begin{{wraptable}}{{l}}{{10cm}}
    \\centering
    \\begin{{tabular}}{{|{'c|' * num_cols}}}
    \\hline
    \\rowcolor{{gray!25}}
    {header_line}
    \\hline
    {table_data}
    \\end{{tabular}}
    \\caption{{Example Table}}
    \\end{{wraptable}}
    %\\lipsum[5]
    
    \\newpage
    
    % Page 2: Table with white text, no title, and no page number
    \\thispagestyle{{empty}}
    \\textcolor{{white}}{{\\lipsum[5-8]}}
    \\begin{{wraptable}}{{l}}{{10cm}}
    \\centering
    \\begin{{tabular}}{{|{'c|' * num_cols}}}
    \\hline
    \\rowcolor{{gray!25}}
    {header_line}
    \\hline
    {table_data}
    \\end{{tabular}}
    \\end{{wraptable}}
    %\\textcolor{{white}}{{\\lipsum[5]}}    

    \\end{{document}}
    """
    return latex_code

def table_with_no_horizontal_lines(num_cols, header_line, table_data):
    latex_code = f"""
    \\documentclass{{article}}
    \\usepackage{{arydshln}}
    \\usepackage{{lipsum}}
    \\usepackage{{color}}
    \\usepackage{{wrapfig}}
    \\begin{{document}}
    
    % Page 1
    \\pagenumbering{{arabic}}
    \\lipsum[14-16]
    \\begin{{wraptable}}{{r}}{{10cm}}
    \\centering
    \\begin{{tabular}}{{|{'c|' * num_cols}}}
    \\hline
    {header_line}
    {table_data}
    \\hline
    \\end{{tabular}}
    \\caption{{Example Table}}
    \\end{{wraptable}}
    %\\lipsum[9]
    
    
    \\newpage
    
    % Page 2: Table with white text, no title, and no page number
    \\thispagestyle{{empty}}
    \\textcolor{{white}}{{\\lipsum[14-16]}}
    \\begin{{wraptable}}{{r}}{{10cm}}
    \\centering
    \\begin{{tabular}}{{|{'c|' * num_cols}}}
    \\hline
    {header_line}
    {table_data}
    \\hline
    \\end{{tabular}}
    \\end{{wraptable}}
    %\\textcolor{{white}}{{\\lipsum[9]}}
    \\end{{document}}
    """
    return latex_code

def table_with_booktabs_style(num_cols, header_line, table_data):
    latex_code = f"""
    \\documentclass{{article}}
    \\usepackage{{booktabs}}
    \\usepackage{{lipsum}}
    \\usepackage{{color}}
    \\usepackage{{wrapfig}}
    \\begin{{document}}
    
    % Page 1
    \\pagenumbering{{arabic}}
    \\lipsum[11-12]
    \\begin{{wraptable}}{{l}}{{11cm}}
    \\centering
    \\begin{{tabular}}{{{'c' * num_cols}}}
    \\toprule
    {header_line}
    \\midrule
    {table_data}
    \\bottomrule
    \\end{{tabular}}
    \\caption{{Example Table}}
    \\end{{wraptable}}
    \\lipsum[7]

    \\newpage
    
    % Page 2
    \\thispagestyle{{empty}}
    \\textcolor{{white}}{{\\lipsum[11-12]}}
    \\begin{{wraptable}}{{l}}{{11cm}}
    \\centering
    \\begin{{tabular}}{{{'c' * num_cols}}}
    \\toprule
    {header_line}
    \\midrule
    {table_data}
    \\bottomrule
    \\end{{tabular}}
    \\end{{wraptable}}
    \\textcolor{{white}}{{\\lipsum[7]}}
  
    \\end{{document}}
    """
    return latex_code


def table_with_no_horizontal_and_vertical_lines(num_cols, header_line, table_data):
    latex_code = f"""
    \\documentclass{{article}}
    \\usepackage{{lipsum}}
    \\usepackage{{color}}
    \\usepackage{{wrapfig}}
    \\begin{{document}}
   
    % Page 1
    \\pagenumbering{{arabic}}
    \\lipsum[5-7]
    \\begin{{wraptable}}{{l}}{{11cm}}
    \\centering
    \\begin{{tabular}}{{{'c' * num_cols}}}
    {header_line}
    {table_data}
    \\end{{tabular}}
    \\caption{{Example Table}}
    \\end{{wraptable}}
    \\lipsum[2-3]

    \\newpage
    
    % Page 2
    \\thispagestyle{{empty}}
    \\textcolor{{white}}{{\\lipsum[5-7]}}
    \\begin{{wraptable}}{{l}}{{11cm}}
    \\centering
    \\begin{{tabular}}{{{'c' * num_cols}}}
    {header_line}
    {table_data}
    \\end{{tabular}}
    \\end{{wraptable}}
    \\textcolor{{white}}{{\\lipsum[2-3]}}
    \\end{{document}}
    """
    return latex_code
