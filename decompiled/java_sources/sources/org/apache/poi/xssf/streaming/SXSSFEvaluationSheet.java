package org.apache.poi.xssf.streaming;

import org.apache.poi.ss.formula.EvaluationCell;
import org.apache.poi.ss.formula.EvaluationSheet;
import org.apache.poi.util.Internal;
import org.apache.poi.xssf.streaming.SXSSFFormulaEvaluator;

/* JADX INFO: Access modifiers changed from: package-private */
@Internal
/* loaded from: classes13.dex */
public final class SXSSFEvaluationSheet implements EvaluationSheet {
    private final SXSSFSheet _xs;

    public SXSSFEvaluationSheet(SXSSFSheet sXSSFSheet) {
        this._xs = sXSSFSheet;
    }

    @Override // org.apache.poi.ss.formula.EvaluationSheet
    public void clearAllCachedResultValues() {
    }

    @Override // org.apache.poi.ss.formula.EvaluationSheet
    public EvaluationCell getCell(int i, int i2) {
        SXSSFRow row = this._xs.getRow(i);
        if (row == null) {
            if (i > this._xs.getLastFlushedRowNum()) {
                return null;
            }
            throw new SXSSFFormulaEvaluator.RowFlushedException(i, this._xs.getLastFlushedRowNum());
        }
        SXSSFCell cell = row.getCell(i2);
        if (cell == null) {
            return null;
        }
        return new SXSSFEvaluationCell(cell, this);
    }

    @Override // org.apache.poi.ss.formula.EvaluationSheet
    public int getLastRowNum() {
        return this._xs.getLastRowNum();
    }

    public SXSSFSheet getSXSSFSheet() {
        return this._xs;
    }

    @Override // org.apache.poi.ss.formula.EvaluationSheet
    public boolean isRowHidden(int i) {
        SXSSFRow row = this._xs.getRow(i);
        if (row == null) {
            return false;
        }
        return row.getZeroHeight();
    }
}
