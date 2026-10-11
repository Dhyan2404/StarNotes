package org.apache.poi.convert.xwpf.handler;

import org.apache.poi.style.TextRunStyles;
import org.apache.poi.xwpf.usermodel.XWPFFldChar;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
class XWPFFldCharHandler extends XWPFRunPartHandler {
    private XWPFFldChar fldChar;

    public XWPFFldCharHandler(XWPFContext xWPFContext, XWPFFldChar xWPFFldChar) {
        super(xWPFContext);
        this.fldChar = xWPFFldChar;
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFRunPartHandler
    public void handleRunPart(Element element, TextRunStyles textRunStyles, int i, int i2, int i3) {
        this.context.fldCharState = this.fldChar.getFldCharState();
        if (this.context.isInFldChar()) {
            return;
        }
        this.context.fldContainer = null;
    }
}
