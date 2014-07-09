import os
import glob
import csv
import xlwt # from http://www.python-excel.org/

for csvfile in glob.glob(os.path.join('./data', '*.csv')):
    wb = xlwt.Workbook()
    ws = wb.add_sheet('data')
    with open(csvfile, 'rb') as f:
        reader = csv.reader(f)
        for r, row in enumerate(reader):
            for c, col in enumerate(row):
                ws.write(r, c, col)
    wb.save(csvfile + '.xls')
