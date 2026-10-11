package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.html.HTMLHeadingElement;

/* loaded from: classes10.dex */
public class HTMLHeadingElementImpl extends HTMLElementImpl implements HTMLHeadingElement {
    public HTMLHeadingElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLHeadingElement
    public String getAlign() {
        return getCapitalized("align");
    }

    @Override // org.w3c.dom.html.HTMLHeadingElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }
}
