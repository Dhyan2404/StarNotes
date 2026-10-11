package com.sun.org.apache.html.internal.dom;

import com.onyx.android.sdk.data.common.cloud.Constant;
import org.w3c.dom.Document;
import org.w3c.dom.html.HTMLIFrameElement;

/* loaded from: classes10.dex */
public class HTMLIFrameElementImpl extends HTMLElementImpl implements HTMLIFrameElement {
    public HTMLIFrameElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public String getAlign() {
        return capitalize(getAttribute("align"));
    }

    public Document getContentDocument() {
        return null;
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public String getFrameBorder() {
        return getAttribute("frameborder");
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public String getHeight() {
        return getAttribute("height");
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public String getLongDesc() {
        return getAttribute("longdesc");
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public String getMarginHeight() {
        return getAttribute("marginheight");
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public String getMarginWidth() {
        return getAttribute("marginwidth");
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public String getScrolling() {
        return capitalize(getAttribute("scrolling"));
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public String getSrc() {
        return getAttribute(Constant.SRC_TAG);
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public String getWidth() {
        return getAttribute("width");
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public void setFrameBorder(String str) {
        setAttribute("frameborder", str);
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public void setHeight(String str) {
        setAttribute("height", str);
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public void setLongDesc(String str) {
        setAttribute("longdesc", str);
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public void setMarginHeight(String str) {
        setAttribute("marginheight", str);
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public void setMarginWidth(String str) {
        setAttribute("marginwidth", str);
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public void setScrolling(String str) {
        setAttribute("scrolling", str);
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public void setSrc(String str) {
        setAttribute(Constant.SRC_TAG, str);
    }

    @Override // org.w3c.dom.html.HTMLIFrameElement
    public void setWidth(String str) {
        setAttribute("width", str);
    }
}
