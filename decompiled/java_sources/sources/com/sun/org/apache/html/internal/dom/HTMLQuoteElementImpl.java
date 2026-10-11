package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.html.HTMLQuoteElement;

/* loaded from: classes10.dex */
public class HTMLQuoteElementImpl extends HTMLElementImpl implements HTMLQuoteElement {
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
