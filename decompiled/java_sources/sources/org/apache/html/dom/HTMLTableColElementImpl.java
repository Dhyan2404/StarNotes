package org.apache.html.dom;

import com.sunia.HTREnginev2.gon;
import org.w3c.dom.html.HTMLTableColElement;

/* loaded from: classes12.dex */
public class HTMLTableColElementImpl extends HTMLElementImpl implements HTMLTableColElement {
    private static final long serialVersionUID = -6189626162811911792L;

    public HTMLTableColElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLTableColElement
    public String getAlign() {
        return capitalize(getAttribute("align"));
    }

    @Override // org.w3c.dom.html.HTMLTableColElement
    public String getCh() {
        String attribute = getAttribute("char");
        return (attribute == null || attribute.length() <= 1) ? attribute : attribute.substring(0, 1);
    }

    @Override // org.w3c.dom.html.HTMLTableColElement
    public String getChOff() {
        return getAttribute("charoff");
    }

    @Override // org.w3c.dom.html.HTMLTableColElement
    public int getSpan() {
        return getInteger(getAttribute(gon.f71297s));
    }

    @Override // org.w3c.dom.html.HTMLTableColElement
    public String getVAlign() {
        return capitalize(getAttribute("valign"));
    }

    @Override // org.w3c.dom.html.HTMLTableColElement
    public String getWidth() {
        return getAttribute("width");
    }

    @Override // org.w3c.dom.html.HTMLTableColElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }

    @Override // org.w3c.dom.html.HTMLTableColElement
    public void setCh(String str) {
        if (str != null && str.length() > 1) {
            str = str.substring(0, 1);
        }
        setAttribute("char", str);
    }

    @Override // org.w3c.dom.html.HTMLTableColElement
    public void setChOff(String str) {
        setAttribute("charoff", str);
    }

    @Override // org.w3c.dom.html.HTMLTableColElement
    public void setSpan(int i) {
        setAttribute(gon.f71297s, String.valueOf(i));
    }

    @Override // org.w3c.dom.html.HTMLTableColElement
    public void setVAlign(String str) {
        setAttribute("valign", str);
    }

    @Override // org.w3c.dom.html.HTMLTableColElement
    public void setWidth(String str) {
        setAttribute("width", str);
    }
}
