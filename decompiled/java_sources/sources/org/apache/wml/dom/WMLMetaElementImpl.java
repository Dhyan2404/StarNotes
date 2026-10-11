package org.apache.wml.dom;

import org.apache.wml.WMLMetaElement;

/* loaded from: classes13.dex */
public class WMLMetaElementImpl extends WMLElementImpl implements WMLMetaElement {
    private static final long serialVersionUID = -2791663042188681846L;

    public WMLMetaElementImpl(WMLDocumentImpl wMLDocumentImpl, String str) {
        super(wMLDocumentImpl, str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getClassName() {
        return getAttribute("class");
    }

    @Override // org.apache.wml.WMLMetaElement
    public String getContent() {
        return getAttribute("content");
    }

    @Override // org.apache.wml.WMLMetaElement
    public boolean getForua() {
        return getAttribute("forua", false);
    }

    @Override // org.apache.wml.WMLMetaElement
    public String getHttpEquiv() {
        return getAttribute("http-equiv");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getId() {
        return getAttribute("id");
    }

    @Override // org.apache.wml.WMLMetaElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.apache.wml.WMLMetaElement
    public String getScheme() {
        return getAttribute("scheme");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setClassName(String str) {
        setAttribute("class", str);
    }

    @Override // org.apache.wml.WMLMetaElement
    public void setContent(String str) {
        setAttribute("content", str);
    }

    @Override // org.apache.wml.WMLMetaElement
    public void setForua(boolean z) {
        setAttribute("forua", z);
    }

    @Override // org.apache.wml.WMLMetaElement
    public void setHttpEquiv(String str) {
        setAttribute("http-equiv", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setId(String str) {
        setAttribute("id", str);
    }

    @Override // org.apache.wml.WMLMetaElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.apache.wml.WMLMetaElement
    public void setScheme(String str) {
        setAttribute("scheme", str);
    }
}
