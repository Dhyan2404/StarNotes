package org.apache.poi.xssf.usermodel;

import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;
import org.apache.poi.ss.formula.EvaluationCell;
import org.apache.poi.ss.formula.EvaluationSheet;
import org.apache.poi.ss.formula.FormulaParser;
import org.apache.poi.ss.formula.FormulaType;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.util.Internal;
import org.apache.poi.xssf.usermodel.XSSFEvaluationSheet;
import org.apache.poi.xssf.usermodel.XSSFEvaluationWorkbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;

@Internal
/* loaded from: classes13.dex */
public final class XSSFEvaluationWorkbook extends BaseXSSFEvaluationWorkbook {
    private final Map<XSSFSheet, XSSFEvaluationSheet> _sheetCache;

    private XSSFEvaluationWorkbook(XSSFWorkbook xSSFWorkbook) {
        super(xSSFWorkbook);
        this._sheetCache = new HashMap();
    }

    public static XSSFEvaluationWorkbook create(XSSFWorkbook xSSFWorkbook) {
        if (xSSFWorkbook == null) {
            return null;
        }
        return new XSSFEvaluationWorkbook(xSSFWorkbook);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XSSFEvaluationSheet lambda$getSheet$0(XSSFSheet xSSFSheet, XSSFSheet xSSFSheet2) {
        return new XSSFEvaluationSheet(xSSFSheet);
    }

    @Override // org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook, org.apache.poi.ss.formula.EvaluationWorkbook
    public void clearAllCachedResultValues() {
        super.clearAllCachedResultValues();
        this._sheetCache.clear();
    }

    @Override // org.apache.poi.ss.formula.EvaluationWorkbook
    public Ptg[] getFormulaTokens(EvaluationCell evaluationCell) {
        XSSFCell xSSFCell = ((XSSFEvaluationCell) evaluationCell).getXSSFCell();
        return FormulaParser.parse(xSSFCell.getCellFormula(this), this, FormulaType.CELL, this._uBook.getSheetIndex(xSSFCell.getSheet()), xSSFCell.getRowIndex());
    }

    @Override // org.apache.poi.ss.formula.EvaluationWorkbook
    public EvaluationSheet getSheet(int i) {
        if (i < 0 || i >= this._uBook.getNumberOfSheets()) {
            this._uBook.getSheetAt(i);
        }
        final XSSFSheet sheetAt = this._uBook.getSheetAt(i);
        return this._sheetCache.computeIfAbsent(sheetAt, new Function() { // from class: com.sunia.HTREnginev2.wqo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XSSFEvaluationSheet lambda$getSheet$0;
                lambda$getSheet$0 = XSSFEvaluationWorkbook.lambda$getSheet$0(XSSFSheet.this, (XSSFSheet) obj);
                return lambda$getSheet$0;
            }
        });
    }

    @Override // org.apache.poi.ss.formula.EvaluationWorkbook
    public int getSheetIndex(EvaluationSheet evaluationSheet) {
        return this._uBook.getSheetIndex(((XSSFEvaluationSheet) evaluationSheet).getXSSFSheet());
    }
}
