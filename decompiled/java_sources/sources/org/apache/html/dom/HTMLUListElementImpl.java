package org.apache.html.dom;

import org.w3c.dom.html.HTMLUListElement;

/* loaded from: classes12.dex */
public class HTMLUListElementImpl extends HTMLElementImpl implements HTMLUListElement {
    private static final long serialVersionUID = -3220401442015109211L;

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
