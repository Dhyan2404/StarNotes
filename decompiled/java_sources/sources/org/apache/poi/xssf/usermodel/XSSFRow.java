package org.apache.poi.xssf.usermodel;

import com.google.android.material.motion.MotionUtils;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.Spliterator;
import java.util.TreeMap;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.FormulaShifter;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellCopyContext;
import org.apache.poi.ss.usermodel.CellCopyPolicy;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.FormulaError;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.helpers.RowShifter;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.CellUtil;
import org.apache.poi.util.Internal;
import org.apache.poi.xssf.model.StylesTable;
import org.apache.poi.xssf.usermodel.helpers.XSSFRowShifter;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRow;

/* loaded from: classes13.dex */
public class XSSFRow implements Row, Comparable<XSSFRow> {
    private final TreeMap<Integer, XSSFCell> _cells = new TreeMap<>();
    private final CTRow _row;
    private final XSSFSheet _sheet;

    /* renamed from: org.apache.poi.xssf.usermodel.XSSFRow$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199641 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy;

        static {
            int[] iArr = new int[Row.MissingCellPolicy.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy = iArr;
            try {
                iArr[Row.MissingCellPolicy.RETURN_NULL_AND_BLANK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy[Row.MissingCellPolicy.RETURN_BLANK_AS_NULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy[Row.MissingCellPolicy.CREATE_NULL_AS_BLANK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[CellType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$CellType = iArr2;
            try {
                iArr2[CellType.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public XSSFRow(CTRow cTRow, XSSFSheet xSSFSheet) {
        this._row = cTRow;
        this._sheet = xSSFSheet;
        for (CTCell cTCell : cTRow.getCArray()) {
            XSSFCell xSSFCell = new XSSFCell(this, cTCell);
            this._cells.put(Integer.valueOf(xSSFCell.getColumnIndex()), xSSFCell);
            xSSFSheet.onReadCell(xSSFCell);
        }
        if (cTRow.isSetR()) {
            return;
        }
        int lastRowNum = xSSFSheet.getLastRowNum() + 2;
        if (lastRowNum == 2 && xSSFSheet.getPhysicalNumberOfRows() == 0) {
            lastRowNum = 1;
        }
        cTRow.setR(lastRowNum);
    }

    private void fixupCTCells(CTCell[] cTCellArr) {
        CTCell[] cTCellArr2 = new CTCell[cTCellArr.length];
        IdentityHashMap identityHashMap = new IdentityHashMap(this._cells.size());
        int i = 0;
        int i2 = 0;
        for (CTCell cTCell : cTCellArr) {
            cTCellArr2[i2] = (CTCell) cTCell.copy();
            identityHashMap.put(cTCell, Integer.valueOf(i2));
            i2++;
        }
        for (XSSFCell xSSFCell : this._cells.values()) {
            Integer num = (Integer) identityHashMap.get(xSSFCell.getCTCell());
            Objects.requireNonNull(num, "Should find CTCell in _row");
            if (num.intValue() != i) {
                this._row.setCArray(i, cTCellArr2[num.intValue()]);
                xSSFCell.setCTCell(this._row.getCArray(i));
            }
            i++;
        }
        while (cTCellArr.length > this._cells.size()) {
            this._row.removeC(this._cells.size());
        }
    }

    private static void setDefaultValue(XSSFCell xSSFCell, CellType cellType) {
        int i = C199641.$SwitchMap$org$apache$poi$ss$usermodel$CellType[cellType.ordinal()];
        if (i == 1) {
            xSSFCell.setCellValue(0.0d);
            return;
        }
        if (i == 2) {
            xSSFCell.setCellValue("");
            return;
        }
        if (i == 3) {
            xSSFCell.setCellValue(false);
        } else {
            if (i == 4) {
                xSSFCell.setCellErrorValue(FormulaError._NO_ERROR);
                return;
            }
            throw new AssertionError("Unknown cell-type specified: " + cellType);
        }
    }

    private void shiftCell(int i, int i2) {
        int i3 = i2 + i;
        if (i3 < 0) {
            throw new IllegalStateException("Column index less than zero : " + Integer.valueOf(i3));
        }
        XSSFCell cell = getCell(i);
        if (cell != null) {
            cell.setCellNum(i3);
            this._cells.put(Integer.valueOf(i3), cell);
            return;
        }
        this._cells.remove(Integer.valueOf(i3));
        XSSFCell cell2 = getCell(i3);
        if (cell2 != null) {
            cell2.getCTCell().set(CTCell.Factory.newInstance());
        }
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public Iterator<Cell> cellIterator() {
        return this._cells.values().iterator();
    }

    public void copyRowFrom(Row row, CellCopyPolicy cellCopyPolicy) {
        copyRowFrom(row, cellCopyPolicy, null);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof XSSFRow)) {
            return false;
        }
        XSSFRow xSSFRow = (XSSFRow) obj;
        return getRowNum() == xSSFRow.getRowNum() && getSheet() == xSSFRow.getSheet();
    }

    @Internal
    public CTRow getCTRow() {
        return this._row;
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public short getFirstCellNum() {
        return (short) (this._cells.isEmpty() ? -1 : this._cells.firstKey().intValue());
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public short getHeight() {
        return (short) (getHeightInPoints() * 20.0f);
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public float getHeightInPoints() {
        return this._row.isSetHt() ? (float) this._row.getHt() : this._sheet.getDefaultRowHeightInPoints();
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public short getLastCellNum() {
        return (short) (this._cells.isEmpty() ? -1 : this._cells.lastKey().intValue() + 1);
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public int getOutlineLevel() {
        return this._row.getOutlineLevel();
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public int getPhysicalNumberOfCells() {
        return this._cells.size();
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public int getRowNum() {
        return Math.toIntExact(this._row.getR() - 1);
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public boolean getZeroHeight() {
        return this._row.getHidden();
    }

    public int hashCode() {
        return this._row.hashCode();
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public boolean isFormatted() {
        return this._row.isSetS();
    }

    public void onDocumentWrite() {
        CTCell[] cArray = this._row.getCArray();
        if (cArray.length == this._cells.size()) {
            Iterator<XSSFCell> it2 = this._cells.values().iterator();
            int length = cArray.length;
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = true;
                    break;
                }
                CTCell cTCell = cArray[i];
                XSSFCell next = it2.next();
                next.applyDefaultCellStyleIfNecessary();
                if (cTCell != next.getCTCell()) {
                    break;
                } else {
                    i++;
                }
            }
            if (z) {
                return;
            }
        }
        fixupCTCells(cArray);
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void removeCell(Cell cell) {
        if (cell.getRow() != this) {
            throw new IllegalArgumentException("Specified cell does not belong to this row");
        }
        if (!this._cells.containsValue(cell)) {
            throw new IllegalArgumentException("the row does not contain this cell");
        }
        XSSFCell xSSFCell = (XSSFCell) cell;
        if (xSSFCell.isPartOfArrayFormulaGroup()) {
            xSSFCell.setCellFormula(null);
        }
        if (cell.getCellType() == CellType.FORMULA) {
            this._sheet.getWorkbook().onDeleteFormula(xSSFCell);
        }
        XSSFCell remove = this._cells.remove(Integer.valueOf(cell.getColumnIndex()));
        int i = 0;
        for (CTCell cTCell : this._row.getCArray()) {
            if (cTCell == remove.getCTCell()) {
                this._row.removeC(i);
            }
            i++;
        }
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void setHeight(short s) {
        if (s != -1) {
            this._row.setHt(s / 20.0d);
            this._row.setCustomHeight(true);
            return;
        }
        if (this._row.isSetHt()) {
            this._row.unsetHt();
        }
        if (this._row.isSetCustomHeight()) {
            this._row.unsetCustomHeight();
        }
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void setHeightInPoints(float f) {
        setHeight((short) (f != -1.0f ? 20.0f * f : -1.0f));
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void setRowNum(int i) {
        int lastRowIndex = SpreadsheetVersion.EXCEL2007.getLastRowIndex();
        if (i >= 0 && i <= lastRowIndex) {
            this._row.setR(i + 1);
            return;
        }
        throw new IllegalArgumentException("Invalid row number (" + i + ") outside allowable range (0.." + lastRowIndex + MotionUtils.f31762d);
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void setRowStyle(CellStyle cellStyle) {
        if (cellStyle == null) {
            if (this._row.isSetS()) {
                this._row.unsetS();
                this._row.unsetCustomFormat();
                return;
            }
            return;
        }
        XSSFCellStyle xSSFCellStyle = (XSSFCellStyle) cellStyle;
        xSSFCellStyle.verifyBelongsToStylesSource(getSheet().getWorkbook().getStylesSource());
        this._row.setS(r0.putStyle(xSSFCellStyle));
        this._row.setCustomFormat(true);
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void setZeroHeight(boolean z) {
        this._row.setHidden(z);
    }

    public void shift(int i) {
        int rowNum = getRowNum();
        int i2 = i + rowNum;
        String str = "Row[rownum=" + rowNum + "] contains cell(s) included in a multi-cell array formula. You cannot change part of an array.";
        setRowNum(i2);
        Iterator<Cell> it2 = iterator();
        while (it2.hasNext()) {
            ((XSSFCell) it2.next()).updateCellReferencesForShifting(str);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void shiftCellsLeft(int i, int i2, int i3) {
        RowShifter.validateShiftLeftParameters(i, i2, i3);
        while (i <= i2) {
            shiftCell(i, -i3);
            i++;
        }
        int i4 = i2 - i3;
        while (true) {
            i4++;
            if (i4 > i2) {
                return;
            }
            this._cells.remove(Integer.valueOf(i4));
            XSSFCell cell = getCell(i4);
            if (cell != null) {
                cell.getCTCell().set(CTCell.Factory.newInstance());
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void shiftCellsRight(int i, int i2, int i3) {
        RowShifter.validateShiftParameters(i, i2, i3);
        while (i2 >= i) {
            shiftCell(i2, i3);
            i2--;
        }
        for (int i4 = i; i4 <= (i + i3) - 1; i4++) {
            this._cells.remove(Integer.valueOf(i4));
            XSSFCell cell = getCell(i4);
            if (cell != null) {
                cell.getCTCell().set(CTCell.Factory.newInstance());
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.Row, java.lang.Iterable
    public Spliterator<Cell> spliterator() {
        return this._cells.values().spliterator();
    }

    public String toString() {
        return this._row.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(XSSFRow xSSFRow) {
        if (getSheet() == xSSFRow.getSheet()) {
            return Integer.compare(getRowNum(), xSSFRow.getRowNum());
        }
        throw new IllegalArgumentException("The compared rows must belong to the same sheet");
    }

    public void copyRowFrom(Row row, CellCopyPolicy cellCopyPolicy, CellCopyContext cellCopyContext) {
        if (row == null) {
            Iterator<Cell> it2 = iterator();
            while (it2.hasNext()) {
                CellUtil.copyCell(null, it2.next(), cellCopyPolicy, cellCopyContext);
            }
            if (cellCopyPolicy.isCopyMergedRegions()) {
                int rowNum = getRowNum();
                HashSet hashSet = new HashSet();
                int i = 0;
                for (CellRangeAddress cellRangeAddress : getSheet().getMergedRegions()) {
                    if (rowNum == cellRangeAddress.getFirstRow() && rowNum == cellRangeAddress.getLastRow()) {
                        hashSet.add(Integer.valueOf(i));
                    }
                    i++;
                }
                getSheet().removeMergedRegions(hashSet);
            }
            if (cellCopyPolicy.isCopyRowHeight()) {
                setHeight((short) -1);
                return;
            }
            return;
        }
        for (Cell cell : row) {
            CellUtil.copyCell(cell, createCell(cell.getColumnIndex()), cellCopyPolicy, cellCopyContext);
        }
        int sheetIndex = this._sheet.getWorkbook().getSheetIndex(this._sheet);
        String sheetName = this._sheet.getWorkbook().getSheetName(sheetIndex);
        int rowNum2 = row.getRowNum();
        int rowNum3 = getRowNum();
        new XSSFRowShifter(this._sheet).updateRowFormulas(this, FormulaShifter.createForRowCopy(sheetIndex, sheetName, rowNum2, rowNum2, rowNum3 - rowNum2, SpreadsheetVersion.EXCEL2007));
        if (cellCopyPolicy.isCopyMergedRegions()) {
            for (CellRangeAddress cellRangeAddress2 : row.getSheet().getMergedRegions()) {
                if (rowNum2 == cellRangeAddress2.getFirstRow() && rowNum2 == cellRangeAddress2.getLastRow()) {
                    CellRangeAddress copy = cellRangeAddress2.copy();
                    copy.setFirstRow(rowNum3);
                    copy.setLastRow(rowNum3);
                    getSheet().addMergedRegion(copy);
                }
            }
        }
        if (cellCopyPolicy.isCopyRowHeight()) {
            setHeight(row.getHeight());
        }
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public XSSFCellStyle getRowStyle() {
        if (!isFormatted()) {
            return null;
        }
        StylesTable stylesSource = getSheet().getWorkbook().getStylesSource();
        if (stylesSource.getNumCellStyles() > 0) {
            return stylesSource.getStyleAt(Math.toIntExact(this._row.getS()));
        }
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public XSSFSheet getSheet() {
        return this._sheet;
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public XSSFCell createCell(int i) {
        return createCell(i, CellType.BLANK);
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public XSSFCell getCell(int i) {
        return getCell(i, this._sheet.getWorkbook().getMissingCellPolicy());
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public XSSFCell createCell(int i, CellType cellType) {
        CTCell addNewC;
        Integer valueOf = Integer.valueOf(i);
        XSSFCell xSSFCell = this._cells.get(valueOf);
        if (xSSFCell != null) {
            addNewC = xSSFCell.getCTCell();
            addNewC.set(CTCell.Factory.newInstance());
        } else {
            addNewC = this._row.addNewC();
        }
        XSSFCell xSSFCell2 = new XSSFCell(this, addNewC);
        try {
            xSSFCell2.setCellNum(i);
            if (cellType != CellType.BLANK && cellType != CellType.FORMULA) {
                setDefaultValue(xSSFCell2, cellType);
            }
            this._cells.put(valueOf, xSSFCell2);
            return xSSFCell2;
        } catch (IllegalArgumentException e) {
            this._row.removeC(this._row.getCList().size() - 1);
            throw e;
        }
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public XSSFCell getCell(int i, Row.MissingCellPolicy missingCellPolicy) {
        if (i >= 0) {
            XSSFCell xSSFCell = this._cells.get(Integer.valueOf(i));
            int i2 = C199641.$SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy[missingCellPolicy.ordinal()];
            if (i2 == 1) {
                return xSSFCell;
            }
            if (i2 == 2) {
                if (xSSFCell != null && xSSFCell.getCellType() == CellType.BLANK) {
                    return null;
                }
                return xSSFCell;
            }
            if (i2 == 3) {
                return xSSFCell == null ? createCell(i, CellType.BLANK) : xSSFCell;
            }
            throw new IllegalArgumentException("Illegal policy " + missingCellPolicy);
        }
        throw new IllegalArgumentException("Cell index must be >= 0");
    }
}
