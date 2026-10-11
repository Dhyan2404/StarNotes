package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.html.HTMLCollection;
import org.w3c.dom.html.HTMLMapElement;

/* loaded from: classes10.dex */
public class HTMLMapElementImpl extends HTMLElementImpl implements HTMLMapElement {
    private HTMLCollection _areas;

    public HTMLMapElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLMapElement
    public HTMLCollection getAreas() {
        if (this._areas == null) {
            this._areas = new HTMLCollectionImpl(this, (short) -1);
        }
        return this._areas;
    }

    @Override // org.w3c.dom.html.HTMLMapElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.w3c.dom.html.HTMLMapElement
    public void setName(String str) {
        setAttribute("name", str);
    }
}
