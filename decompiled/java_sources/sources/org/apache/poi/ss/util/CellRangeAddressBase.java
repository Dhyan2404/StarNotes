package org.apache.poi.ss.util;

import java.util.EnumSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.Supplier;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.util.CellRangeAddressBase;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes13.dex */
public abstract class CellRangeAddressBase implements Iterable<CellAddress>, Duplicatable, GenericRecord {
    private int _firstCol;
    private int _firstRow;
    private int _lastCol;
    private int _lastRow;

    /* loaded from: classes13.dex */
    public enum CellPosition {
        TOP,
        BOTTOM,
        LEFT,
        RIGHT,
        INSIDE
    }

    /* loaded from: classes13.dex */
    public static class RowMajorCellAddressIterator implements Iterator<CellAddress> {

        /* renamed from: c */
        private int f111580c;
        private final int firstCol;
        private final int firstRow;
        private final int lastCol;
        private final int lastRow;

        /* renamed from: r */
        private int f111581r;

        public RowMajorCellAddressIterator(CellRangeAddressBase cellRangeAddressBase) {
            int firstRow = cellRangeAddressBase.getFirstRow();
            this.firstRow = firstRow;
            this.f111581r = firstRow;
            int firstColumn = cellRangeAddressBase.getFirstColumn();
            this.firstCol = firstColumn;
            this.f111580c = firstColumn;
            int lastRow = cellRangeAddressBase.getLastRow();
            this.lastRow = lastRow;
            int lastColumn = cellRangeAddressBase.getLastColumn();
            this.lastCol = lastColumn;
            if (firstRow < 0) {
                throw new IllegalStateException("First row cannot be negative.");
            }
            if (firstColumn < 0) {
                throw new IllegalStateException("First column cannot be negative.");
            }
            if (firstRow > lastRow) {
                throw new IllegalStateException("First row cannot be greater than last row.");
            }
            if (firstColumn > lastColumn) {
                throw new IllegalStateException("First column cannot be greater than last column.");
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f111581r <= this.lastRow && this.f111580c <= this.lastCol;
        }

        @Override // java.util.Iterator
        public CellAddress next() {
            if (hasNext()) {
                CellAddress cellAddress = new CellAddress(this.f111581r, this.f111580c);
                int i = this.f111580c;
                if (i < this.lastCol) {
                    this.f111580c = i + 1;
                } else {
                    this.f111580c = this.firstCol;
                    this.f111581r++;
                }
                return cellAddress;
            }
            throw new NoSuchElementException();
        }
    }

    public CellRangeAddressBase(int i, int i2, int i3, int i4) {
        this._firstRow = i;
        this._lastRow = i2;
        this._firstCol = i3;
        this._lastCol = i4;
    }

    private static void validateColumn(int i, SpreadsheetVersion spreadsheetVersion) {
        int lastColumnIndex = spreadsheetVersion.getLastColumnIndex();
        if (i <= lastColumnIndex) {
            if (i < 0) {
                throw new IllegalArgumentException("Minimum column number is 0");
            }
        } else {
            throw new IllegalArgumentException("Maximum column number is " + lastColumnIndex);
        }
    }

    private static void validateRow(int i, SpreadsheetVersion spreadsheetVersion) {
        int lastRowIndex = spreadsheetVersion.getLastRowIndex();
        if (i <= lastRowIndex) {
            if (i < 0) {
                throw new IllegalArgumentException("Minumum row number is 0");
            }
        } else {
            throw new IllegalArgumentException("Maximum row number is " + lastRowIndex);
        }
    }

    public boolean containsColumn(int i) {
        return this._firstCol <= i && i <= this._lastCol;
    }

