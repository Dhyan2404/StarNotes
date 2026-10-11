package org.apache.poi.xwpf.usermodel;

import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAbstractNum;

/* loaded from: classes13.dex */
public class XWPFAbstractNum {
    private CTAbstractNum ctAbstractNum;
    protected XWPFNumbering numbering;

    public XWPFAbstractNum() {
        this.ctAbstractNum = null;
        this.numbering = null;
    }

    public CTAbstractNum getAbstractNum() {
        return this.ctAbstractNum;
    }

    public CTAbstractNum getCTAbstractNum() {
        return this.ctAbstractNum;
    }

    public XWPFNumbering getNumbering() {
        return this.numbering;
    }

    public void setCtAbstractNum(CTAbstractNum cTAbstractNum) {
        this.ctAbstractNum = cTAbstractNum;
    }

    public void setNumbering(XWPFNumbering xWPFNumbering) {
        this.numbering = xWPFNumbering;
    }

    public XWPFAbstractNum(CTAbstractNum cTAbstractNum) {
        this.ctAbstractNum = cTAbstractNum;
    }

    public XWPFAbstractNum(CTAbstractNum cTAbstractNum, XWPFNumbering xWPFNumbering) {
        this.ctAbstractNum = cTAbstractNum;
        this.numbering = xWPFNumbering;
    }
}
