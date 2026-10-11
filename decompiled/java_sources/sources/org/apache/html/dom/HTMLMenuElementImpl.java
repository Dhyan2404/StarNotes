package org.apache.html.dom;

import org.w3c.dom.html.HTMLMenuElement;

/* loaded from: classes12.dex */
public class HTMLMenuElementImpl extends HTMLElementImpl implements HTMLMenuElement {
    private static final long serialVersionUID = -1489696654903916901L;

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
