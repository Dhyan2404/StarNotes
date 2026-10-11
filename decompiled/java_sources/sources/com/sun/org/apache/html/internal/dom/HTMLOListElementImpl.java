package com.sun.org.apache.html.internal.dom;

import com.sunia.HTREnginev2.gon;
import org.w3c.dom.html.HTMLOListElement;

/* loaded from: classes10.dex */
public class HTMLOListElementImpl extends HTMLElementImpl implements HTMLOListElement {
    public HTMLOListElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLOListElement
    public boolean getCompact() {
        return getBinary("compact");
    }

    @Override // org.w3c.dom.html.HTMLOListElement
    public int getStart() {
        return getInteger(getAttribute(gon.f71290o0));
    }

    @Override // org.w3c.dom.html.HTMLOListElement
    public String getType() {
        return getAttribute("type");
    }

    @Override // org.w3c.dom.html.HTMLOListElement
    public void setCompact(boolean z) {
        setAttribute("compact", z);
    }

    @Override // org.w3c.dom.html.HTMLOListElement
    public void setStart(int i) {
        setAttribute(gon.f71290o0, String.valueOf(i));
    }

    @Override // org.w3c.dom.html.HTMLOListElement
    public void setType(String str) {
        setAttribute("type", str);
    }
}
