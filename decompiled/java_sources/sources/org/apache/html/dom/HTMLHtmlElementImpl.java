package org.apache.html.dom;

import org.w3c.dom.html.HTMLHtmlElement;

/* loaded from: classes12.dex */
public class HTMLHtmlElementImpl extends HTMLElementImpl implements HTMLHtmlElement {
    private static final long serialVersionUID = -4489734201536616166L;

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
