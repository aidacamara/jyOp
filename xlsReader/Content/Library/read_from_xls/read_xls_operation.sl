namespace: read_from_xls
operation:
  name: read_xls_operation
  inputs:
    - pathToFile
    - sheetName
    - hasHeader
  python_action:
    useJython: false
    script: "# removing, renaming or overwriting the 'execute' method will  result in compilation failure.\n# any parameters declared in the execute's method signature should be present in the 'Inputs' tab. \ndef execute(pathToFile, sheetName, hasHeader):\n    # code goes here\n    result = readEntries(pathToFile, sheetName, hasHeader)\n    return locals()\n# you can add additional helper methods below.\n\ndef readEntries(pathToFile, sheetName, hasHeader):\n    import xlrd\n    \n    workbook = xlrd.open_workbook(pathToFile)\n    worksheet = workbook.sheet_by_name(sheetName)\n    \n    if hasHeader:\n        i = 1\n    else:\n        i = 0\n   \n    result = []\n    while worksheet.cell(i,0).value != xlrs.empty_cell.value:\n        result.append({\n                'name': worksheet.cell(i,0).value,\n                'serialNumber': worksheet.cell(i, 1).value\n            })\n        i = i + 1\n        \n    return str(result)"
  outputs:
    - result
  results:
    - SUCCESS
