package org.apache.html.dom;

import org.w3c.dom.html.HTMLParamElement;

/* loaded from: classes12.dex */
public class HTMLParamElementImpl extends HTMLElementImpl implements HTMLParamElement {
    private static final long serialVersionUID = -8513050483880341412L;

    public HTMLParamElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLParamElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.w3c.dom.html.HTMLParamElement
    public String getType() {
        return getAttribute("type");
    }

    @Override // org.w3c.dom.html.HTMLParamElement
    public String getValue() {
        return getAttribute("value");
    }

    @Override // org.w3c.dom.html.HTMLParamElement
    public String getValueType() {
        return capitalize(getAttribute("valuetype"));
    }

    @Override // org.w3c.dom.html.HTMLParamElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.w3c.dom.html.HTMLParamElement
    public void setType(String str) {
        setAttribute("type", str);
    }

    @Override // org.w3c.dom.html.HTMLParamElement
    public void setValue(String str) {
        setAttribute("value", str);
    }

    @Override // org.w3c.dom.html.HTMLParamElement
    public void setValueType(String str) {
        setAttribute("valuetype", str);
    }
}
