package org.apache.poi.ss.formula;

import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.RefEvalBase;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.ptg.AreaI;
import org.apache.poi.ss.util.CellReference;

/* loaded from: classes13.dex */
public final class LazyRefEval extends RefEvalBase {
    private final SheetRangeEvaluator _evaluator;

    public LazyRefEval(int i, int i2, SheetRangeEvaluator sheetRangeEvaluator) {
        super(sheetRangeEvaluator, i, i2);
        this._evaluator = sheetRangeEvaluator;
    }

    @Override // org.apache.poi.ss.formula.eval.RefEval
    public ValueEval getInnerValueEval(int i) {
        return this._evaluator.getEvalForCell(i, getRow(), getColumn());
    }

    public boolean isRowHidden() {
        SheetRangeEvaluator sheetRangeEvaluator = this._evaluator;
        return sheetRangeEvaluator.getSheetEvaluator(sheetRangeEvaluator.getFirstSheetIndex()).isRowHidden(getRow());
    }

    public boolean isSubTotal() {
        return this._evaluator.getSheetEvaluator(getFirstSheetIndex()).isSubTotal(getRow(), getColumn());
    }

    @Override // org.apache.poi.ss.formula.eval.RefEval
    public AreaEval offset(int i, int i2, int i3, int i4) {
        return new LazyAreaEval(new AreaI.OffsetArea(getRow(), getColumn(), i, i2, i3, i4), this._evaluator);
    }

    public String toString() {
        return LazyRefEval.class.getName() + IteratorUtils.f104923a + this._evaluator.getSheetNameRange() + PublicSuffixDatabase.f103895g + new CellReference(getRow(), getColumn()).formatAsString() + IteratorUtils.f104924b;
    }
}
