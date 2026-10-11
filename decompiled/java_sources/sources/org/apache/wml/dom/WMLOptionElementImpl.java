package org.apache.wml.dom;

import org.apache.wml.WMLOptionElement;

/* loaded from: classes13.dex */
public class WMLOptionElementImpl extends WMLElementImpl implements WMLOptionElement {
    private static final long serialVersionUID = -3432299264888771937L;

    public WMLOptionElementImpl(WMLDocumentImpl wMLDocumentImpl, String str) {
        super(wMLDocumentImpl, str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getClassName() {
        return getAttribute("class");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getId() {
        return getAttribute("id");
    }

    @Override // org.apache.wml.WMLOptionElement
    public String getOnPick() {
        return getAttribute("onpick");
    }

    @Override // org.apache.wml.WMLOptionElement
    public String getTitle() {
        return getAttribute("title");
    }

    @Override // org.apache.wml.WMLOptionElement
    public String getValue() {
        return getAttribute("value");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLAElement
    public String getXmlLang() {
        return getAttribute("xml:lang");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setClassName(String str) {
        setAttribute("class", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setId(String str) {
        setAttribute("id", str);
    }

    @Override // org.apache.wml.WMLOptionElement
    public void setOnPick(String str) {
        setAttribute("onpick", str);
    }

    @Override // org.apache.wml.WMLOptionElement
    public void setTitle(String str) {
        setAttribute("title", str);
    }

    @Override // org.apache.wml.WMLOptionElement
    public void setValue(String str) {
        setAttribute("value", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLAElement
    public void setXmlLang(String str) {
        setAttribute("xml:lang", str);
    }
}
