package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.html.HTMLParagraphElement;

/* loaded from: classes10.dex */
public class HTMLParagraphElementImpl extends HTMLElementImpl implements HTMLParagraphElement {
    public HTMLParagraphElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLParagraphElement
    public String getAlign() {
        return getAttribute("align");
    }

    @Override // org.w3c.dom.html.HTMLParagraphElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }
}
