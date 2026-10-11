package org.apache.html.dom;

import org.w3c.dom.html.HTMLLegendElement;

/* loaded from: classes12.dex */
public class HTMLLegendElementImpl extends HTMLElementImpl implements HTMLLegendElement {
    private static final long serialVersionUID = -621849164029630762L;

    public HTMLLegendElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLLegendElement
    public String getAccessKey() {
        String attribute = getAttribute("accesskey");
        return (attribute == null || attribute.length() <= 1) ? attribute : attribute.substring(0, 1);
    }

    @Override // org.w3c.dom.html.HTMLLegendElement
    public String getAlign() {
        return getAttribute("align");
    }

    @Override // org.w3c.dom.html.HTMLLegendElement
    public void setAccessKey(String str) {
        if (str != null && str.length() > 1) {
            str = str.substring(0, 1);
        }
        setAttribute("accesskey", str);
    }

    @Override // org.w3c.dom.html.HTMLLegendElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }
}
