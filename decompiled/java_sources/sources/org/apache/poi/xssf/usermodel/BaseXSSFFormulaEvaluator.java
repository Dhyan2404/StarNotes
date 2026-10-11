package org.apache.poi.xssf.usermodel;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.ss.formula.BaseFormulaEvaluator;
import org.apache.poi.ss.formula.EvaluationCell;
import org.apache.poi.ss.formula.EvaluationWorkbook;
import org.apache.poi.ss.formula.WorkbookEvaluator;
import org.apache.poi.ss.formula.eval.BoolEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.StringEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.ptg.Area3DPxg;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.CellValue;
import org.apache.poi.ss.usermodel.RichTextString;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.xssf.model.ExternalLinksTable;

/* loaded from: classes13.dex */
public abstract class BaseXSSFFormulaEvaluator extends BaseFormulaEvaluator {
    public BaseXSSFFormulaEvaluator(WorkbookEvaluator workbookEvaluator) {
        super(workbookEvaluator);
    }

    private void cacheExternalWorkbookCells(EvaluationCell evaluationCell) {
        EvaluationCell evaluationCell2 = evaluationCell;
        Ptg[] formulaTokens = getEvaluationWorkbook().getFormulaTokens(evaluationCell2);
        int length = formulaTokens.length;
        int i = 0;
        while (i < length) {
            Ptg ptg = formulaTokens[i];
            if (ptg instanceof Area3DPxg) {
                Area3DPxg area3DPxg = (Area3DPxg) ptg;
                if (area3DPxg.getExternalWorkbookNumber() > 0) {
                    EvaluationWorkbook.ExternalSheet externalSheet = getEvaluationWorkbook().getExternalSheet(area3DPxg.getSheetName(), area3DPxg.getLastSheetName(), area3DPxg.getExternalWorkbookNumber());
                    XSSFCell xSSFCell = ((XSSFEvaluationCell) evaluationCell2).getXSSFCell();
                    XSSFWorkbook xSSFWorkbook = (XSSFWorkbook) xSSFCell.getSheet().getWorkbook().getCreationHelper().getReferencedWorkbooks().get(externalSheet.getWorkbookName());
                    ExternalLinksTable externalLinksTable = xSSFCell.getSheet().getWorkbook().getExternalLinksTable().get(area3DPxg.getExternalWorkbookNumber() - 1);
                    int sheetIndex = xSSFWorkbook.getSheetIndex(area3DPxg.getSheetName());
                    int sheetIndex2 = area3DPxg.getLastSheetName() != null ? xSSFWorkbook.getSheetIndex(area3DPxg.getLastSheetName()) : sheetIndex;
                    for (int i2 = sheetIndex; i2 <= sheetIndex2; i2++) {
                        XSSFSheet sheetAt = xSSFWorkbook.getSheetAt(i2);
                        int firstRow = area3DPxg.getFirstRow();
                        int lastRow = area3DPxg.getLastRow();
                        int i3 = firstRow;
                        while (i3 <= lastRow) {
                            XSSFRow row = sheetAt.getRow(i3);
                            int firstColumn = area3DPxg.getFirstColumn();
                            int lastColumn = area3DPxg.getLastColumn();
                            while (firstColumn <= lastColumn) {
                                XSSFCell cell = row.getCell(firstColumn);
                                externalLinksTable.cacheData(sheetAt.getSheetName(), i3 + 1, new CellReference(cell).formatAsString(false), cell.getRawValue());
                                firstColumn++;
                                sheetAt = sheetAt;
                                lastRow = lastRow;
                                i3 = i3;
                                i = i;
                                lastColumn = lastColumn;
                                row = row;
                            }
                            i3++;
                        }
                    }
                }
            }
            i++;
            evaluationCell2 = evaluationCell;
        }
    }

    @Override // org.apache.poi.ss.formula.BaseFormulaEvaluator
    public RichTextString createRichTextString(String str) {
        return new XSSFRichTextString(str);
    }

    @Override // org.apache.poi.ss.formula.BaseFormulaEvaluator
    public CellValue evaluateFormulaCellValue(Cell cell) {
        EvaluationCell evaluationCell = toEvaluationCell(cell);
        ValueEval evaluate = this._bookEvaluator.evaluate(evaluationCell);
        cacheExternalWorkbookCells(evaluationCell);
        if (evaluate instanceof NumberEval) {
            return new CellValue(((NumberEval) evaluate).getNumberValue());
        }
        if (evaluate instanceof BoolEval) {
            return CellValue.valueOf(((BoolEval) evaluate).getBooleanValue());
        }
        if (evaluate instanceof StringEval) {
            return new CellValue(((StringEval) evaluate).getStringValue());
        }
        if (evaluate instanceof ErrorEval) {
            return CellValue.getError(((ErrorEval) evaluate).getErrorCode());
        }
        throw new IllegalStateException("Unexpected eval class (" + evaluate.getClass().getName() + MotionUtils.f31762d);
    }

    @Override // org.apache.poi.ss.formula.BaseFormulaEvaluator
    public void setCellType(Cell cell, CellType cellType) {
        if (!(cell instanceof XSSFCell)) {
            cell.setCellType(cellType);
        } else {
            EvaluationWorkbook evaluationWorkbook = getEvaluationWorkbook();
            ((XSSFCell) cell).setCellType(cellType, BaseXSSFEvaluationWorkbook.class.isAssignableFrom(evaluationWorkbook.getClass()) ? (BaseXSSFEvaluationWorkbook) evaluationWorkbook : null);
        }
    }

    public abstract EvaluationCell toEvaluationCell(Cell cell);
}
