package org.apache.html.dom;

import org.w3c.dom.html.HTMLHRElement;

/* loaded from: classes12.dex */
public class HTMLHRElementImpl extends HTMLElementImpl implements HTMLHRElement {
    private static final long serialVersionUID = -4210053417678939270L;

    public HTMLHRElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLHRElement
    public String getAlign() {
        return capitalize(getAttribute("align"));
    }

    @Override // org.w3c.dom.html.HTMLHRElement
    public boolean getNoShade() {
        return getBinary("noshade");
    }

    @Override // org.w3c.dom.html.HTMLHRElement
    public String getSize() {
        return getAttribute("size");
    }

    @Override // org.w3c.dom.html.HTMLHRElement
    public String getWidth() {
        return getAttribute("width");
    }

    @Override // org.w3c.dom.html.HTMLHRElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }

    @Override // org.w3c.dom.html.HTMLHRElement
    public void setNoShade(boolean z) {
        setAttribute("noshade", z);
    }

    @Override // org.w3c.dom.html.HTMLHRElement
    public void setSize(String str) {
        setAttribute("size", str);
    }

    @Override // org.w3c.dom.html.HTMLHRElement
    public void setWidth(String str) {
        setAttribute("width", str);
    }
}
