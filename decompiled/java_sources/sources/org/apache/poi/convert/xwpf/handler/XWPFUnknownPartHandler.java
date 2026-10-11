package org.apache.poi.convert.xwpf.handler;

import org.apache.poi.style.TextRunStyles;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.xwpf.usermodel.IRunPart;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
public class XWPFUnknownPartHandler extends XWPFRunPartHandler {
    IRunPart part;

    public XWPFUnknownPartHandler(XWPFContext xWPFContext, IRunPart iRunPart) {
        super(xWPFContext);
        this.part = iRunPart;
        this.LOG.atWarn().log("Unknown run part: {}", iRunPart.getClass().getName());
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFRunPartHandler, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseUtils.close(this.part);
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFRunPartHandler
    public void handleRunPart(Element element, TextRunStyles textRunStyles, int i, int i2, int i3) {
    }
}
