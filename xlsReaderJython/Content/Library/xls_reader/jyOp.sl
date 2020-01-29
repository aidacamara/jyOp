namespace: xls_reader
operation:
  name: jyOp
  python_action:
    useJython: true
    script: "from org.apache.poi.hssf.usermodel import *\nfrom java.io import FilelnputStream\n\nfile = \"C:\\Book1.xls\"\nfis = FilelnputStream(file)\nwb = HSSFWorkbook(fis)\nsheet = wb.getSheetAt(0)\nrows = sheet.getPhysicalNumberOfRows()\ncols = sheet.getRow(0).getPhysicalNumberOfCells()\n\nfirstRow = 0\nresult = []\nfor i in range(firstRow, rows):\n    row = sheet.getRow(r)\n    cell0 = row.getCell(0)\n    cell1 = row.getCell(1)\n    \n    result.append({\n        'name': cell0,\n        'serialNumber': cell1\n    })"
  results:
    - SUCCESS
