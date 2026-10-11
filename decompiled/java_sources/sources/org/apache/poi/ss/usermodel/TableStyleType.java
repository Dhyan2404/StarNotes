package org.apache.poi.ss.usermodel;

import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.CellRangeAddressBase;
import org.apache.poi.ss.util.CellReference;

/* loaded from: classes13.dex */
public enum TableStyleType {
    wholeTable { // from class: org.apache.poi.ss.usermodel.TableStyleType.1
        @Override // org.apache.poi.ss.usermodel.TableStyleType
        public CellRangeAddressBase getRange(Table table, CellReference cellReference) {
            return new CellRangeAddress(table.getStartRowIndex(), table.getEndRowIndex(), table.getStartColIndex(), table.getEndColIndex());
        }
    },
    pageFieldLabels,
    pageFieldValues,
    firstColumnStripe { // from class: org.apache.poi.ss.usermodel.TableStyleType.2
        @Override // org.apache.poi.ss.usermodel.TableStyleType
        public CellRangeAddressBase getRange(Table table, CellReference cellReference) {
            TableStyleInfo style = table.getStyle();
            if (!style.isShowColumnStripes()) {
                return null;
            }
            DifferentialStyleProvider style2 = style.getStyle().getStyle(TableStyleType.firstColumnStripe);
            DifferentialStyleProvider style3 = style.getStyle().getStyle(TableStyleType.secondColumnStripe);
            int max = style2 == null ? 1 : Math.max(1, style2.getStripeSize());
            int max2 = style3 != null ? Math.max(1, style3.getStripeSize()) : 1;
            int startColIndex = table.getStartColIndex();
            int i = startColIndex + max;
            short col = cellReference.getCol();
            while (startColIndex <= col) {
                int i2 = i - 1;
                if (col <= i2) {
                    return new CellRangeAddress(table.getStartRowIndex(), table.getEndRowIndex(), startColIndex, i2);
                }
                startColIndex = i + max2;
                i = startColIndex + max;
            }
            return null;
        }
    },
    secondColumnStripe { // from class: org.apache.poi.ss.usermodel.TableStyleType.3
        @Override // org.apache.poi.ss.usermodel.TableStyleType
        public CellRangeAddressBase getRange(Table table, CellReference cellReference) {
            int i;
            TableStyleInfo style = table.getStyle();
            if (!style.isShowColumnStripes()) {
                return null;
            }
            DifferentialStyleProvider style2 = style.getStyle().getStyle(TableStyleType.firstColumnStripe);
            DifferentialStyleProvider style3 = style.getStyle().getStyle(TableStyleType.secondColumnStripe);
            int max = style2 == null ? 1 : Math.max(1, style2.getStripeSize());
            int max2 = style3 == null ? 1 : Math.max(1, style3.getStripeSize());
            int startColIndex = table.getStartColIndex();
            int i2 = startColIndex + max;
            short col = cellReference.getCol();
            while (startColIndex <= col) {
                if (col >= i2 && col <= (i = (i2 + max2) - 1)) {
                    return new CellRangeAddress(table.getStartRowIndex(), table.getEndRowIndex(), i2, i);
                }
                startColIndex = i2 + max2;
                i2 = startColIndex + max;
            }
            return null;
        }
    },
    firstRowStripe { // from class: org.apache.poi.ss.usermodel.TableStyleType.4
        @Override // org.apache.poi.ss.usermodel.TableStyleType
        public CellRangeAddressBase getRange(Table table, CellReference cellReference) {
            TableStyleInfo style = table.getStyle();
            if (!style.isShowRowStripes()) {
                return null;
            }
            DifferentialStyleProvider style2 = style.getStyle().getStyle(TableStyleType.firstRowStripe);
            DifferentialStyleProvider style3 = style.getStyle().getStyle(TableStyleType.secondRowStripe);
            int max = style2 == null ? 1 : Math.max(1, style2.getStripeSize());
            int max2 = style3 != null ? Math.max(1, style3.getStripeSize()) : 1;
            int startRowIndex = table.getStartRowIndex() + table.getHeaderRowCount();
            int i = startRowIndex + max;
            int row = cellReference.getRow();
            while (startRowIndex <= row) {
                int i2 = i - 1;
                if (row <= i2) {
                    return new CellRangeAddress(startRowIndex, i2, table.getStartColIndex(), table.getEndColIndex());
                }
                startRowIndex = i + max2;
                i = startRowIndex + max;
            }
            return null;
        }
    },
    secondRowStripe { // from class: org.apache.poi.ss.usermodel.TableStyleType.5
        @Override // org.apache.poi.ss.usermodel.TableStyleType
        public CellRangeAddressBase getRange(Table table, CellReference cellReference) {
            int i;
            TableStyleInfo style = table.getStyle();
            if (!style.isShowRowStripes()) {
                return null;
            }
            DifferentialStyleProvider style2 = style.getStyle().getStyle(TableStyleType.firstRowStripe);
            DifferentialStyleProvider style3 = style.getStyle().getStyle(TableStyleType.secondRowStripe);
            int max = style2 == null ? 1 : Math.max(1, style2.getStripeSize());
            int max2 = style3 == null ? 1 : Math.max(1, style3.getStripeSize());
            int startRowIndex = table.getStartRowIndex() + table.getHeaderRowCount();
            int i2 = startRowIndex + max;
            int row = cellReference.getRow();
            while (startRowIndex <= row) {
                if (row >= i2 && row <= (i = (i2 + max2) - 1)) {
                    return new CellRangeAddress(i2, i, table.getStartColIndex(), table.getEndColIndex());
                }
                startRowIndex = i2 + max2;
                i2 = startRowIndex + max;
            }
            return null;
        }
    },
    lastColumn { // from class: org.apache.poi.ss.usermodel.TableStyleType.6
        @Override // org.apache.poi.ss.usermodel.TableStyleType
        public CellRangeAddressBase getRange(Table table, CellReference cellReference) {
            if (table.getStyle().isShowLastColumn()) {
                return new CellRangeAddress(table.getStartRowIndex(), table.getEndRowIndex(), table.getEndColIndex(), table.getEndColIndex());
            }
            return null;
        }
    },
    firstColumn { // from class: org.apache.poi.ss.usermodel.TableStyleType.7
        @Override // org.apache.poi.ss.usermodel.TableStyleType
        public CellRangeAddressBase getRange(Table table, CellReference cellReference) {
            if (table.getStyle().isShowFirstColumn()) {
                return new CellRangeAddress(table.getStartRowIndex(), table.getEndRowIndex(), table.getStartColIndex(), table.getStartColIndex());
            }
            return null;
        }
    },
    headerRow { // from class: org.apache.poi.ss.usermodel.TableStyleType.8
        @Override // org.apache.poi.ss.usermodel.TableStyleType
        public CellRangeAddressBase getRange(Table table, CellReference cellReference) {
            if (table.getHeaderRowCount() < 1) {
                return null;
            }
            return new CellRangeAddress(table.getStartRowIndex(), (table.getStartRowIndex() + table.getHeaderRowCount()) - 1, table.getStartColIndex(), table.getEndColIndex());
        }
    },
    totalRow { // from class: org.apache.poi.ss.usermodel.TableStyleType.9
        @Override // org.apache.poi.ss.usermodel.TableStyleType
        public CellRangeAddressBase getRange(Table table, CellReference cellReference) {
            if (table.getTotalsRowCount() < 1) {
                return null;
            }
            return new CellRangeAddress((table.getEndRowIndex() - table.getTotalsRowCount()) + 1, table.getEndRowIndex(), table.getStartColIndex(), table.getEndColIndex());
        }
    },
    firstHeaderCell { // from class: org.apache.poi.ss.usermodel.TableStyleType.10
        @Override // org.apache.poi.ss.usermodel.TableStyleType
        public CellRangeAddressBase getRange(Table table, CellReference cellReference) {
            if (table.getHeaderRowCount() < 1) {
                return null;
            }
            return new CellRangeAddress(table.getStartRowIndex(), table.getStartRowIndex(), table.getStartColIndex(), table.getStartColIndex());
        }
    },
    lastHeaderCell { // from class: org.apache.poi.ss.usermodel.TableStyleType.11
        @Override // org.apache.poi.ss.usermodel.TableStyleType
        public CellRangeAddressBase getRange(Table table, CellReference cellReference) {
            if (table.getHeaderRowCount() < 1) {
                return null;
            }
            return new CellRangeAddress(table.getStartRowIndex(), table.getStartRowIndex(), table.getEndColIndex(), table.getEndColIndex());
        }
    },
    firstTotalCell { // from class: org.apache.poi.ss.usermodel.TableStyleType.12
        @Override // org.apache.poi.ss.usermodel.TableStyleType
        public CellRangeAddressBase getRange(Table table, CellReference cellReference) {
            if (table.getTotalsRowCount() < 1) {
                return null;
            }
            return new CellRangeAddress((table.getEndRowIndex() - table.getTotalsRowCount()) + 1, table.getEndRowIndex(), table.getStartColIndex(), table.getStartColIndex());
        }
    },
    lastTotalCell { // from class: org.apache.poi.ss.usermodel.TableStyleType.13
        @Override // org.apache.poi.ss.usermodel.TableStyleType
        public CellRangeAddressBase getRange(Table table, CellReference cellReference) {
            if (table.getTotalsRowCount() < 1) {
                return null;
            }
            return new CellRangeAddress((table.getEndRowIndex() - table.getTotalsRowCount()) + 1, table.getEndRowIndex(), table.getEndColIndex(), table.getEndColIndex());
        }
    },
    firstSubtotalColumn,
    secondSubtotalColumn,
    thirdSubtotalColumn,
    blankRow,
    firstSubtotalRow,
    secondSubtotalRow,
    thirdSubtotalRow,
    firstColumnSubheading,
    secondColumnSubheading,
    thirdColumnSubheading,
    firstRowSubheading,
    secondRowSubheading,
    thirdRowSubheading;

    public CellRangeAddressBase appliesTo(Table table, Cell cell) {
        if (cell == null) {
            return null;
        }
        return appliesTo(table, new CellReference(cell.getSheet().getSheetName(), cell.getRowIndex(), cell.getColumnIndex(), true, true));
    }

    public CellRangeAddressBase getRange(Table table, CellReference cellReference) {
        return null;
    }

    public CellRangeAddressBase appliesTo(Table table, CellReference cellReference) {
        CellRangeAddressBase range;
        if (table == null || cellReference == null || !cellReference.getSheetName().equals(table.getSheetName()) || !table.contains(cellReference) || (range = getRange(table, cellReference)) == null || !range.isInRange(cellReference.getRow(), cellReference.getCol())) {
            return null;
        }
        return range;
    }

    public final CellRangeAddressBase getRange(Table table, Cell cell) {
        if (cell == null) {
            return null;
        }
        return getRange(table, new CellReference(cell.getSheet().getSheetName(), cell.getRowIndex(), cell.getColumnIndex(), true, true));
    }
}
