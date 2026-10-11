package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.html.HTMLHtmlElement;

/* loaded from: classes10.dex */
public class HTMLHtmlElementImpl extends HTMLElementImpl implements HTMLHtmlElement {
    public HTMLHtmlElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLHtmlElement
    public String getVersion() {
        return capitalize(getAttribute("version"));
    }

    @Override // org.w3c.dom.html.HTMLHtmlElement
    public void setVersion(String str) {
        setAttribute("version", str);
    }
}
