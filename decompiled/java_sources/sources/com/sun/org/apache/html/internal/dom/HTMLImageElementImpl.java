package com.sun.org.apache.html.internal.dom;

import com.onyx.android.sdk.data.common.cloud.Constant;
import org.w3c.dom.html.HTMLImageElement;

/* loaded from: classes10.dex */
public class HTMLImageElementImpl extends HTMLElementImpl implements HTMLImageElement {
    public HTMLImageElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public String getAlign() {
        return capitalize(getAttribute("align"));
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public String getAlt() {
        return getAttribute("alt");
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public String getBorder() {
        return getAttribute("border");
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public String getHeight() {
        return getAttribute("height");
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public String getHspace() {
        return getAttribute("hspace");
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public boolean getIsMap() {
        return getBinary("ismap");
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public String getLongDesc() {
        return getAttribute("longdesc");
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public String getLowSrc() {
        return getAttribute("lowsrc");
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public String getSrc() {
        return getAttribute(Constant.SRC_TAG);
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public String getUseMap() {
        return getAttribute("useMap");
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public String getVspace() {
        return getAttribute("vspace");
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public String getWidth() {
        return getAttribute("width");
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public void setAlt(String str) {
        setAttribute("alt", str);
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public void setBorder(String str) {
        setAttribute("border", str);
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public void setHeight(String str) {
        setAttribute("height", str);
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public void setHspace(String str) {
        setAttribute("hspace", str);
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public void setIsMap(boolean z) {
        setAttribute("ismap", z);
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public void setLongDesc(String str) {
        setAttribute("longdesc", str);
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public void setLowSrc(String str) {
        setAttribute("lowsrc", str);
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public void setSrc(String str) {
        setAttribute(Constant.SRC_TAG, str);
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public void setUseMap(String str) {
        setAttribute("useMap", str);
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public void setVspace(String str) {
        setAttribute("vspace", str);
    }

    @Override // org.w3c.dom.html.HTMLImageElement
    public void setWidth(String str) {
        setAttribute("width", str);
    }
}
