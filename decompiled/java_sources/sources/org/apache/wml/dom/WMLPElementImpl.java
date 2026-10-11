package org.apache.wml.dom;

import com.sun.org.apache.xalan.internal.templates.Constants;
import org.apache.wml.WMLPElement;

/* loaded from: classes13.dex */
public class WMLPElementImpl extends WMLElementImpl implements WMLPElement {
    private static final long serialVersionUID = 4263257796458499960L;

    public WMLPElementImpl(WMLDocumentImpl wMLDocumentImpl, String str) {
        super(wMLDocumentImpl, str);
    }

    @Override // org.apache.wml.WMLPElement
    public String getAlign() {
        return getAttribute("align");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getClassName() {
        return getAttribute("class");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getId() {
        return getAttribute("id");
    }

    @Override // org.apache.wml.WMLPElement
    public String getMode() {
        return getAttribute(Constants.ATTRNAME_MODE);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLAElement
    public String getXmlLang() {
        return getAttribute("xml:lang");
    }

    @Override // org.apache.wml.WMLPElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setClassName(String str) {
        setAttribute("class", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setId(String str) {
        setAttribute("id", str);
    }

    @Override // org.apache.wml.WMLPElement
    public void setMode(String str) {
        setAttribute(Constants.ATTRNAME_MODE, str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLAElement
    public void setXmlLang(String str) {
        setAttribute("xml:lang", str);
    }
}