    public boolean containsRow(int i) {
        return this._firstRow <= i && i <= this._lastRow;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CellRangeAddressBase)) {
            return false;
        }
        CellRangeAddressBase cellRangeAddressBase = (CellRangeAddressBase) obj;
        return getMinRow() == cellRangeAddressBase.getMinRow() && getMaxRow() == cellRangeAddressBase.getMaxRow() && getMinColumn() == cellRangeAddressBase.getMinColumn() && getMaxColumn() == cellRangeAddressBase.getMaxColumn();
    }

    public final int getFirstColumn() {
        return this._firstCol;
    }

    public final int getFirstRow() {
        return this._firstRow;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("firstRow", new Supplier() { // from class: com.sunia.HTREnginev2.yod
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(CellRangeAddressBase.this.getFirstRow());
            }
        }, "firstCol", new Supplier() { // from class: com.sunia.HTREnginev2.zod
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(CellRangeAddressBase.this.getFirstColumn());
            }
        }, "lastRow", new Supplier() { // from class: com.sunia.HTREnginev2.apd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(CellRangeAddressBase.this.getLastRow());
            }
        }, "lastCol", new Supplier() { // from class: com.sunia.HTREnginev2.bpd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(CellRangeAddressBase.this.getLastColumn());
            }
        });
    }

    public final int getLastColumn() {
        return this._lastCol;
    }

    public final int getLastRow() {
        return this._lastRow;
    }

    public int getMaxColumn() {
        return Math.max(this._firstCol, this._lastCol);
    }

    public int getMaxRow() {
        return Math.max(this._firstRow, this._lastRow);
    }

    public int getMinColumn() {
        return Math.min(this._firstCol, this._lastCol);
    }

    public int getMinRow() {
        return Math.min(this._firstRow, this._lastRow);
    }

    public int getNumberOfCells() {
        return ((this._lastRow - this._firstRow) + 1) * ((this._lastCol - this._firstCol) + 1);
    }

    public Set<CellPosition> getPosition(int i, int i2) {
        EnumSet noneOf = EnumSet.noneOf(CellPosition.class);
        if (i > getFirstRow() && i < getLastRow() && i2 > getFirstColumn() && i2 < getLastColumn()) {
            noneOf.add(CellPosition.INSIDE);
            return noneOf;
        }
        if (i == getFirstRow()) {
            noneOf.add(CellPosition.TOP);
        }
        if (i == getLastRow()) {
            noneOf.add(CellPosition.BOTTOM);
        }
        if (i2 == getFirstColumn()) {
            noneOf.add(CellPosition.LEFT);
        }
        if (i2 == getLastColumn()) {
            noneOf.add(CellPosition.RIGHT);
        }
        return noneOf;
    }

    public int hashCode() {
        return getMinColumn() + (getMaxColumn() << 8) + (getMinRow() << 16) + (getMaxRow() << 24);
    }

    public boolean intersects(CellRangeAddressBase cellRangeAddressBase) {
        return this._firstRow <= cellRangeAddressBase._lastRow && this._firstCol <= cellRangeAddressBase._lastCol && cellRangeAddressBase._firstRow <= this._lastRow && cellRangeAddressBase._firstCol <= this._lastCol;
    }

    public final boolean isFullColumnRange() {
        return (this._firstRow == 0 && this._lastRow == SpreadsheetVersion.EXCEL97.getLastRowIndex()) || (this._firstRow == -1 && this._lastRow == -1);
    }

    public final boolean isFullRowRange() {
        return (this._firstCol == 0 && this._lastCol == SpreadsheetVersion.EXCEL97.getLastColumnIndex()) || (this._firstCol == -1 && this._lastCol == -1);
    }

    public boolean isInRange(int i, int i2) {
        return this._firstRow <= i && i <= this._lastRow && this._firstCol <= i2 && i2 <= this._lastCol;
    }

    @Override // java.lang.Iterable
    public Iterator<CellAddress> iterator() {
        return new RowMajorCellAddressIterator(this);
    }

    public final void setFirstColumn(int i) {
        this._firstCol = i;
    }

    public final void setFirstRow(int i) {
        this._firstRow = i;
    }

    public final void setLastColumn(int i) {
        this._lastCol = i;
    }

    public final void setLastRow(int i) {
        this._lastRow = i;
    }

    @Override // java.lang.Iterable
    public Spliterator<CellAddress> spliterator() {
        return Spliterators.spliterator(iterator(), getNumberOfCells(), 0);
    }

    public final String toString() {
        return getClass().getName() + " [" + new CellAddress(this._firstRow, this._firstCol).formatAsString() + ":" + new CellAddress(this._lastRow, this._lastCol).formatAsString() + IteratorUtils.f104924b;
    }

    public void validate(SpreadsheetVersion spreadsheetVersion) {
        validateRow(this._firstRow, spreadsheetVersion);
        validateRow(this._lastRow, spreadsheetVersion);
        validateColumn(this._firstCol, spreadsheetVersion);
        validateColumn(this._lastCol, spreadsheetVersion);
    }

    public boolean isInRange(CellReference cellReference) {
        return isInRange(cellReference.getRow(), cellReference.getCol());
    }

    public boolean isInRange(CellAddress cellAddress) {
        return isInRange(cellAddress.getRow(), cellAddress.getColumn());
    }

    public boolean isInRange(Cell cell) {
        return isInRange(cell.getRowIndex(), cell.getColumnIndex());
    }
}
