package org.apache.poi.convert.xwpf.handler;

import org.apache.poi.style.TextRunStyles;
import org.apache.poi.xwpf.usermodel.BreakType;
import org.apache.poi.xwpf.usermodel.XWPFBreak;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
class XWPFBreakHandler extends XWPFRunPartHandler {
    private XWPFBreak xwpfBreak;

    public XWPFBreakHandler(XWPFContext xWPFContext, XWPFBreak xWPFBreak) {
        super(xWPFContext);
        this.xwpfBreak = xWPFBreak;
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFRunPartHandler
    public void handleRunPart(Element element, TextRunStyles textRunStyles, int i, int i2, int i3) {
        BreakType breakType = this.xwpfBreak.getBreakType();
        if (breakType == BreakType.COLUMN || breakType == BreakType.PAGE) {
            this.context.setBreakType(breakType);
        } else {
            element.appendChild(this.context.getDocumentFacade().createLineBreak());
        }
    }
}
