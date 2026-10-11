package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.html.HTMLMenuElement;

/* loaded from: classes10.dex */
public class HTMLMenuElementImpl extends HTMLElementImpl implements HTMLMenuElement {
    public HTMLMenuElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLMenuElement
    public boolean getCompact() {
        return getBinary("compact");
    }

    @Override // org.w3c.dom.html.HTMLMenuElement
    public void setCompact(boolean z) {
        setAttribute("compact", z);
    }
}
