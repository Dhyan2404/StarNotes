package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.html.HTMLDivElement;

/* loaded from: classes10.dex */
public class HTMLDivElementImpl extends HTMLElementImpl implements HTMLDivElement {
    public HTMLDivElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLDivElement
    public String getAlign() {
        return capitalize(getAttribute("align"));
    }

    @Override // org.w3c.dom.html.HTMLDivElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }
}
