package org.apache.poi.ss.formula;

import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.ptg.FuncVarPtg;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.usermodel.CellType;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public final class SheetRefEvaluator {
    private final WorkbookEvaluator _bookEvaluator;
    private EvaluationSheet _sheet;
    private final int _sheetIndex;
    private final EvaluationTracker _tracker;

    public SheetRefEvaluator(WorkbookEvaluator workbookEvaluator, EvaluationTracker evaluationTracker, int i) {
        if (i >= 0) {
            this._bookEvaluator = workbookEvaluator;
            this._tracker = evaluationTracker;
            this._sheetIndex = i;
        } else {
            throw new IllegalArgumentException("Invalid sheetIndex: " + i + ".");
        }
    }

    private EvaluationSheet getSheet() {
        if (this._sheet == null) {
            this._sheet = this._bookEvaluator.getSheet(this._sheetIndex);
        }
        return this._sheet;
    }

    public ValueEval getEvalForCell(int i, int i2) {
        return this._bookEvaluator.evaluateReference(getSheet(), this._sheetIndex, i, i2, this._tracker);
    }

    public int getLastRowNum() {
        return getSheet().getLastRowNum();
    }

    public int getMaxRowNum() {
        return this._bookEvaluator.getWorkbook().getSpreadsheetVersion().getLastRowIndex();
    }

    public String getSheetName() {
        return this._bookEvaluator.getSheetName(this._sheetIndex);
    }

    public boolean isRowHidden(int i) {
        return getSheet().isRowHidden(i);
    }

    public boolean isSubTotal(int i, int i2) {
        EvaluationCell cell = getSheet().getCell(i, i2);
        if (cell == null || cell.getCellType() != CellType.FORMULA) {
            return false;
        }
        for (Ptg ptg : this._bookEvaluator.getWorkbook().getFormulaTokens(cell)) {
            if ((ptg instanceof FuncVarPtg) && "SUBTOTAL".equals(((FuncVarPtg) ptg).getName())) {
                return true;
            }
        }
        return false;
    }
}
