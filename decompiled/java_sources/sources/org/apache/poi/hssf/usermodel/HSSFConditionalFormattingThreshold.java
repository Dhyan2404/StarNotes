package org.apache.poi.hssf.usermodel;

import org.apache.poi.hssf.record.CFRuleBase;
import org.apache.poi.hssf.record.cf.Threshold;
import org.apache.poi.ss.usermodel.ConditionalFormattingThreshold;

/* loaded from: classes12.dex */
public final class HSSFConditionalFormattingThreshold implements ConditionalFormattingThreshold {
    private final HSSFSheet sheet;
    private final Threshold threshold;
    private final HSSFWorkbook workbook;

    public HSSFConditionalFormattingThreshold(Threshold threshold, HSSFSheet hSSFSheet) {
        this.threshold = threshold;
        this.sheet = hSSFSheet;
        this.workbook = hSSFSheet.getWorkbook();
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingThreshold
    public String getFormula() {
        return HSSFConditionalFormattingRule.toFormulaString(this.threshold.getParsedExpression(), this.workbook);
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingThreshold
    public ConditionalFormattingThreshold.RangeType getRangeType() {
        return ConditionalFormattingThreshold.RangeType.byId(this.threshold.getType());
    }

    public Threshold getThreshold() {
        return this.threshold;
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingThreshold
    public Double getValue() {
        return this.threshold.getValue();
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingThreshold
    public void setFormula(String str) {
        this.threshold.setParsedExpression(CFRuleBase.parseFormula(str, this.sheet));
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingThreshold
    public void setRangeType(ConditionalFormattingThreshold.RangeType rangeType) {
        this.threshold.setType((byte) rangeType.f111558id);
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingThreshold
    public void setValue(Double d) {
        this.threshold.setValue(d);
    }
}
