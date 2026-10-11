package org.apache.poi.xslf.usermodel;

import org.apache.poi.sl.usermodel.TextRun;
import org.apache.xmlbeans.XmlObject;

/* loaded from: classes13.dex */
public class XSLFMathRun extends XSLFTextRun {
    public XSLFMathRun(XmlObject xmlObject, XSLFTextParagraph xSLFTextParagraph) {
        super(xmlObject, xSLFTextParagraph);
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFTextRun, org.apache.poi.sl.usermodel.TextRun
    public TextRun.FieldType getFieldType() {
        return TextRun.FieldType.MATH;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFTextRun, org.apache.poi.sl.usermodel.TextRun
    public String getRawText() {
        return getXmlObject().toString();
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFTextRun, org.apache.poi.sl.usermodel.TextRun
    public void setText(String str) {
        throw new IllegalStateException("You cannot change text of a math");
    }
}
