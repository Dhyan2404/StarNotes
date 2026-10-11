package org.apache.wml.dom;

import org.apache.wml.WMLTimerElement;

/* loaded from: classes13.dex */
public class WMLTimerElementImpl extends WMLElementImpl implements WMLTimerElement {
    private static final long serialVersionUID = 9055622169756832726L;

    public WMLTimerElementImpl(WMLDocumentImpl wMLDocumentImpl, String str) {
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

    @Override // org.apache.wml.WMLTimerElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.apache.wml.WMLTimerElement
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

    @Override // org.apache.wml.WMLTimerElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.apache.wml.WMLTimerElement
    public void setValue(String str) {
        setAttribute("value", str);
    }
}
