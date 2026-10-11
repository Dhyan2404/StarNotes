package org.apache.poi.ss.formula;

import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.AreaEvalBase;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.ptg.AreaI;
import org.apache.poi.ss.util.CellReference;

/* loaded from: classes13.dex */
public final class CacheAreaEval extends AreaEvalBase {
    private final ValueEval[] _values;

    public CacheAreaEval(AreaI areaI, ValueEval[] valueEvalArr) {
        super(areaI);
        this._values = valueEvalArr;
    }

    @Override // org.apache.poi.ss.formula.TwoDEval
    public TwoDEval getColumn(int i) {
        if (i >= getWidth()) {
            throw new IllegalArgumentException("Invalid columnIndex " + i + ".  Allowable range is (0.." + getWidth() + ").");
        }
        int firstColumn = getFirstColumn() + i;
        int height = getHeight();
        ValueEval[] valueEvalArr = new ValueEval[height];
        for (int i2 = 0; i2 < height; i2++) {
            valueEvalArr[i2] = getRelativeValue(i2, i);
        }
        return new CacheAreaEval(getFirstRow(), firstColumn, getLastRow(), firstColumn, valueEvalArr);
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEvalBase, org.apache.poi.ss.formula.eval.AreaEval
    public ValueEval getRelativeValue(int i, int i2) {
        return getRelativeValue(-1, i, i2);
    }

    @Override // org.apache.poi.ss.formula.TwoDEval
    public TwoDEval getRow(int i) {
        if (i >= getHeight()) {
            throw new IllegalArgumentException("Invalid rowIndex " + i + ".  Allowable range is (0.." + getHeight() + ").");
        }
        int firstRow = getFirstRow() + i;
        int width = getWidth();
        ValueEval[] valueEvalArr = new ValueEval[width];
        for (int i2 = 0; i2 < width; i2++) {
            valueEvalArr[i2] = getRelativeValue(i, i2);
        }
        return new CacheAreaEval(firstRow, getFirstColumn(), firstRow, getLastColumn(), valueEvalArr);
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEval
    public AreaEval offset(int i, int i2, int i3, int i4) {
        int i5;
        AreaI.OffsetArea offsetArea = new AreaI.OffsetArea(getFirstRow(), getFirstColumn(), i, i2, i3, i4);
        int lastRow = (offsetArea.getLastRow() - offsetArea.getFirstRow()) + 1;
        int lastColumn = (offsetArea.getLastColumn() - offsetArea.getFirstColumn()) + 1;
        ValueEval[] valueEvalArr = new ValueEval[lastRow * lastColumn];
        int firstRow = offsetArea.getFirstRow() - getFirstRow();
        int firstColumn = offsetArea.getFirstColumn() - getFirstColumn();
        for (int i6 = 0; i6 < lastRow; i6++) {
            for (int i7 = 0; i7 < lastColumn; i7++) {
                int i8 = firstRow + i6;
                valueEvalArr[(i6 * lastColumn) + i7] = (i8 > getLastRow() || (i5 = firstColumn + i7) > getLastColumn()) ? BlankEval.instance : this._values[(i8 * getWidth()) + i5];
            }
        }
        return new CacheAreaEval(offsetArea, valueEvalArr);
    }

    public String toString() {
        return CacheAreaEval.class.getName() + IteratorUtils.f104923a + new CellReference(getFirstRow(), getFirstColumn()).formatAsString() + ':' + new CellReference(getLastRow(), getLastColumn()).formatAsString() + IteratorUtils.f104924b;
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEvalBase
    public ValueEval getRelativeValue(int i, int i2, int i3) {
        return this._values[(i2 * getWidth()) + i3];
    }

    public CacheAreaEval(int i, int i2, int i3, int i4, ValueEval[] valueEvalArr) {
        super(i, i2, i3, i4);
        this._values = valueEvalArr;
    }
}
