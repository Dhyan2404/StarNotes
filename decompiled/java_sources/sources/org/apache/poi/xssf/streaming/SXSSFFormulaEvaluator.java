package org.apache.poi.xssf.streaming;

import java.util.Iterator;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.ss.formula.EvaluationCell;
import org.apache.poi.ss.formula.IStabilityClassifier;
import org.apache.poi.ss.formula.WorkbookEvaluator;
import org.apache.poi.ss.formula.udf.UDFFinder;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.BaseXSSFFormulaEvaluator;

/* loaded from: classes13.dex */
public final class SXSSFFormulaEvaluator extends BaseXSSFFormulaEvaluator {
    private static final Logger LOG = LogManager.getLogger((Class<?>) SXSSFFormulaEvaluator.class);

    /* renamed from: wb */
    private final SXSSFWorkbook f111828wb;

    /* loaded from: classes13.dex */
    public static class RowFlushedException extends IllegalStateException {
        public RowFlushedException(int i, int i2) {
            super("Row " + i + " has been flushed (rows up to " + i2 + " have been flushed), cannot evaluate all cells");
        }
    }

    /* loaded from: classes13.dex */
    public static class SheetsFlushedException extends IllegalStateException {
        public SheetsFlushedException() {
            super("One or more sheets have been flushed, cannot evaluate all cells");
        }
    }

    public SXSSFFormulaEvaluator(SXSSFWorkbook sXSSFWorkbook) {
        this(sXSSFWorkbook, null, null);
    }

    public static SXSSFFormulaEvaluator create(SXSSFWorkbook sXSSFWorkbook, IStabilityClassifier iStabilityClassifier, UDFFinder uDFFinder) {
        return new SXSSFFormulaEvaluator(sXSSFWorkbook, iStabilityClassifier, uDFFinder);
    }

    public static void evaluateAllFormulaCells(SXSSFWorkbook sXSSFWorkbook, boolean z) {
        int lastFlushedRowNum;
        SXSSFFormulaEvaluator sXSSFFormulaEvaluator = new SXSSFFormulaEvaluator(sXSSFWorkbook);
        Iterator<Sheet> it2 = sXSSFWorkbook.iterator();
        while (it2.hasNext()) {
            if (((SXSSFSheet) it2.next()).areAllRowsFlushed()) {
                throw new SheetsFlushedException();
            }
        }
        for (Sheet sheet : sXSSFWorkbook) {
            if ((sheet instanceof SXSSFSheet) && (lastFlushedRowNum = ((SXSSFSheet) sheet).getLastFlushedRowNum()) > -1) {
                if (!z) {
                    throw new RowFlushedException(0, lastFlushedRowNum);
                }
                LOG.atInfo().log("Rows up to {} have already been flushed, skipping", Unbox.box(lastFlushedRowNum));
            }
            Iterator<Row> it3 = sheet.iterator();
            while (it3.hasNext()) {
                for (Cell cell : it3.next()) {
                    if (cell.getCellType() == CellType.FORMULA) {
                        sXSSFFormulaEvaluator.evaluateFormulaCell(cell);
                    }
                }
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
    public void evaluateAll() {
        evaluateAllFormulaCells(this.f111828wb, false);
    }

    @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
    public void notifyDeleteCell(Cell cell) {
        this._bookEvaluator.notifyDeleteCell(new SXSSFEvaluationCell((SXSSFCell) cell));
    }

    @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
    public void notifySetFormula(Cell cell) {
        this._bookEvaluator.notifyUpdateCell(new SXSSFEvaluationCell((SXSSFCell) cell));
    }

    @Override // org.apache.poi.ss.usermodel.FormulaEvaluator
    public void notifyUpdateCell(Cell cell) {
        this._bookEvaluator.notifyUpdateCell(new SXSSFEvaluationCell((SXSSFCell) cell));
    }

    @Override // org.apache.poi.xssf.usermodel.BaseXSSFFormulaEvaluator
    public EvaluationCell toEvaluationCell(Cell cell) {
        if (cell instanceof SXSSFCell) {
            return new SXSSFEvaluationCell((SXSSFCell) cell);
        }
        throw new IllegalArgumentException("Unexpected type of cell: " + cell.getClass() + ". Only SXSSFCells can be evaluated.");
    }

    private SXSSFFormulaEvaluator(SXSSFWorkbook sXSSFWorkbook, IStabilityClassifier iStabilityClassifier, UDFFinder uDFFinder) {
        this(sXSSFWorkbook, new WorkbookEvaluator(SXSSFEvaluationWorkbook.create(sXSSFWorkbook), iStabilityClassifier, uDFFinder));
    }

    @Override // org.apache.poi.ss.formula.BaseFormulaEvaluator, org.apache.poi.ss.usermodel.FormulaEvaluator
    public SXSSFCell evaluateInCell(Cell cell) {
        return (SXSSFCell) super.evaluateInCell(cell);
    }

    private SXSSFFormulaEvaluator(SXSSFWorkbook sXSSFWorkbook, WorkbookEvaluator workbookEvaluator) {
        super(workbookEvaluator);
        this.f111828wb = sXSSFWorkbook;
    }
}
