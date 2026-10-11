package org.apache.html.dom;

import org.w3c.dom.html.HTMLTableCaptionElement;

/* loaded from: classes12.dex */
public class HTMLTableCaptionElementImpl extends HTMLElementImpl implements HTMLTableCaptionElement {
    private static final long serialVersionUID = 183703024771848940L;

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
