package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.html.HTMLDListElement;

/* loaded from: classes10.dex */
public class HTMLDListElementImpl extends HTMLElementImpl implements HTMLDListElement {
    public HTMLDListElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLDListElement
    public boolean getCompact() {
        return getBinary("compact");
    }

    @Override // org.w3c.dom.html.HTMLDListElement
    public void setCompact(boolean z) {
        setAttribute("compact", z);
    }
}
