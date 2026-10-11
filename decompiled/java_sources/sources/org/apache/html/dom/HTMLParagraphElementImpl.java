package org.apache.html.dom;

import org.w3c.dom.html.HTMLParagraphElement;

/* loaded from: classes12.dex */
public class HTMLParagraphElementImpl extends HTMLElementImpl implements HTMLParagraphElement {
    private static final long serialVersionUID = 8075287150683866287L;

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
