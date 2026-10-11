package com.sun.org.apache.html.internal.dom;

import com.onyx.android.sdk.data.common.cloud.Constant;
import org.w3c.dom.Document;
import org.w3c.dom.html.HTMLFrameElement;

/* loaded from: classes10.dex */
public class HTMLFrameElementImpl extends HTMLElementImpl implements HTMLFrameElement {
    public HTMLFrameElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    public Document getContentDocument() {
        return null;
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public String getFrameBorder() {
        return getAttribute("frameborder");
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public String getLongDesc() {
        return getAttribute("longdesc");
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public String getMarginHeight() {
        return getAttribute("marginheight");
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public String getMarginWidth() {
        return getAttribute("marginwidth");
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public boolean getNoResize() {
        return getBinary("noresize");
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public String getScrolling() {
        return capitalize(getAttribute("scrolling"));
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public String getSrc() {
        return getAttribute(Constant.SRC_TAG);
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public void setFrameBorder(String str) {
        setAttribute("frameborder", str);
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public void setLongDesc(String str) {
        setAttribute("longdesc", str);
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public void setMarginHeight(String str) {
        setAttribute("marginheight", str);
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public void setMarginWidth(String str) {
        setAttribute("marginwidth", str);
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public void setNoResize(boolean z) {
        setAttribute("noresize", z);
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public void setScrolling(String str) {
        setAttribute("scrolling", str);
    }

    @Override // org.w3c.dom.html.HTMLFrameElement
    public void setSrc(String str) {
        setAttribute(Constant.SRC_TAG, str);
    }
}
