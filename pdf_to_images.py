from pdf2image import convert_from_path

def pdf_to_images(pdffile):
    """
    Convert pages of a PDF file to a list of image objects.
    
    Parameters:
        pdffile (str): Path to the PDF file for conversion.
        
    Returns:
        list of PIL.Image objects: List of image objects,
        each representing a page of the PDF converted to an image.
    """
    images = convert_from_path(pdffile)
    return images