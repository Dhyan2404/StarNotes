package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.html.HTMLIsIndexElement;

/* loaded from: classes10.dex */
public class HTMLIsIndexElementImpl extends HTMLElementImpl implements HTMLIsIndexElement {
    public HTMLIsIndexElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLIsIndexElement
    public String getPrompt() {
        return getAttribute("prompt");
    }

    @Override // org.w3c.dom.html.HTMLIsIndexElement
    public void setPrompt(String str) {
        setAttribute("prompt", str);
    }
}
