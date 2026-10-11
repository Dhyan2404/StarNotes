package org.apache.poi.xssf.usermodel;

import org.apache.poi.ss.usermodel.ConditionalFormattingThreshold;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCfvo;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfvoType;

/* loaded from: classes13.dex */
public class XSSFConditionalFormattingThreshold implements ConditionalFormattingThreshold {
    private final CTCfvo cfvo;

    public XSSFConditionalFormattingThreshold(CTCfvo cTCfvo) {
        this.cfvo = cTCfvo;
    }

    public CTCfvo getCTCfvo() {
        return this.cfvo;
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingThreshold
    public String getFormula() {
        if (this.cfvo.getType() == STCfvoType.FORMULA) {
            return this.cfvo.getVal();
        }
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingThreshold
    public ConditionalFormattingThreshold.RangeType getRangeType() {
        return ConditionalFormattingThreshold.RangeType.byName(this.cfvo.getType().toString());
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingThreshold
    public Double getValue() {
        if (this.cfvo.getType() == STCfvoType.FORMULA || this.cfvo.getType() == STCfvoType.MIN || this.cfvo.getType() == STCfvoType.MAX || !this.cfvo.isSetVal()) {
            return null;
        }
        return Double.valueOf(Double.parseDouble(this.cfvo.getVal()));
    }

    public boolean isGte() {
        return this.cfvo.getGte();
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingThreshold
    public void setFormula(String str) {
        this.cfvo.setVal(str);
    }

    public void setGte(boolean z) {
        this.cfvo.setGte(z);
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingThreshold
    public void setRangeType(ConditionalFormattingThreshold.RangeType rangeType) {
        this.cfvo.setType(STCfvoType.Enum.forString(rangeType.name));
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormattingThreshold
    public void setValue(Double d) {
        if (d == null) {
            this.cfvo.unsetVal();
        } else {
            this.cfvo.setVal(d.toString());
        }
    }
}
