package org.apache.html.dom;

import org.w3c.dom.html.HTMLAnchorElement;

/* loaded from: classes12.dex */
public class HTMLAnchorElementImpl extends HTMLElementImpl implements HTMLAnchorElement {
    private static final long serialVersionUID = -140558580924061847L;

    public HTMLAnchorElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public void blur() {
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public void focus() {
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public String getAccessKey() {
        String attribute = getAttribute("accesskey");
        return (attribute == null || attribute.length() <= 1) ? attribute : attribute.substring(0, 1);
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public String getCharset() {
        return getAttribute("charset");
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public String getCoords() {
        return getAttribute("coords");
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public String getHref() {
        return getAttribute("href");
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public String getHreflang() {
        return getAttribute("hreflang");
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public String getRel() {
        return getAttribute("rel");
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public String getRev() {
        return getAttribute("rev");
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public String getShape() {
        return capitalize(getAttribute("shape"));
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public int getTabIndex() {
        return getInteger(getAttribute("tabindex"));
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public String getTarget() {
        return getAttribute("target");
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public String getType() {
        return getAttribute("type");
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public void setAccessKey(String str) {
        if (str != null && str.length() > 1) {
            str = str.substring(0, 1);
        }
        setAttribute("accesskey", str);
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public void setCharset(String str) {
        setAttribute("charset", str);
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public void setCoords(String str) {
        setAttribute("coords", str);
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public void setHref(String str) {
        setAttribute("href", str);
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public void setHreflang(String str) {
        setAttribute("hreflang", str);
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public void setRel(String str) {
        setAttribute("rel", str);
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public void setRev(String str) {
        setAttribute("rev", str);
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public void setShape(String str) {
        setAttribute("shape", str);
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public void setTabIndex(int i) {
        setAttribute("tabindex", String.valueOf(i));
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public void setTarget(String str) {
        setAttribute("target", str);
    }

    @Override // org.w3c.dom.html.HTMLAnchorElement
    public void setType(String str) {
        setAttribute("type", str);
    }
}
