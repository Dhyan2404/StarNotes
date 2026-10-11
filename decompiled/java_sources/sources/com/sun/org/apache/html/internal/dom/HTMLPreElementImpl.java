package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.html.HTMLPreElement;

/* loaded from: classes10.dex */
public class HTMLPreElementImpl extends HTMLElementImpl implements HTMLPreElement {
    public HTMLPreElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLPreElement
    public int getWidth() {
        return getInteger(getAttribute("width"));
    }

    @Override // org.w3c.dom.html.HTMLPreElement
    public void setWidth(int i) {
        setAttribute("width", String.valueOf(i));
    }
}
