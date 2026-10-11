package org.apache.poi.xssf.usermodel;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import org.apache.poi.ss.usermodel.ConditionalFormatting;
import org.apache.poi.ss.usermodel.ConditionalFormattingRule;
import org.apache.poi.ss.util.CellRangeAddress;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormatting;

/* loaded from: classes13.dex */
public class XSSFConditionalFormatting implements ConditionalFormatting {
    private final CTConditionalFormatting _cf;
    private final XSSFSheet _sh;

    public XSSFConditionalFormatting(XSSFSheet xSSFSheet) {
        this._cf = CTConditionalFormatting.Factory.newInstance();
        this._sh = xSSFSheet;
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormatting
    public void addRule(ConditionalFormattingRule conditionalFormattingRule) {
        this._cf.addNewCfRule().set(((XSSFConditionalFormattingRule) conditionalFormattingRule).getCTCfRule());
    }

    public CTConditionalFormatting getCTConditionalFormatting() {
        return this._cf;
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormatting
    public CellRangeAddress[] getFormattingRanges() {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = this._cf.getSqref().iterator();
        while (true) {
            if (!it2.hasNext()) {
                return (CellRangeAddress[]) arrayList.toArray(new CellRangeAddress[0]);
            }
            for (String str : it2.next().toString().split(" ")) {
                arrayList.add(CellRangeAddress.valueOf(str));
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormatting
    public int getNumberOfRules() {
        return this._cf.sizeOfCfRuleArray();
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormatting
    public void setFormattingRanges(CellRangeAddress[] cellRangeAddressArr) {
        if (cellRangeAddressArr == null) {
            throw new IllegalArgumentException("cellRanges must not be null");
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (CellRangeAddress cellRangeAddress : cellRangeAddressArr) {
            if (z) {
                z = false;
            } else {
                sb.append(' ');
            }
            sb.append(cellRangeAddress.formatAsString());
        }
        this._cf.setSqref(Collections.singletonList(sb.toString()));
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormatting
    public void setRule(int i, ConditionalFormattingRule conditionalFormattingRule) {
        this._cf.getCfRuleArray(i).set(((XSSFConditionalFormattingRule) conditionalFormattingRule).getCTCfRule());
    }

    public String toString() {
        return this._cf.toString();
    }

    @Override // org.apache.poi.ss.usermodel.ConditionalFormatting
    public XSSFConditionalFormattingRule getRule(int i) {
        return new XSSFConditionalFormattingRule(this._sh, this._cf.getCfRuleArray(i));
    }

    public XSSFConditionalFormatting(XSSFSheet xSSFSheet, CTConditionalFormatting cTConditionalFormatting) {
        this._cf = cTConditionalFormatting;
        this._sh = xSSFSheet;
    }
}
