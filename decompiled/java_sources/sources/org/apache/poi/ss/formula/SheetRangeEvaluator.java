package org.apache.poi.ss.formula;

import org.apache.poi.ss.formula.eval.ValueEval;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public final class SheetRangeEvaluator implements SheetRange {
    private final int _firstSheetIndex;
    private final int _lastSheetIndex;
    private final SheetRefEvaluator[] _sheetEvaluators;

    public SheetRangeEvaluator(int i, int i2, SheetRefEvaluator[] sheetRefEvaluatorArr) {
        if (i < 0) {
            throw new IllegalArgumentException("Invalid firstSheetIndex: " + i + ".");
        }
        if (i2 >= i) {
            this._firstSheetIndex = i;
            this._lastSheetIndex = i2;
            this._sheetEvaluators = (SheetRefEvaluator[]) sheetRefEvaluatorArr.clone();
        } else {
            throw new IllegalArgumentException("Invalid lastSheetIndex: " + i2 + " for firstSheetIndex: " + i + ".");
        }
    }

    public int adjustRowNumber(int i) {
        int i2 = 0;
        boolean z = false;
        for (int i3 = this._firstSheetIndex; i3 <= this._lastSheetIndex; i3++) {
            if (i >= this._sheetEvaluators[i3 - this._firstSheetIndex].getMaxRowNum()) {
                z = true;
            }
        }
        if (!z) {
            return i;
        }
        for (int i4 = this._firstSheetIndex; i4 <= this._lastSheetIndex; i4++) {
            i2 = Math.max(i2, this._sheetEvaluators[i4 - this._firstSheetIndex].getLastRowNum());
        }
        return Math.min(i, i2);
    }

    public ValueEval getEvalForCell(int i, int i2, int i3) {
        return getSheetEvaluator(i).getEvalForCell(i2, i3);
    }

    @Override // org.apache.poi.ss.formula.SheetRange
    public int getFirstSheetIndex() {
        return this._firstSheetIndex;
    }

    @Override // org.apache.poi.ss.formula.SheetRange
    public int getLastSheetIndex() {
        return this._lastSheetIndex;
    }

    public SheetRefEvaluator getSheetEvaluator(int i) {
        int i2 = this._firstSheetIndex;
        if (i >= i2 && i <= this._lastSheetIndex) {
            return this._sheetEvaluators[i - i2];
        }
        throw new IllegalArgumentException("Invalid SheetIndex: " + i + " - Outside range " + this._firstSheetIndex + " : " + this._lastSheetIndex);
    }

    public String getSheetName(int i) {
        return getSheetEvaluator(i).getSheetName();
    }

    public String getSheetNameRange() {
        StringBuilder sb = new StringBuilder();
        sb.append(getSheetName(this._firstSheetIndex));
        if (this._firstSheetIndex != this._lastSheetIndex) {
            sb.append(':');
            sb.append(getSheetName(this._lastSheetIndex));
        }
        return sb.toString();
    }

    public SheetRangeEvaluator(int i, SheetRefEvaluator sheetRefEvaluator) {
        this(i, i, new SheetRefEvaluator[]{sheetRefEvaluator});
    }
}
