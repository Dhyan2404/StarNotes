package org.apache.html.dom;

import org.w3c.dom.html.HTMLQuoteElement;

/* loaded from: classes12.dex */
public class HTMLQuoteElementImpl extends HTMLElementImpl implements HTMLQuoteElement {
    private static final long serialVersionUID = -67544811597906132L;

    public HTMLQuoteElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLQuoteElement
    public String getCite() {
        return getAttribute("cite");
    }

    @Override // org.w3c.dom.html.HTMLQuoteElement
    public void setCite(String str) {
        setAttribute("cite", str);
    }
}
