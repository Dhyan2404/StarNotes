package org.apache.wml.dom;

import org.apache.wml.WMLCardElement;

/* loaded from: classes13.dex */
public class WMLCardElementImpl extends WMLElementImpl implements WMLCardElement {
    private static final long serialVersionUID = -3571126568344328924L;

    public WMLCardElementImpl(WMLDocumentImpl wMLDocumentImpl, String str) {
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

    @Override // org.apache.wml.WMLCardElement
    public boolean getNewContext() {
        return getAttribute("newcontext", false);
    }

    @Override // org.apache.wml.WMLCardElement
    public String getOnEnterBackward() {
        return getAttribute("onenterbackward");
    }

    @Override // org.apache.wml.WMLCardElement
    public String getOnEnterForward() {
        return getAttribute("onenterforward");
    }

    @Override // org.apache.wml.WMLCardElement
    public String getOnTimer() {
        return getAttribute("ontimer");
    }

    @Override // org.apache.wml.WMLCardElement
    public boolean getOrdered() {
        return getAttribute("ordered", true);
    }

    @Override // org.apache.wml.WMLCardElement
    public String getTitle() {
        return getAttribute("title");
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

    @Override // org.apache.wml.WMLCardElement
    public void setNewContext(boolean z) {
        setAttribute("newcontext", z);
    }

    @Override // org.apache.wml.WMLCardElement
    public void setOnEnterBackward(String str) {
        setAttribute("onenterbackward", str);
    }

    @Override // org.apache.wml.WMLCardElement
    public void setOnEnterForward(String str) {
        setAttribute("onenterforward", str);
    }

    @Override // org.apache.wml.WMLCardElement
    public void setOnTimer(String str) {
        setAttribute("ontimer", str);
    }

    @Override // org.apache.wml.WMLCardElement
    public void setOrdered(boolean z) {
        setAttribute("ordered", z);
    }

    @Override // org.apache.wml.WMLCardElement
    public void setTitle(String str) {
        setAttribute("title", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLAElement
    public void setXmlLang(String str) {
        setAttribute("xml:lang", str);
    }
}
