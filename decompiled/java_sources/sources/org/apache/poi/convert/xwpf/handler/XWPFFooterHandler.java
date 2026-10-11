package org.apache.poi.convert.xwpf.handler;

import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
class XWPFFooterHandler extends XWPFHeaderFooterHandler {
    public XWPFFooterHandler(XWPFContext xWPFContext) {
        super(xWPFContext);
    }

    public void handleFooter(XWPFHeaderFooterPolicy xWPFHeaderFooterPolicy, Element element) {
        xWPFHeaderFooterPolicy.readFooter();
        handleHeaderFooter(xWPFHeaderFooterPolicy.getFirstPageFooter(), element, Constants.NAME_FIRST_FOOTER);
        handleHeaderFooter(xWPFHeaderFooterPolicy.getEvenPageFooter(), element, Constants.NAME_EVEN_FOOTER);
        handleHeaderFooter(xWPFHeaderFooterPolicy.getDefaultFooter(), element, Constants.NAME_DEFAULT_FOOTER);
        xWPFHeaderFooterPolicy.closeFooter();
    }
}
