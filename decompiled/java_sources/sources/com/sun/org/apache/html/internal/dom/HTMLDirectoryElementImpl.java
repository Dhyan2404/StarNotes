package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.html.HTMLDirectoryElement;

/* loaded from: classes10.dex */
public class HTMLDirectoryElementImpl extends HTMLElementImpl implements HTMLDirectoryElement {
    public HTMLDirectoryElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLDirectoryElement
    public boolean getCompact() {
        return getBinary("compact");
    }

    @Override // org.w3c.dom.html.HTMLDirectoryElement
    public void setCompact(boolean z) {
        setAttribute("compact", z);
    }
}
