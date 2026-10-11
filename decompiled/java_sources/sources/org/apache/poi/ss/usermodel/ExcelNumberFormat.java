package org.apache.poi.ss.usermodel;

import java.util.Iterator;
import org.apache.poi.ss.formula.ConditionalFormattingEvaluator;
import org.apache.poi.ss.formula.EvaluationConditionalFormatRule;

/* loaded from: classes13.dex */
public class ExcelNumberFormat {
    private final String format;
    private final int idx;

    public ExcelNumberFormat(int i, String str) {
        this.idx = i;
        this.format = str;
    }

    public static ExcelNumberFormat from(CellStyle cellStyle) {
        if (cellStyle == null) {
            return null;
        }
        return new ExcelNumberFormat(cellStyle.getDataFormat(), cellStyle.getDataFormatString());
    }

    public String getFormat() {
        return this.format;
    }

    public int getIdx() {
        return this.idx;
    }

    public static ExcelNumberFormat from(Cell cell, ConditionalFormattingEvaluator conditionalFormattingEvaluator) {
        ExcelNumberFormat excelNumberFormat = null;
        if (cell == null) {
            return null;
        }
        if (conditionalFormattingEvaluator != null) {
            Iterator<EvaluationConditionalFormatRule> it2 = conditionalFormattingEvaluator.getConditionalFormattingForCell(cell).iterator();
            while (it2.hasNext() && (excelNumberFormat = it2.next().getNumberFormat()) == null) {
            }
        }
        return excelNumberFormat == null ? from(cell.getCellStyle()) : excelNumberFormat;
    }
}
