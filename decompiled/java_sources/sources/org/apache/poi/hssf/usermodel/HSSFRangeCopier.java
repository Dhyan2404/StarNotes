package org.apache.poi.hssf.usermodel;

import org.apache.poi.hssf.record.aggregates.FormulaRecordAggregate;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.RangeCopier;
import org.apache.poi.ss.usermodel.Sheet;

/* loaded from: classes12.dex */
public class HSSFRangeCopier extends RangeCopier {
    public HSSFRangeCopier(Sheet sheet, Sheet sheet2) {
        super(sheet, sheet2);
    }

    @Override // org.apache.poi.ss.usermodel.RangeCopier
    public void adjustCellReferencesInsideFormula(Cell cell, Sheet sheet, int i, int i2) {
        FormulaRecordAggregate formulaRecordAggregate = (FormulaRecordAggregate) ((HSSFCell) cell).getCellValueRecord();
        int sheetIndex = sheet.getWorkbook().getSheetIndex(sheet);
        Ptg[] formulaTokens = formulaRecordAggregate.getFormulaTokens();
        if (adjustInBothDirections(formulaTokens, sheetIndex, i, i2)) {
            formulaRecordAggregate.setParsedExpression(formulaTokens);
        }
    }

    public HSSFRangeCopier(Sheet sheet) {
        super(sheet);
    }
}
