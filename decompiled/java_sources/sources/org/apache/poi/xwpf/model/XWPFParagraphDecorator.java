package org.apache.poi.xwpf.model;

import org.apache.poi.xwpf.usermodel.XWPFParagraph;

/* loaded from: classes13.dex */
public abstract class XWPFParagraphDecorator {
    protected XWPFParagraphDecorator nextDecorator;
    protected XWPFParagraph paragraph;

    public XWPFParagraphDecorator(XWPFParagraph xWPFParagraph) {
        this(xWPFParagraph, null);
    }

    public String getText() {
        XWPFParagraphDecorator xWPFParagraphDecorator = this.nextDecorator;
        return xWPFParagraphDecorator != null ? xWPFParagraphDecorator.getText() : this.paragraph.getText();
    }

    public XWPFParagraphDecorator(XWPFParagraph xWPFParagraph, XWPFParagraphDecorator xWPFParagraphDecorator) {
        this.paragraph = xWPFParagraph;
        this.nextDecorator = xWPFParagraphDecorator;
    }
}
