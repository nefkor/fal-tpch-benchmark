# -*- coding: utf-8 -*-
# This code takes the data, obfuscates and generates a new file with the output
# author: Rodolfo Maripan

import sys
import hashlib

HASH_STRING = "e9d"
COMMA_SEPARATOR = ","
# Encode text with a given hash
def encode(text, hash):
    # algorithm sha256 and hex result
    hexEncoded = hashlib.sha256(text + hash).hexdigest()
    return(hexEncoded)

# Split a text line by using a separator and creates a new one with trimmed values
def fieldSplit(text,separator=COMMA_SEPARATOR):
    fieldList = text.split(separator)
    newFieldList = []
    for field in fieldList:
        newFieldList.append(field.strip())
    return newFieldList

# Splits a line and encodes its data depending on its position in the generated list
def encodeFieldOnString(line, listPosToEncode):
    listFields=fieldSplit(line,COMMA_SEPARATOR)
    pos=0
    lineOut = ""
    for field in listFields:
        if (pos == 0):
            lineOut = field
            if pos in listPosToEncode:
                lineOut = encode(field,HASH_STRING)
            else:
                lineOut = field
        else:
            if pos in listPosToEncode:
                lineOut = lineOut + " ," + encode(field,HASH_STRING)
            else:
                lineOut = lineOut + " ," + field

        pos=pos+1
    return lineOut

#Creates a new file, loads this new file and encode its contents, the result is stored in a new file
def main():
    fin = open('./data.csv','w+')
    fout = open('./encoded_data.csv','w+')

    #create a file with data
    for i in range(10):
        fin.write("field0, field1, %d\r\n" % (i+1))
    fin.close()

    #open the created file
    fin = open('./data.txt','r')

    # define the position of the fields to be obfuscated
    listToEncde = [0,2]

    #read the file and encode its content based on the list just created
    for line in fin.readlines():
        print "Encoding position  0, 2 : " + encodeFieldOnString(line,listToEncde)
        fout.write(encodeFieldOnString(line,listToEncde) + "\n")
    fin.close()
    fout.close()

if __name__=="__main__":
    main()
