package org.apache.html.dom;

import org.w3c.dom.html.HTMLPreElement;

/* loaded from: classes12.dex */
public class HTMLPreElementImpl extends HTMLElementImpl implements HTMLPreElement {
    private static final long serialVersionUID = -4195360849946217644L;

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
