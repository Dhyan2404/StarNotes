package org.apache.poi.hssf.usermodel;

import com.google.android.material.motion.MotionUtils;
import java.util.Map;
import org.apache.poi.ss.formula.BaseFormulaEvaluator;
import org.apache.poi.ss.formula.CollaboratingWorkbooksEnvironment;
import org.apache.poi.ss.formula.IStabilityClassifier;
import org.apache.poi.ss.formula.WorkbookEvaluator;
import org.apache.poi.ss.formula.eval.BoolEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.NumericValueEval;
import org.apache.poi.ss.formula.eval.StringValueEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.udf.UDFFinder;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellValue;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.RichTextString;
import org.apache.poi.ss.usermodel.Workbook;

/* loaded from: classes12.dex */
public class HSSFFormulaEvaluator extends BaseFormulaEvaluator {
    private final HSSFWorkbook _book;

    public HSSFFormulaEvaluator(HSSFWorkbook hSSFWorkbook) {
        this(hSSFWorkbook, null);
    }

    public static HSSFFormulaEvaluator create(HSSFWorkbook hSSFWorkbook, IStabilityClassifier iStabilityClassifier, UDFFinder uDFFinder) {
        return new HSSFFormulaEvaluator(hSSFWorkbook, iStabilityClassifier, uDFFinder);
    }

    public static void evaluateAllFormulaCells(HSSFWorkbook hSSFWorkbook) {
        BaseFormulaEvaluator.evaluateAllFormulaCells(hSSFWorkbook, new HSSFFormulaEvaluator(hSSFWorkbook));
    }

    public static void setupEnvironment(String[] strArr, HSSFFormulaEvaluator[] hSSFFormulaEvaluatorArr) {
        BaseFormulaEvaluator.setupEnvironment(strArr, hSSFFormulaEvaluatorArr);
    }

    @Override // org.apache.poi.ss.formula.BaseFormulaEvaluator
    public RichTextString createRichTextString(String str) {
        return new HSSFRichTextString(str);
    }

    @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
    public void evaluateAll() {
        BaseFormulaEvaluator.evaluateAllFormulaCells(this._book, this);
    }

    @Override // org.apache.poi.ss.formula.BaseFormulaEvaluator
    public CellValue evaluateFormulaCellValue(Cell cell) {
        ValueEval evaluate = this._bookEvaluator.evaluate(new HSSFEvaluationCell((HSSFCell) cell));
        if (evaluate instanceof BoolEval) {
            return CellValue.valueOf(((BoolEval) evaluate).getBooleanValue());
        }
        if (evaluate instanceof NumericValueEval) {
            return new CellValue(((NumericValueEval) evaluate).getNumberValue());
        }
        if (evaluate instanceof StringValueEval) {
            return new CellValue(((StringValueEval) evaluate).getStringValue());
        }
        if (evaluate instanceof ErrorEval) {
            return CellValue.getError(((ErrorEval) evaluate).getErrorCode());
        }
        throw new IllegalStateException("Unexpected eval class (" + evaluate.getClass().getName() + MotionUtils.f31762d);
    }

    public void notifyDeleteCell(HSSFCell hSSFCell) {
        this._bookEvaluator.notifyDeleteCell(new HSSFEvaluationCell(hSSFCell));
    }

    @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
    public void notifySetFormula(Cell cell) {
        this._bookEvaluator.notifyUpdateCell(new HSSFEvaluationCell((HSSFCell) cell));
    }

    public void notifyUpdateCell(HSSFCell hSSFCell) {
        this._bookEvaluator.notifyUpdateCell(new HSSFEvaluationCell(hSSFCell));
    }

    @Override // org.apache.poi.ss.formula.BaseFormulaEvaluator, org.apache.poi.ss.usermodel.FormulaEvaluator
    public void setDebugEvaluationOutputForNextEval(boolean z) {
        this._bookEvaluator.setDebugEvaluationOutputForNextEval(z);
    }

    @Override // org.apache.poi.ss.formula.BaseFormulaEvaluator, org.apache.poi.ss.usermodel.FormulaEvaluator
    public void setIgnoreMissingWorkbooks(boolean z) {
        this._bookEvaluator.setIgnoreMissingWorkbooks(z);
    }

    @Override // org.apache.poi.ss.formula.BaseFormulaEvaluator, org.apache.poi.ss.usermodel.FormulaEvaluator
    public void setupReferencedWorkbooks(Map<String, FormulaEvaluator> map) {
        CollaboratingWorkbooksEnvironment.setupFormulaEvaluator(map);
    }

    public HSSFFormulaEvaluator(HSSFWorkbook hSSFWorkbook, IStabilityClassifier iStabilityClassifier) {
        this(hSSFWorkbook, iStabilityClassifier, null);
    }

    public static void evaluateAllFormulaCells(Workbook workbook) {
        BaseFormulaEvaluator.evaluateAllFormulaCells(workbook);
    }

    @Override // org.apache.poi.ss.formula.BaseFormulaEvaluator, org.apache.poi.ss.usermodel.FormulaEvaluator
    public HSSFCell evaluateInCell(Cell cell) {
        return (HSSFCell) super.evaluateInCell(cell);
    }

    @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
    public void notifyDeleteCell(Cell cell) {
        this._bookEvaluator.notifyDeleteCell(new HSSFEvaluationCell((HSSFCell) cell));
    }

    @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
    public void notifyUpdateCell(Cell cell) {
        this._bookEvaluator.notifyUpdateCell(new HSSFEvaluationCell((HSSFCell) cell));
    }

    private HSSFFormulaEvaluator(HSSFWorkbook hSSFWorkbook, IStabilityClassifier iStabilityClassifier, UDFFinder uDFFinder) {
        super(new WorkbookEvaluator(HSSFEvaluationWorkbook.create(hSSFWorkbook), iStabilityClassifier, uDFFinder));
        this._book = hSSFWorkbook;
    }
}
