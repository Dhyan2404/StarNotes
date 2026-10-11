package org.apache.wml.dom;

import org.apache.wml.WMLSetvarElement;

/* loaded from: classes13.dex */
public class WMLSetvarElementImpl extends WMLElementImpl implements WMLSetvarElement {
    private static final long serialVersionUID = -1944519734782236471L;

    public WMLSetvarElementImpl(WMLDocumentImpl wMLDocumentImpl, String str) {
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

    @Override // org.apache.wml.WMLSetvarElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.apache.wml.WMLSetvarElement
    public String getValue() {
        return getAttribute("value");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setClassName(String str) {
        setAttribute("class", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setId(String str) {
        setAttribute("id", str);
    }

    @Override // org.apache.wml.WMLSetvarElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.apache.wml.WMLSetvarElement
    public void setValue(String str) {
        setAttribute("value", str);
    }
}
