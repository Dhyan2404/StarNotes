package org.apache.poi.ss.usermodel;

import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;
import org.apache.poi.ss.formula.FormulaShifter;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.usermodel.RangeCopier;
import org.apache.poi.ss.util.CellRangeAddress;

/* loaded from: classes13.dex */
public abstract class RangeCopier {
    private Sheet destSheet;
    private FormulaShifter horizontalFormulaShifter;
    private Sheet sourceSheet;
    private FormulaShifter verticalFormulaShifter;

    /* renamed from: org.apache.poi.ss.usermodel.RangeCopier$2 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198262 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType;

        static {
            int[] iArr = new int[CellType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$CellType = iArr;
            try {
                iArr[CellType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.NUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BLANK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BOOLEAN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.FORMULA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public RangeCopier(Sheet sheet, Sheet sheet2) {
        this.sourceSheet = sheet;
        this.destSheet = sheet2;
    }

    public static void cloneCellContent(Cell cell, Cell cell2, Map<Integer, CellStyle> map) {
        if (map != null) {
            if (cell.getSheet().getWorkbook() == cell2.getSheet().getWorkbook()) {
                cell2.setCellStyle(cell.getCellStyle());
            } else {
                int hashCode = cell.getCellStyle().hashCode();
                CellStyle cellStyle = map.get(Integer.valueOf(hashCode));
                if (cellStyle == null) {
                    cellStyle = cell2.getSheet().getWorkbook().createCellStyle();
                    cellStyle.cloneStyleFrom(cell.getCellStyle());
                    map.put(Integer.valueOf(hashCode), cellStyle);
                }
                cell2.setCellStyle(cellStyle);
            }
        }
        switch (C198262.$SwitchMap$org$apache$poi$ss$usermodel$CellType[cell.getCellType().ordinal()]) {
            case 1:
                cell2.setCellValue(cell.getStringCellValue());
                return;
            case 2:
                cell2.setCellValue(cell.getNumericCellValue());
                return;
            case 3:
                cell2.setBlank();
                return;
            case 4:
                cell2.setCellValue(cell.getBooleanCellValue());
                return;
            case 5:
                cell2.setCellErrorValue(cell.getErrorCellValue());
                return;
            case 6:
                cell2.setCellFormula(cell.getCellFormula());
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$copyRange$0(CellRangeAddress cellRangeAddress) {
        this.destSheet.addMergedRegion(cellRangeAddress);
    }

    public abstract void adjustCellReferencesInsideFormula(Cell cell, Sheet sheet, int i, int i2);

    public boolean adjustInBothDirections(Ptg[] ptgArr, int i, int i2, int i3) {
        boolean adjustFormula = i3 != 0 ? this.verticalFormulaShifter.adjustFormula(ptgArr, i) : true;
        if (i2 != 0) {
            return adjustFormula && this.horizontalFormulaShifter.adjustFormula(ptgArr, i);
        }
        return adjustFormula;
    }

    public void copyRange(CellRangeAddress cellRangeAddress, CellRangeAddress cellRangeAddress2) {
        copyRange(cellRangeAddress, cellRangeAddress2, false, false);
    }

    public void copyRange(CellRangeAddress cellRangeAddress, CellRangeAddress cellRangeAddress2, boolean z, boolean z2) {
        Sheet cloneSheet = this.sourceSheet.getWorkbook().cloneSheet(this.sourceSheet.getWorkbook().getSheetIndex(this.sourceSheet));
        HashMap<Integer, CellStyle> hashMap = z ? new HashMap<Integer, CellStyle>() { // from class: org.apache.poi.ss.usermodel.RangeCopier.1
        } : null;
        int lastColumn = cellRangeAddress.getLastColumn() - cellRangeAddress.getFirstColumn();
        int lastRow = cellRangeAddress.getLastRow() - cellRangeAddress.getFirstRow();
        int firstRow = cellRangeAddress2.getFirstRow();
        do {
            int firstColumn = cellRangeAddress2.getFirstColumn();
            int min = Math.min(lastRow, cellRangeAddress2.getLastRow() - firstRow);
            int firstRow2 = cellRangeAddress.getFirstRow() + min;
            int i = firstColumn;
            do {
                int min2 = Math.min(lastColumn, cellRangeAddress2.getLastColumn() - i);
                CellRangeAddress cellRangeAddress3 = new CellRangeAddress(cellRangeAddress.getFirstRow(), firstRow2, cellRangeAddress.getFirstColumn(), cellRangeAddress.getFirstColumn() + min2);
                copyRange(cellRangeAddress3, i - cellRangeAddress3.getFirstColumn(), firstRow - cellRangeAddress3.getFirstRow(), cloneSheet, hashMap);
                i += min2 + 1;
            } while (i <= cellRangeAddress2.getLastColumn());
            firstRow += min + 1;
        } while (firstRow <= cellRangeAddress2.getLastRow());
        if (z2) {
            this.sourceSheet.getMergedRegions().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.ocl
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    RangeCopier.this.lambda$copyRange$0((CellRangeAddress) obj);
                }
            });
        }
        this.sourceSheet.getWorkbook().removeSheetAt(this.sourceSheet.getWorkbook().getSheetIndex(cloneSheet));
    }

    public RangeCopier(Sheet sheet) {
        this(sheet, sheet);
    }

    private void copyRange(CellRangeAddress cellRangeAddress, int i, int i2, Sheet sheet, Map<Integer, CellStyle> map) {
        if (i != 0) {
            this.horizontalFormulaShifter = FormulaShifter.createForColumnCopy(this.sourceSheet.getWorkbook().getSheetIndex(this.sourceSheet), this.sourceSheet.getSheetName(), cellRangeAddress.getFirstColumn(), cellRangeAddress.getLastColumn(), i, this.sourceSheet.getWorkbook().getSpreadsheetVersion());
        }
        if (i2 != 0) {
            this.verticalFormulaShifter = FormulaShifter.createForRowCopy(this.sourceSheet.getWorkbook().getSheetIndex(this.sourceSheet), this.sourceSheet.getSheetName(), cellRangeAddress.getFirstRow(), cellRangeAddress.getLastRow(), i2, this.sourceSheet.getWorkbook().getSpreadsheetVersion());
        }
        for (int firstRow = cellRangeAddress.getFirstRow(); firstRow <= cellRangeAddress.getLastRow(); firstRow++) {
            Row row = sheet.getRow(firstRow);
            if (row != null) {
                for (int firstColumn = cellRangeAddress.getFirstColumn(); firstColumn <= cellRangeAddress.getLastColumn(); firstColumn++) {
                    Cell cell = row.getCell(firstColumn);
                    if (cell != null) {
                        int i3 = firstRow + i2;
                        Row row2 = this.destSheet.getRow(i3);
                        if (row2 == null) {
                            row2 = this.destSheet.createRow(i3);
                        }
                        int i4 = firstColumn + i;
                        Cell cell2 = row2.getCell(i4);
                        if (cell2 == null) {
                            cell2 = row2.createCell(i4);
                        }
                        cloneCellContent(cell, cell2, map);
                        if (cell2.getCellType() == CellType.FORMULA) {
                            adjustCellReferencesInsideFormula(cell2, this.destSheet, i, i2);
                        }
                    }
                }
            }
        }
    }
}
