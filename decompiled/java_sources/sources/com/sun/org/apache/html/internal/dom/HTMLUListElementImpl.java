package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.html.HTMLUListElement;

/* loaded from: classes10.dex */
public class HTMLUListElementImpl extends HTMLElementImpl implements HTMLUListElement {
    public HTMLUListElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLUListElement
    public boolean getCompact() {
        return getBinary("compact");
    }

    @Override // org.w3c.dom.html.HTMLUListElement
    public String getType() {
        return getAttribute("type");
    }

    @Override // org.w3c.dom.html.HTMLUListElement
    public void setCompact(boolean z) {
        setAttribute("compact", z);
    }

    @Override // org.w3c.dom.html.HTMLUListElement
    public void setType(String str) {
        setAttribute("type", str);
    }
}
