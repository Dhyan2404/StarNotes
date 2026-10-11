package org.apache.poi.hssf.usermodel;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.poi.hssf.record.CellValueRecordInterface;
import org.apache.poi.hssf.record.RowRecord;
import org.apache.poi.hssf.usermodel.helpers.HSSFRowShifter;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.FormulaShifter;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellCopyContext;
import org.apache.poi.ss.usermodel.CellCopyPolicy;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.helpers.RowShifter;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.CellUtil;
import org.apache.poi.util.Configurator;

/* loaded from: classes12.dex */
public final class HSSFRow implements Row, Comparable<HSSFRow> {
    public static final int INITIAL_CAPACITY = Configurator.getIntValue("HSSFRow.ColInitialCapacity", 5);
    private final HSSFWorkbook book;
    private HSSFCell[] cells;
    private final RowRecord row;
    private int rowNum;
    private final HSSFSheet sheet;

    /* renamed from: org.apache.poi.hssf.usermodel.HSSFRow$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195411 {
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
        }
    }

    /* loaded from: classes12.dex */
    public class CellIterator implements Iterator<Cell> {
        int thisId = -1;
        int nextId = -1;

        public CellIterator() {
            findNext();
        }

        private void findNext() {
            int i = this.nextId;
            do {
                i++;
                if (i >= HSSFRow.this.cells.length) {
                    break;
                }
            } while (HSSFRow.this.cells[i] == null);
            this.nextId = i;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.nextId < HSSFRow.this.cells.length;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.thisId == -1) {
                throw new IllegalStateException("remove() called before next()");
            }
            HSSFRow.this.cells[this.thisId] = null;
        }

