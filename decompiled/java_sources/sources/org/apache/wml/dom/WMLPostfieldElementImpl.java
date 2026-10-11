package org.apache.wml.dom;

import org.apache.wml.WMLPostfieldElement;

/* loaded from: classes13.dex */
public class WMLPostfieldElementImpl extends WMLElementImpl implements WMLPostfieldElement {
    private static final long serialVersionUID = -1169432003991642980L;

    public WMLPostfieldElementImpl(WMLDocumentImpl wMLDocumentImpl, String str) {
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

    @Override // org.apache.wml.WMLPostfieldElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.apache.wml.WMLPostfieldElement
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

    @Override // org.apache.wml.WMLPostfieldElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.apache.wml.WMLPostfieldElement
    public void setValue(String str) {
        setAttribute("value", str);
    }
}
