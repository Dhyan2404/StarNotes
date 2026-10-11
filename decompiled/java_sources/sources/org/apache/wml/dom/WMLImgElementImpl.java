package org.apache.wml.dom;

import com.onyx.android.sdk.data.common.cloud.Constant;
import org.apache.wml.WMLImgElement;

/* loaded from: classes13.dex */
public class WMLImgElementImpl extends WMLElementImpl implements WMLImgElement {
    private static final long serialVersionUID = -500092034867051550L;

    public WMLImgElementImpl(WMLDocumentImpl wMLDocumentImpl, String str) {
        super(wMLDocumentImpl, str);
    }

    @Override // org.apache.wml.WMLImgElement
    public String getAlign() {
        return getAttribute("align");
    }

    @Override // org.apache.wml.WMLImgElement
    public String getAlt() {
        return getAttribute("alt");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getClassName() {
        return getAttribute("class");
    }

    @Override // org.apache.wml.WMLImgElement
    public String getHeight() {
        return getAttribute("height");
    }

    @Override // org.apache.wml.WMLImgElement
    public String getHspace() {
        return getAttribute("hspace");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getId() {
        return getAttribute("id");
    }

    @Override // org.apache.wml.WMLImgElement
    public String getLocalSrc() {
        return getAttribute("localsrc");
    }

    @Override // org.apache.wml.WMLImgElement
    public String getSrc() {
        return getAttribute(Constant.SRC_TAG);
    }

    @Override // org.apache.wml.WMLImgElement
    public String getVspace() {
        return getAttribute("vspace");
    }

    @Override // org.apache.wml.WMLImgElement
    public String getWidth() {
        return getAttribute("width");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLAElement
    public String getXmlLang() {
        return getAttribute("xml:lang");
    }

    @Override // org.apache.wml.WMLImgElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }

    @Override // org.apache.wml.WMLImgElement
    public void setAlt(String str) {
        setAttribute("alt", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setClassName(String str) {
        setAttribute("class", str);
    }

    @Override // org.apache.wml.WMLImgElement
    public void setHeight(String str) {
        setAttribute("height", str);
    }

    @Override // org.apache.wml.WMLImgElement
    public void setHspace(String str) {
        setAttribute("hspace", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setId(String str) {
        setAttribute("id", str);
    }

    @Override // org.apache.wml.WMLImgElement
    public void setLocalSrc(String str) {
        setAttribute("localsrc", str);
    }

    @Override // org.apache.wml.WMLImgElement
    public void setSrc(String str) {
        setAttribute(Constant.SRC_TAG, str);
    }

    @Override // org.apache.wml.WMLImgElement
    public void setVspace(String str) {
        setAttribute("vspace", str);
    }

    @Override // org.apache.wml.WMLImgElement
    public void setWidth(String str) {
        setAttribute("width", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLAElement
    public void setXmlLang(String str) {
        setAttribute("xml:lang", str);
    }
}
