package org.apache.poi.xslf.usermodel;

import org.openxmlformats.schemas.drawingml.x2006.main.CTTextLineBreak;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public class XSLFLineBreak extends XSLFTextRun {
    public XSLFLineBreak(CTTextLineBreak cTTextLineBreak, XSLFTextParagraph xSLFTextParagraph) {
        super(cTTextLineBreak, xSLFTextParagraph);
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFTextRun, org.apache.poi.sl.usermodel.TextRun
    public void setText(String str) {
        throw new IllegalStateException("You cannot change text of a line break, it is always '\\n'");
    }
}
