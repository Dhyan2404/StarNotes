package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.html.HTMLTableCaptionElement;

/* loaded from: classes10.dex */
public class HTMLTableCaptionElementImpl extends HTMLElementImpl implements HTMLTableCaptionElement {
    public HTMLTableCaptionElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLTableCaptionElement
    public String getAlign() {
        return getAttribute("align");
    }

    @Override // org.w3c.dom.html.HTMLTableCaptionElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }
}