        @Override // java.util.Iterator
        public Cell next() {
            if (hasNext()) {
                HSSFCell[] hSSFCellArr = HSSFRow.this.cells;
                int i = this.nextId;
                HSSFCell hSSFCell = hSSFCellArr[i];
                this.thisId = i;
                findNext();
                return hSSFCell;
            }
            throw new NoSuchElementException("At last element");
        }
    }

    public HSSFRow(HSSFWorkbook hSSFWorkbook, HSSFSheet hSSFSheet, int i) {
        this(hSSFWorkbook, hSSFSheet, new RowRecord(i));
    }

    private void addCell(HSSFCell hSSFCell) {
        int columnIndex = hSSFCell.getColumnIndex();
        HSSFCell[] hSSFCellArr = this.cells;
        if (columnIndex >= hSSFCellArr.length) {
            int length = ((hSSFCellArr.length * 3) / 2) + 1;
            if (length < columnIndex + 1) {
                length = INITIAL_CAPACITY + columnIndex;
            }
            HSSFCell[] hSSFCellArr2 = new HSSFCell[length];
            this.cells = hSSFCellArr2;
            System.arraycopy(hSSFCellArr, 0, hSSFCellArr2, 0, hSSFCellArr.length);
        }
        this.cells[columnIndex] = hSSFCell;
        if (this.row.isEmpty() || columnIndex < this.row.getFirstCol()) {
            this.row.setFirstCol((short) columnIndex);
        }
        if (this.row.isEmpty() || columnIndex >= this.row.getLastCol()) {
            this.row.setLastCol((short) (columnIndex + 1));
        }
    }

    private int calculateNewFirstCell(int i) {
        int i2 = i + 1;
        HSSFCell retrieveCell = retrieveCell(i2);
        while (retrieveCell == null) {
            if (i2 <= this.cells.length) {
                return 0;
            }
            i2++;
            retrieveCell = retrieveCell(i2);
        }
        return i2;
    }

    private int calculateNewLastCellPlusOne(int i) {
        int i2 = i - 1;
        HSSFCell retrieveCell = retrieveCell(i2);
        while (retrieveCell == null) {
            if (i2 < 0) {
                return 0;
            }
            i2--;
            retrieveCell = retrieveCell(i2);
        }
        return i2 + 1;
    }

    private void extend(int i) {
        HSSFCell[] hSSFCellArr = (HSSFCell[]) this.cells.clone();
        HSSFCell[] hSSFCellArr2 = new HSSFCell[i];
        this.cells = hSSFCellArr2;
        System.arraycopy(hSSFCellArr, 0, hSSFCellArr2, 0, hSSFCellArr.length);
    }

    private HSSFCell retrieveCell(int i) {
        if (i < 0) {
            return null;
        }
        HSSFCell[] hSSFCellArr = this.cells;
        if (i >= hSSFCellArr.length) {
            return null;
        }
        return hSSFCellArr[i];
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public Iterator<Cell> cellIterator() {
        return new CellIterator();
    }

    public void copyRowFrom(Row row, CellCopyPolicy cellCopyPolicy) {
        copyRowFrom(row, cellCopyPolicy, null);
    }

    public HSSFCell createCellFromRecord(CellValueRecordInterface cellValueRecordInterface) {
        HSSFCell hSSFCell = new HSSFCell(this.book, this.sheet, cellValueRecordInterface);
        addCell(hSSFCell);
        short column = cellValueRecordInterface.getColumn();
        if (this.row.isEmpty()) {
            this.row.setFirstCol(column);
            this.row.setLastCol(column + 1);
        } else if (column < this.row.getFirstCol()) {
            this.row.setFirstCol(column);
        } else if (column > this.row.getLastCol()) {
            this.row.setLastCol(column + 1);
        }
        return hSSFCell;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof HSSFRow)) {
            return false;
        }
        HSSFRow hSSFRow = (HSSFRow) obj;
        return getRowNum() == hSSFRow.getRowNum() && getSheet() == hSSFRow.getSheet();
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public short getFirstCellNum() {
        if (this.row.isEmpty()) {
            return (short) -1;
        }
        return (short) this.row.getFirstCol();
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public short getHeight() {
        short height = this.row.getHeight();
        return (32768 & height) != 0 ? this.sheet.getSheet().getDefaultRowHeight() : (short) (height & Short.MAX_VALUE);
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public float getHeightInPoints() {
        return getHeight() / 20.0f;
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public short getLastCellNum() {
        if (this.row.isEmpty()) {
            return (short) -1;
        }
        return (short) this.row.getLastCol();
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public int getOutlineLevel() {
        return this.row.getOutlineLevel();
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public int getPhysicalNumberOfCells() {
        int i = 0;
        for (HSSFCell hSSFCell : this.cells) {
            if (hSSFCell != null) {
                i++;
            }
        }
        return i;
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public int getRowNum() {
        return this.rowNum;
    }

    public RowRecord getRowRecord() {
        return this.row;
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public boolean getZeroHeight() {
        return this.row.getZeroHeight();
    }

    public int hashCode() {
        return this.row.hashCode();
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public boolean isFormatted() {
        return this.row.getFormatted();
    }

    public void moveCell(HSSFCell hSSFCell, short s) {
        HSSFCell[] hSSFCellArr = this.cells;
        if (hSSFCellArr.length > s && hSSFCellArr[s] != null) {
            throw new IllegalArgumentException("Asked to move cell to column " + ((int) s) + " but there's already a cell there");
        }
        if (!hSSFCellArr[hSSFCell.getColumnIndex()].equals(hSSFCell)) {
            throw new IllegalArgumentException("Asked to move a cell, but it didn't belong to our row");
        }
        removeCell(hSSFCell, false);
        hSSFCell.updateCellNum(s);
        addCell(hSSFCell);
    }

    public void removeAllCells() {
        for (HSSFCell hSSFCell : this.cells) {
            if (hSSFCell != null) {
                removeCell(hSSFCell, true);
            }
        }
        this.cells = new HSSFCell[INITIAL_CAPACITY];
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void removeCell(Cell cell) {
        if (cell != null) {
            removeCell((HSSFCell) cell, true);
            return;
        }
        throw new IllegalArgumentException("cell must not be null");
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void setHeight(short s) {
        if (s == -1) {
            this.row.setHeight((short) -32513);
            this.row.setBadFontHeight(false);
        } else {
            this.row.setBadFontHeight(true);
            this.row.setHeight(s);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void setHeightInPoints(float f) {
        if (f == -1.0f) {
            this.row.setHeight((short) -32513);
            this.row.setBadFontHeight(false);
        } else {
            this.row.setBadFontHeight(true);
            this.row.setHeight((short) (f * 20.0f));
        }
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void setRowNum(int i) {
        int lastRowIndex = SpreadsheetVersion.EXCEL97.getLastRowIndex();
        if (i >= 0 && i <= lastRowIndex) {
            this.rowNum = i;
            RowRecord rowRecord = this.row;
            if (rowRecord != null) {
                rowRecord.setRowNumber(i);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Invalid row number (" + i + ") outside allowable range (0.." + lastRowIndex + MotionUtils.f31762d);
    }

    public void setRowStyle(HSSFCellStyle hSSFCellStyle) {
        this.row.setFormatted(true);
        this.row.setXFIndex(hSSFCellStyle.getIndex());
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void setZeroHeight(boolean z) {
        this.row.setZeroHeight(z);
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void shiftCellsLeft(int i, int i2, int i3) {
        RowShifter.validateShiftLeftParameters(i, i2, i3);
        while (i <= i2) {
            HSSFCell cell = getCell(i);
            if (cell != null) {
                int i4 = i - i3;
                this.cells[i4] = null;
                moveCell(cell, (short) i4);
            } else {
                this.cells[i - i3] = null;
            }
            i++;
        }
        int i5 = i2 - i3;
        while (true) {
            i5++;
            if (i5 > i2) {
                return;
            } else {
                this.cells[i5] = null;
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void shiftCellsRight(int i, int i2, int i3) {
        RowShifter.validateShiftParameters(i, i2, i3);
        int i4 = i2 + i3 + 1;
        if (i4 > this.cells.length) {
            extend(i4);
        }
        while (i2 >= i) {
            HSSFCell cell = getCell(i2);
            int i5 = i2 + i3;
            this.cells[i5] = null;
            if (cell != null) {
                moveCell(cell, (short) i5);
            }
            i2--;
        }
        for (int i6 = i; i6 <= (i + i3) - 1; i6++) {
            this.cells[i6] = null;
        }
    }

    public HSSFRow(HSSFWorkbook hSSFWorkbook, HSSFSheet hSSFSheet, RowRecord rowRecord) {
        int i;
        this.book = hSSFWorkbook;
        this.sheet = hSSFSheet;
        this.row = rowRecord;
        setRowNum(rowRecord.getRowNumber());
        if (rowRecord.getLastCol() >= 0 && (i = INITIAL_CAPACITY) >= 0) {
            this.cells = new HSSFCell[rowRecord.getLastCol() + i];
            rowRecord.setEmpty();
            return;
        }
        throw new IllegalArgumentException("Had invalid column counts: " + rowRecord.getLastCol() + CloudStorageConstants.OPERATION_AND + INITIAL_CAPACITY);
    }

    @Override // java.lang.Comparable
    public int compareTo(HSSFRow hSSFRow) {
        if (getSheet() == hSSFRow.getSheet()) {
            return Integer.compare(getRowNum(), hSSFRow.getRowNum());
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
        int sheetIndex = this.sheet.getWorkbook().getSheetIndex(this.sheet);
        String sheetName = this.sheet.getWorkbook().getSheetName(sheetIndex);
        int rowNum2 = row.getRowNum();
        int rowNum3 = getRowNum();
        new HSSFRowShifter(this.sheet).updateRowFormulas(this, FormulaShifter.createForRowCopy(sheetIndex, sheetName, rowNum2, rowNum2, rowNum3 - rowNum2, SpreadsheetVersion.EXCEL2007));
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
    public HSSFCellStyle getRowStyle() {
        if (!isFormatted()) {
            return null;
        }
        short xFIndex = this.row.getXFIndex();
        return new HSSFCellStyle(xFIndex, this.book.getWorkbook().getExFormatAt(xFIndex), this.book);
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public HSSFSheet getSheet() {
        return this.sheet;
    }

    private void removeCell(HSSFCell hSSFCell, boolean z) {
        int columnIndex = hSSFCell.getColumnIndex();
        if (columnIndex >= 0) {
            HSSFCell[] hSSFCellArr = this.cells;
            if (columnIndex < hSSFCellArr.length && hSSFCell == hSSFCellArr[columnIndex]) {
                if (hSSFCell.isPartOfArrayFormulaGroup()) {
                    hSSFCell.tryToDeleteArrayFormula(null);
                }
                this.cells[columnIndex] = null;
                if (z) {
                    this.sheet.getSheet().removeValueRecord(getRowNum(), hSSFCell.getCellValueRecord());
                }
                if (hSSFCell.getColumnIndex() + 1 == this.row.getLastCol()) {
                    RowRecord rowRecord = this.row;
                    rowRecord.setLastCol(calculateNewLastCellPlusOne(rowRecord.getLastCol()));
                }
                if (hSSFCell.getColumnIndex() == this.row.getFirstCol()) {
                    RowRecord rowRecord2 = this.row;
                    rowRecord2.setFirstCol(calculateNewFirstCell(rowRecord2.getFirstCol()));
                    return;
                }
                return;
            }
            throw new IllegalStateException("Specified cell is not from this row");
        }
        throw new IllegalStateException("Negative cell indexes not allowed");
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public HSSFCell createCell(int i) {
        return createCell(i, CellType.BLANK);
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public HSSFCell getCell(int i) {
        return getCell(i, this.book.getMissingCellPolicy());
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public void setRowStyle(CellStyle cellStyle) {
        setRowStyle((HSSFCellStyle) cellStyle);
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public HSSFCell createCell(int i, CellType cellType) {
        short s = (short) i;
        if (i > 32767) {
            s = (short) (65535 - i);
        }
        HSSFCell hSSFCell = new HSSFCell(this.book, this.sheet, getRowNum(), s, cellType);
        addCell(hSSFCell);
        this.sheet.getSheet().addValueRecord(getRowNum(), hSSFCell.getCellValueRecord());
        return hSSFCell;
    }

    @Override // org.apache.poi.ss.usermodel.Row
    public HSSFCell getCell(int i, Row.MissingCellPolicy missingCellPolicy) {
        HSSFCell retrieveCell = retrieveCell(i);
        int i2 = C195411.$SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy[missingCellPolicy.ordinal()];
        if (i2 == 1) {
            return retrieveCell;
        }
        if (i2 == 2) {
            if (retrieveCell != null && retrieveCell.getCellType() == CellType.BLANK) {
                return null;
            }
            return retrieveCell;
        }
        if (i2 == 3) {
            return retrieveCell == null ? createCell(i, CellType.BLANK) : retrieveCell;
        }
        throw new IllegalArgumentException("Illegal policy " + missingCellPolicy);
    }
}
