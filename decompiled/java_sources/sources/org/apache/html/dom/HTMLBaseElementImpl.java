package org.apache.html.dom;

import org.w3c.dom.html.HTMLBaseElement;

/* loaded from: classes12.dex */
public class HTMLBaseElementImpl extends HTMLElementImpl implements HTMLBaseElement {
    private static final long serialVersionUID = -396648580810072153L;

    public HTMLBaseElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLBaseElement
    public String getHref() {
        return getAttribute("href");
    }

    @Override // org.w3c.dom.html.HTMLBaseElement
    public String getTarget() {
        return getAttribute("target");
    }

    @Override // org.w3c.dom.html.HTMLBaseElement
    public void setHref(String str) {
        setAttribute("href", str);
    }

    @Override // org.w3c.dom.html.HTMLBaseElement
    public void setTarget(String str) {
        setAttribute("target", str);
    }
}
