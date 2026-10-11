package org.apache.html.dom;

import org.w3c.dom.html.HTMLHeadingElement;

/* loaded from: classes12.dex */
public class HTMLHeadingElementImpl extends HTMLElementImpl implements HTMLHeadingElement {
    private static final long serialVersionUID = 6605827989383069095L;

    public HTMLHeadingElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLHeadingElement
    public String getAlign() {
        return getCapitalized("align");
    }

    @Override // org.w3c.dom.html.HTMLHeadingElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }
}
