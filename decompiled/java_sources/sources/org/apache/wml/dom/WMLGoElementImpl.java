package org.apache.wml.dom;

import org.apache.wml.WMLGoElement;

/* loaded from: classes13.dex */
public class WMLGoElementImpl extends WMLElementImpl implements WMLGoElement {
    private static final long serialVersionUID = -2052250142899797905L;

    public WMLGoElementImpl(WMLDocumentImpl wMLDocumentImpl, String str) {
        super(wMLDocumentImpl, str);
    }

    @Override // org.apache.wml.WMLGoElement
    public String getAcceptCharset() {
        return getAttribute("accept-charset");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getClassName() {
        return getAttribute("class");
    }

    @Override // org.apache.wml.WMLGoElement
    public String getHref() {
        return getAttribute("href");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getId() {
        return getAttribute("id");
    }

    @Override // org.apache.wml.WMLGoElement
    public String getMethod() {
        return getAttribute("method");
    }

    @Override // org.apache.wml.WMLGoElement
    public String getSendreferer() {
        return getAttribute("sendreferer");
    }

    @Override // org.apache.wml.WMLGoElement
    public void setAcceptCharset(String str) {
        setAttribute("accept-charset", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setClassName(String str) {
        setAttribute("class", str);
    }

    @Override // org.apache.wml.WMLGoElement
    public void setHref(String str) {
        setAttribute("href", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setId(String str) {
        setAttribute("id", str);
    }

    @Override // org.apache.wml.WMLGoElement
    public void setMethod(String str) {
        setAttribute("method", str);
    }

    @Override // org.apache.wml.WMLGoElement
    public void setSendreferer(String str) {
        setAttribute("sendreferer", str);
    }
}
