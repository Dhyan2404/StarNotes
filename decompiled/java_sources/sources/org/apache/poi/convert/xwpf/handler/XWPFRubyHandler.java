package org.apache.poi.convert.xwpf.handler;

import org.apache.poi.style.TextRunStyles;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.xwpf.usermodel.XWPFRuby;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
class XWPFRubyHandler extends XWPFRunPartHandler {
    private XWPFRuby ruby;

    public XWPFRubyHandler(XWPFContext xWPFContext, XWPFRuby xWPFRuby) {
        super(xWPFContext);
        this.ruby = xWPFRuby;
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFRunPartHandler, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseUtils.close(this.ruby);
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFRunPartHandler
    public void handleRunPart(Element element, TextRunStyles textRunStyles, int i, int i2, int i3) {
    }
}
