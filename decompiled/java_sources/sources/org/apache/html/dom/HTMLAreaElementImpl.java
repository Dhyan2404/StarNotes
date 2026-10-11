package org.apache.html.dom;

import org.w3c.dom.html.HTMLAreaElement;

/* loaded from: classes12.dex */
public class HTMLAreaElementImpl extends HTMLElementImpl implements HTMLAreaElement {
    private static final long serialVersionUID = 7164004431531608995L;

    public HTMLAreaElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public String getAccessKey() {
        String attribute = getAttribute("accesskey");
        return (attribute == null || attribute.length() <= 1) ? attribute : attribute.substring(0, 1);
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public String getAlt() {
        return getAttribute("alt");
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public String getCoords() {
        return getAttribute("coords");
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public String getHref() {
        return getAttribute("href");
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public boolean getNoHref() {
        return getBinary("nohref");
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public String getShape() {
        return capitalize(getAttribute("shape"));
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public int getTabIndex() {
        return getInteger(getAttribute("tabindex"));
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public String getTarget() {
        return getAttribute("target");
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public void setAccessKey(String str) {
        if (str != null && str.length() > 1) {
            str = str.substring(0, 1);
        }
        setAttribute("accesskey", str);
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public void setAlt(String str) {
        setAttribute("alt", str);
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public void setCoords(String str) {
        setAttribute("coords", str);
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public void setHref(String str) {
        setAttribute("href", str);
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public void setNoHref(boolean z) {
        setAttribute("nohref", z);
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public void setShape(String str) {
        setAttribute("shape", str);
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public void setTabIndex(int i) {
        setAttribute("tabindex", String.valueOf(i));
    }

    @Override // org.w3c.dom.html.HTMLAreaElement
    public void setTarget(String str) {
        setAttribute("target", str);
    }
}
