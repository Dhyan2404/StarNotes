package org.apache.wml.dom;

import androidx.core.app.C0619b;
import org.apache.wml.WMLDoElement;

/* loaded from: classes13.dex */
public class WMLDoElementImpl extends WMLElementImpl implements WMLDoElement {
    private static final long serialVersionUID = 7755861458464251322L;

    public WMLDoElementImpl(WMLDocumentImpl wMLDocumentImpl, String str) {
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

    @Override // org.apache.wml.WMLDoElement
    public String getLabel() {
        return getAttribute(C0619b.f5199k);
    }

    @Override // org.apache.wml.WMLDoElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.apache.wml.WMLDoElement
    public String getOptional() {
        return getAttribute("optional");
    }

    @Override // org.apache.wml.WMLDoElement
    public String getType() {
        return getAttribute("type");
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

    @Override // org.apache.wml.WMLDoElement
    public void setLabel(String str) {
        setAttribute(C0619b.f5199k, str);
    }

    @Override // org.apache.wml.WMLDoElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.apache.wml.WMLDoElement
    public void setOptional(String str) {
        setAttribute("optional", str);
    }

    @Override // org.apache.wml.WMLDoElement
    public void setType(String str) {
        setAttribute("type", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLAElement
    public void setXmlLang(String str) {
        setAttribute("xml:lang", str);
    }
}
