package org.apache.poi.hssf.usermodel;

import org.apache.poi.ss.formula.EvaluationCell;
import org.apache.poi.ss.formula.EvaluationSheet;
import org.apache.poi.util.Internal;

/* JADX INFO: Access modifiers changed from: package-private */
@Internal
/* loaded from: classes12.dex */
public final class HSSFEvaluationSheet implements EvaluationSheet {
    private final HSSFSheet _hs;

    public HSSFEvaluationSheet(HSSFSheet hSSFSheet) {
        this._hs = hSSFSheet;
    }

    @Override // org.apache.poi.ss.formula.EvaluationSheet
    public void clearAllCachedResultValues() {
    }

    @Override // org.apache.poi.ss.formula.EvaluationSheet
    public EvaluationCell getCell(int i, int i2) {
        HSSFCell cell;
        HSSFRow row = this._hs.getRow(i);
        if (row == null || (cell = row.getCell(i2)) == null) {
            return null;
        }
        return new HSSFEvaluationCell(cell, this);
    }

    public HSSFSheet getHSSFSheet() {
        return this._hs;
    }

    @Override // org.apache.poi.ss.formula.EvaluationSheet
    public int getLastRowNum() {
        return this._hs.getLastRowNum();
    }

    @Override // org.apache.poi.ss.formula.EvaluationSheet
    public boolean isRowHidden(int i) {
        HSSFRow row = this._hs.getRow(i);
        if (row == null) {
            return false;
        }
        return row.getZeroHeight();
    }
}
