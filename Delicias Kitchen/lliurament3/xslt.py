from lxml import etree

# Load the XML and XSLT files
xml_file = "llistareceptes.xml"
xslt_file = "receta.xsl"

# Parse the XML and XSLT files
xml = etree.parse(xml_file)
xslt = etree.parse(xslt_file)
transform = etree.XSLT(xslt)

# Check if the XML has recipe elements
recipes = xml.xpath('//receta')
print(f"Found {len(recipes)} recipes in the XML.")

# Apply the transformation for each recipe
for recipe in recipes:
    print(f"Processing recipe: {recipe.get('id')} - {recipe.find('nombre').text}")
   
    # Perform the transformation on the individual recipe
    output = transform(recipe)
   
    # Check if the transformation produced output
    if output is not None:
        # Generate the output HTML filename based on the recipe ID
        filename = f"receta{recipe.get('id')}.html"
       
        # Write the output to the respective file
        with open(filename, 'wb') as f:
            f.write(etree.tostring(output, pretty_print=True, encoding='utf-8'))
       
        print(f"Generated: {filename}")
    else:
        print(f"Transformation failed for recipe {recipe.get('id')}")