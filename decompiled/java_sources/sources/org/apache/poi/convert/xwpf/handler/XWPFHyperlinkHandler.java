package org.apache.poi.convert.xwpf.handler;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.util.StringUtils;
import org.apache.poi.xwpf.usermodel.IRunBody;
import org.apache.poi.xwpf.usermodel.XWPFHyperlinkRun;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.jsoup.nodes.Element;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR;

/* loaded from: classes12.dex */
public class XWPFHyperlinkHandler extends XWPFIRunHandler implements Closeable {
    private String anchor;
    private XWPFHyperlinkRun hyperlinkRun;
    private List<XWPFRun> runList;

    public XWPFHyperlinkHandler(XWPFContext xWPFContext, XWPFHyperlinkRun xWPFHyperlinkRun) {
        super(xWPFContext);
        this.runList = new ArrayList();
        this.hyperlinkRun = xWPFHyperlinkRun;
        this.anchor = xWPFHyperlinkRun.getAnchor();
        IRunBody parent = xWPFHyperlinkRun.getParent();
        for (CTR ctr : xWPFHyperlinkRun.getCTHyperlink().getRArray()) {
            this.runList.add(new XWPFRun(ctr, parent));
        }
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFIRunHandler, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseUtils.close(this.hyperlinkRun);
        XmlBeanUtils.freeMemory(this.hyperlinkRun.getCTHyperlink());
    }

    @Override // org.apache.poi.convert.htmlgen.RunHandler
    public void handleRun(Element element, int i, int i2, int i3) {
        if (!StringUtils.isNullOrEmpty(this.anchor)) {
            Element createHyperlink = this.context.getDocumentFacade().createHyperlink("#" + this.anchor);
            element.appendChild(createHyperlink);
            element = createHyperlink;
        }
        int i4 = i3 + 1;
        int size = this.runList.size();
        Iterator<XWPFRun> it2 = this.runList.iterator();
        int i5 = 0;
        while (it2.hasNext()) {
            XWPFRunHandler.handleRun(this.context, it2.next(), element, i5, size, i4);
            i5++;
        }
    }
}
