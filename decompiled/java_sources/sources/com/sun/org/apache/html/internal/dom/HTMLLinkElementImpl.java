package com.sun.org.apache.html.internal.dom;

import com.caverock.androidsvg.SVGParser;
import org.w3c.dom.html.HTMLLinkElement;

/* loaded from: classes10.dex */
public class HTMLLinkElementImpl extends HTMLElementImpl implements HTMLLinkElement {
    public HTMLLinkElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public String getCharset() {
        return getAttribute("charset");
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public boolean getDisabled() {
        return getBinary("disabled");
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public String getHref() {
        return getAttribute("href");
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public String getHreflang() {
        return getAttribute("hreflang");
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public String getMedia() {
        return getAttribute(SVGParser.f16046r);
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public String getRel() {
        return getAttribute("rel");
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public String getRev() {
        return getAttribute("rev");
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public String getTarget() {
        return getAttribute("target");
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public String getType() {
        return getAttribute("type");
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public void setCharset(String str) {
        setAttribute("charset", str);
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public void setDisabled(boolean z) {
        setAttribute("disabled", z);
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public void setHref(String str) {
        setAttribute("href", str);
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public void setHreflang(String str) {
        setAttribute("hreflang", str);
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public void setMedia(String str) {
        setAttribute(SVGParser.f16046r, str);
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public void setRel(String str) {
        setAttribute("rel", str);
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public void setRev(String str) {
        setAttribute("rev", str);
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public void setTarget(String str) {
        setAttribute("target", str);
    }

    @Override // org.w3c.dom.html.HTMLLinkElement
    public void setType(String str) {
        setAttribute("type", str);
    }
}
