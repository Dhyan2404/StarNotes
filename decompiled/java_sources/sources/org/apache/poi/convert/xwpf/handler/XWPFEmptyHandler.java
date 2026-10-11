package org.apache.poi.convert.xwpf.handler;

import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.style.TextRunStyles;
import org.apache.poi.xwpf.usermodel.XWPFEmpty;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
class XWPFEmptyHandler extends XWPFRunPartHandler {
    private XWPFEmpty empty;

    public XWPFEmptyHandler(XWPFContext xWPFContext, XWPFEmpty xWPFEmpty) {
        super(xWPFContext);
        this.empty = xWPFEmpty;
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFRunPartHandler
    public void handleRunPart(Element element, TextRunStyles textRunStyles, int i, int i2, int i3) {
        HtmlDocumentFacade documentFacade = this.context.getDocumentFacade();
        if (this.empty.isTab()) {
            Element createSpan = documentFacade.createSpan();
            element.appendChild(createSpan);
            createSpan.appendChild(documentFacade.createText(Constants.UNICODECHAR_TAB_SPACE));
        } else {
            if (this.empty.isBr()) {
                element.appendChild(documentFacade.createLineBreak());
                return;
            }
            Element createSpan2 = documentFacade.createSpan();
            element.appendChild(createSpan2);
            createSpan2.appendChild(documentFacade.createText(this.empty.getText()));
        }
    }
}
