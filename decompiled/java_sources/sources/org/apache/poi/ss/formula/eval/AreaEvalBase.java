package org.apache.poi.ss.formula.eval;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import org.apache.poi.ss.formula.SheetRange;
import org.apache.poi.ss.formula.ptg.AreaI;

/* loaded from: classes13.dex */
public abstract class AreaEvalBase implements AreaEval {
    private final int _firstColumn;
    private final int _firstRow;
    private final int _firstSheet;
    private final int _lastColumn;
    private final int _lastRow;
    private final int _lastSheet;
    private final int _nColumns;
    private final int _nRows;

    public AreaEvalBase(SheetRange sheetRange, int i, int i2, int i3, int i4) {
        this._firstColumn = i2;
        this._firstRow = i;
        this._lastColumn = i4;
        this._lastRow = i3;
        this._nColumns = (i4 - i2) + 1;
        this._nRows = (i3 - i) + 1;
        if (sheetRange != null) {
            this._firstSheet = sheetRange.getFirstSheetIndex();
            this._lastSheet = sheetRange.getLastSheetIndex();
        } else {
            this._firstSheet = -1;
            this._lastSheet = -1;
        }
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEval
    public final boolean contains(int i, int i2) {
        return this._firstRow <= i && this._lastRow >= i && this._firstColumn <= i2 && this._lastColumn >= i2;
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEval
    public final boolean containsColumn(int i) {
        return this._firstColumn <= i && this._lastColumn >= i;
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEval
    public final boolean containsRow(int i) {
        return this._firstRow <= i && this._lastRow >= i;
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEval
    public final ValueEval getAbsoluteValue(int i, int i2) {
        int i3 = i - this._firstRow;
        int i4 = i2 - this._firstColumn;
        if (i3 < 0 || i3 >= this._nRows) {
            throw new IllegalArgumentException("Specified row index (" + i + ") is outside the allowed range (" + this._firstRow + Constants.ATTRVAL_PARENT + this._lastRow + MotionUtils.f31762d);
        }
        if (i4 >= 0 && i4 < this._nColumns) {
            return getRelativeValue(i3, i4);
        }
        throw new IllegalArgumentException("Specified column index (" + i2 + ") is outside the allowed range (" + this._firstColumn + Constants.ATTRVAL_PARENT + i2 + MotionUtils.f31762d);
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEval
    public final int getFirstColumn() {
        return this._firstColumn;
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEval
    public final int getFirstRow() {
        return this._firstRow;
    }

    @Override // org.apache.poi.ss.formula.SheetRange
    public int getFirstSheetIndex() {
        return this._firstSheet;
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEval, org.apache.poi.ss.formula.TwoDEval
    public int getHeight() {
        return (this._lastRow - this._firstRow) + 1;
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEval
    public final int getLastColumn() {
        return this._lastColumn;
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEval
    public final int getLastRow() {
        return this._lastRow;
    }

    @Override // org.apache.poi.ss.formula.SheetRange
    public int getLastSheetIndex() {
        return this._lastSheet;
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEval
    public abstract ValueEval getRelativeValue(int i, int i2);

    public abstract ValueEval getRelativeValue(int i, int i2, int i3);

    @Override // org.apache.poi.ss.formula.TwoDEval
    public final ValueEval getValue(int i, int i2) {
        return getRelativeValue(i, i2);
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEval, org.apache.poi.ss.formula.TwoDEval
    public int getWidth() {
        return (this._lastColumn - this._firstColumn) + 1;
    }

    @Override // org.apache.poi.ss.formula.TwoDEval
    public final boolean isColumn() {
        return this._firstColumn == this._lastColumn;
    }

    @Override // org.apache.poi.ss.formula.TwoDEval
    public final boolean isRow() {
        return this._firstRow == this._lastRow;
    }

    @Override // org.apache.poi.ss.formula.TwoDEval
    public boolean isRowHidden(int i) {
        return false;
    }

    @Override // org.apache.poi.ss.formula.TwoDEval
    public boolean isSubTotal(int i, int i2) {
        return false;
    }

    @Override // org.apache.poi.ss.formula.ThreeDEval
    public final ValueEval getValue(int i, int i2, int i3) {
        return getRelativeValue(i, i2, i3);
    }

    public AreaEvalBase(int i, int i2, int i3, int i4) {
        this(null, i, i2, i3, i4);
    }

    public AreaEvalBase(AreaI areaI) {
        this(areaI, null);
    }

    public AreaEvalBase(AreaI areaI, SheetRange sheetRange) {
        this(sheetRange, areaI.getFirstRow(), areaI.getFirstColumn(), areaI.getLastRow(), areaI.getLastColumn());
    }
}
