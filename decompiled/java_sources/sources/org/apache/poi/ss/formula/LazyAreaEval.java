package org.apache.poi.ss.formula;

import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.AreaEvalBase;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.ptg.AreaI;
import org.apache.poi.ss.util.CellReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public final class LazyAreaEval extends AreaEvalBase {
    private final SheetRangeEvaluator _evaluator;

    public LazyAreaEval(AreaI areaI, SheetRangeEvaluator sheetRangeEvaluator) {
        super(areaI, sheetRangeEvaluator);
        this._evaluator = sheetRangeEvaluator;
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEvalBase, org.apache.poi.ss.formula.eval.AreaEval
    public ValueEval getRelativeValue(int i, int i2) {
        return getRelativeValue(getFirstSheetIndex(), i, i2);
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEvalBase, org.apache.poi.ss.formula.TwoDEval
    public boolean isRowHidden(int i) {
        SheetRangeEvaluator sheetRangeEvaluator = this._evaluator;
        return sheetRangeEvaluator.getSheetEvaluator(sheetRangeEvaluator.getFirstSheetIndex()).isRowHidden(getFirstRow() + i);
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEvalBase, org.apache.poi.ss.formula.TwoDEval
    public boolean isSubTotal(int i, int i2) {
        SheetRangeEvaluator sheetRangeEvaluator = this._evaluator;
        return sheetRangeEvaluator.getSheetEvaluator(sheetRangeEvaluator.getFirstSheetIndex()).isSubTotal(getFirstRow() + i, getFirstColumn() + i2);
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEval
    public AreaEval offset(int i, int i2, int i3, int i4) {
        return new LazyAreaEval(new AreaI.OffsetArea(getFirstRow(), getFirstColumn(), i, i2, i3, i4), this._evaluator);
    }

    public String toString() {
        return LazyAreaEval.class.getName() + IteratorUtils.f104923a + this._evaluator.getSheetNameRange() + PublicSuffixDatabase.f103895g + new CellReference(getFirstRow(), getFirstColumn()).formatAsString() + ':' + new CellReference(getLastRow(), getLastColumn()).formatAsString() + IteratorUtils.f104924b;
    }

    @Override // org.apache.poi.ss.formula.TwoDEval
    public LazyAreaEval getColumn(int i) {
        if (i < getWidth()) {
            int firstColumn = getFirstColumn() + i;
            return new LazyAreaEval(getFirstRow(), firstColumn, getLastRow(), firstColumn, this._evaluator);
        }
        throw new IllegalArgumentException("Invalid columnIndex " + i + ".  Allowable range is (0.." + getWidth() + ").");
    }

    @Override // org.apache.poi.ss.formula.eval.AreaEvalBase
    public ValueEval getRelativeValue(int i, int i2, int i3) {
        return this._evaluator.getEvalForCell(i, i2 + getFirstRow(), i3 + getFirstColumn());
    }

    @Override // org.apache.poi.ss.formula.TwoDEval
    public LazyAreaEval getRow(int i) {
        if (i < getHeight()) {
            int firstRow = getFirstRow() + i;
            return new LazyAreaEval(firstRow, getFirstColumn(), firstRow, getLastColumn(), this._evaluator);
        }
        throw new IllegalArgumentException("Invalid rowIndex " + i + ".  Allowable range is (0.." + getHeight() + ").");
    }

    public LazyAreaEval(int i, int i2, int i3, int i4, SheetRangeEvaluator sheetRangeEvaluator) {
        super(sheetRangeEvaluator, i, i2, sheetRangeEvaluator.adjustRowNumber(i3), i4);
        this._evaluator = sheetRangeEvaluator;
    }
}
