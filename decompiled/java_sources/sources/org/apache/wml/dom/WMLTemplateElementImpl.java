package org.apache.wml.dom;

import org.apache.wml.WMLTemplateElement;

/* loaded from: classes13.dex */
public class WMLTemplateElementImpl extends WMLElementImpl implements WMLTemplateElement {
    private static final long serialVersionUID = 4231732841621131049L;

    public WMLTemplateElementImpl(WMLDocumentImpl wMLDocumentImpl, String str) {
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

    @Override // org.apache.wml.WMLTemplateElement
    public String getOnEnterBackward() {
        return getAttribute("onenterbackward");
    }

    @Override // org.apache.wml.WMLTemplateElement
    public String getOnEnterForward() {
        return getAttribute("onenterforward");
    }

    @Override // org.apache.wml.WMLTemplateElement
    public String getOnTimer() {
        return getAttribute("ontimer");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setClassName(String str) {
        setAttribute("class", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setId(String str) {
        setAttribute("id", str);
    }

    @Override // org.apache.wml.WMLTemplateElement
    public void setOnEnterBackward(String str) {
        setAttribute("onenterbackward", str);
    }

    @Override // org.apache.wml.WMLTemplateElement
    public void setOnEnterForward(String str) {
        setAttribute("onenterforward", str);
    }

    @Override // org.apache.wml.WMLTemplateElement
    public void setOnTimer(String str) {
        setAttribute("ontimer", str);
    }
}
