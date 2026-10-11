package org.apache.poi.convert.xwpf.handler;

import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
class XWPFHeaderHandler extends XWPFHeaderFooterHandler {
    public XWPFHeaderHandler(XWPFContext xWPFContext) {
        super(xWPFContext);
    }

    public void handleHeader(XWPFHeaderFooterPolicy xWPFHeaderFooterPolicy, Element element) {
        xWPFHeaderFooterPolicy.readHeader();
        handleHeaderFooter(xWPFHeaderFooterPolicy.getFirstPageHeader(), element, Constants.NAME_FIRST_HEADER);
        handleHeaderFooter(xWPFHeaderFooterPolicy.getEvenPageHeader(), element, Constants.NAME_EVEN_HEADER);
        handleHeaderFooter(xWPFHeaderFooterPolicy.getDefaultHeader(), element, Constants.NAME_DEFAULT_HEADER);
        xWPFHeaderFooterPolicy.closeHeader();
    }
}
