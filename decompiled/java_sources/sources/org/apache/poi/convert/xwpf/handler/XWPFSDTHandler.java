package org.apache.poi.convert.xwpf.handler;

import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.xwpf.usermodel.IBodyElement;
import org.apache.poi.xwpf.usermodel.ISDTContent;
import org.apache.poi.xwpf.usermodel.ISDTContents;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.apache.poi.xwpf.usermodel.XWPFSDT;
import org.apache.poi.xwpf.usermodel.XWPFSDTContent;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
class XWPFSDTHandler extends XWPFBodyElementHandler<XWPFSDT> {
    private XWPFSDT xwpfsdt;

    public XWPFSDTHandler(XWPFContext xWPFContext, XWPFSDT xwpfsdt) {
        super(xWPFContext);
        this.xwpfsdt = xwpfsdt;
    }

    private List<ISDTContents> getBodyElements() {
        ISDTContent content = this.xwpfsdt.getContent();
        return content instanceof XWPFSDTContent ? ((XWPFSDTContent) content).getBodyElements() : Collections.emptyList();
    }

    private int handleSdtImpl(Element element, int i, int i2, int i3) {
        this.context.checkAbortConvert();
        this.xwpfsdt.readDocument();
        int i4 = i3 + 1;
        List<ISDTContents> bodyElements = getBodyElements();
        int size = bodyElements.size();
        int i5 = 0;
        int i6 = 0;
        for (ISDTContents iSDTContents : bodyElements) {
            if (iSDTContents instanceof IBodyElement) {
                i5 += XWPFBodyElementHandler.handleBodyElement(this.context, (IBodyElement) iSDTContents, element, i6, size, i4);
            } else if (iSDTContents instanceof XWPFRun) {
                this.LOG.atWarn().log("SDT run: parent:{}/{}, sdt:{}/{}, depth:{}", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i6), Integer.valueOf(size), Integer.valueOf(i4));
                XWPFRunHandler.handleRun(this.context, (XWPFRun) iSDTContents, element, i6, size, i4);
            } else {
                HtmlDocumentFacade documentFacade = this.context.getDocumentFacade();
                this.LOG.atWarn().log("Unsupported sdt type: {}", iSDTContents);
                Element createSpan = documentFacade.createSpan();
                createSpan.appendChild(documentFacade.createText(this.xwpfsdt.getContent().getText()));
                element.appendChild(createSpan);
                i6++;
            }
            i6++;
        }
        return i5;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        CloseUtils.close(this.xwpfsdt);
    }

    @Override // org.apache.poi.convert.htmlgen.BodyElementHandler
    public void handleBodyElement(Element element, int i, int i2, int i3) {
        this.paragraphSize = handleSdtImpl(element, i, i2, i3);
    }
}
