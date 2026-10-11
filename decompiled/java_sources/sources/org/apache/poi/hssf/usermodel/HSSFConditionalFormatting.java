package org.apache.poi.hssf.usermodel;

import org.apache.poi.hssf.record.aggregates.CFRecordsAggregate;
import org.apache.poi.ss.usermodel.ConditionalFormatting;
import org.apache.poi.ss.usermodel.ConditionalFormattingRule;
import org.apache.poi.ss.util.CellRangeAddress;

/* loaded from: classes12.dex */
public final class HSSFConditionalFormatting implements ConditionalFormatting {
    private final CFRecordsAggregate cfAggregate;
    private final HSSFSheet sheet;

    public HSSFConditionalFormatting(HSSFSheet hSSFSheet, CFRecordsAggregate cFRecordsAggregate) {
        if (hSSFSheet == null) {
            throw new IllegalArgumentException("sheet must not be null");
        }
        if (cFRecordsAggregate == null) {
            throw new IllegalArgumentException("cfAggregate must not be null");
        }
        this.sheet = hSSFSheet;
        this.cfAggregate = cFRecordsAggregate;
    }

    public void addRule(HSSFConditionalFormattingRule hSSFConditionalFormattingRule) {
        this.cfAggregate.addRule(hSSFConditionalFormattingRule.getCfRuleRecord());
    }

    public CFRecordsAggregate getCFRecordsAggregate() {
        return this.cfAggregate;
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormatting
    public CellRangeAddress[] getFormattingRanges() {
        return this.cfAggregate.getHeader().getCellRanges();
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormatting
    public int getNumberOfRules() {
        return this.cfAggregate.getNumberOfRules();
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormatting
    public void setFormattingRanges(CellRangeAddress[] cellRangeAddressArr) {
        this.cfAggregate.getHeader().setCellRanges(cellRangeAddressArr);
    }

    public void setRule(int i, HSSFConditionalFormattingRule hSSFConditionalFormattingRule) {
        this.cfAggregate.setRule(i, hSSFConditionalFormattingRule.getCfRuleRecord());
    }

    public String toString() {
        return this.cfAggregate.toString();
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormatting
    public void addRule(ConditionalFormattingRule conditionalFormattingRule) {
        addRule((HSSFConditionalFormattingRule) conditionalFormattingRule);
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormatting
    public HSSFConditionalFormattingRule getRule(int i) {
        return new HSSFConditionalFormattingRule(this.sheet, this.cfAggregate.getRule(i));
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormatting
    public void setRule(int i, ConditionalFormattingRule conditionalFormattingRule) {
        setRule(i, (HSSFConditionalFormattingRule) conditionalFormattingRule);
    }
}
