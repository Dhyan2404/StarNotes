package org.apache.poi.convert.xwpf.handler;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.htmlgen.HeaderFooterHandler;
import org.apache.poi.xwpf.usermodel.IBodyElement;
import org.apache.poi.xwpf.usermodel.XWPFHeaderFooter;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
abstract class XWPFHeaderFooterHandler implements HeaderFooterHandler {
    private XWPFContext context;
    private HtmlDocumentFacade documentFacade;
    private String hideClass;
    private Map<XWPFHeaderFooter, Element> map = new HashMap();

    public XWPFHeaderFooterHandler(XWPFContext xWPFContext) {
        this.context = xWPFContext;
        this.documentFacade = xWPFContext.getDocumentFacade();
    }

    private void addNotEmptyHeaderFooter(Element element, Element element2, String str) {
        if (element2.childNodeSize() > 0) {
            element.appendChild(element2);
            element2.attr("name", str);
            if (element.childNodeSize() <= 0) {
                if (WordToHtmlUtils.isNull(this.hideClass)) {
                    return;
                }
                element2.removeClass(this.hideClass);
            } else if (WordToHtmlUtils.isNull(this.hideClass)) {
                this.hideClass = this.documentFacade.addStyleClass(element2, "d", "display:none;");
            } else {
                element2.addClass(this.hideClass);
            }
        }
    }

    public void handleHeaderFooter(XWPFHeaderFooter xWPFHeaderFooter, Element element, String str) {
        if (WordToHtmlUtils.isNull(xWPFHeaderFooter)) {
            return;
        }
        Element element2 = this.map.get(xWPFHeaderFooter);
        if (!WordToHtmlUtils.isNull(element2)) {
            addNotEmptyHeaderFooter(element, element2.mo74371clone(), str);
            return;
        }
        List<IBodyElement> bodyElements = xWPFHeaderFooter.getBodyElements();
        Element createBlock = this.documentFacade.createBlock();
        int size = bodyElements.size();
        Iterator<IBodyElement> it2 = bodyElements.iterator();
        int i = 0;
        while (it2.hasNext()) {
            XWPFBodyElementHandler.handleBodyElement(this.context, it2.next(), createBlock, i, size, 0);
            i++;
        }
        addNotEmptyHeaderFooter(element, createBlock, str);
        this.map.put(xWPFHeaderFooter, createBlock);
    }
}
