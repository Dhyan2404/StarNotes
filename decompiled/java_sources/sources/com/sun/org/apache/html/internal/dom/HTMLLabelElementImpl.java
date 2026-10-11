package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.html.HTMLLabelElement;

/* loaded from: classes10.dex */
public class HTMLLabelElementImpl extends HTMLElementImpl implements HTMLLabelElement, HTMLFormControl {
    public HTMLLabelElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLLabelElement
    public String getAccessKey() {
        String attribute = getAttribute("accesskey");
        return (attribute == null || attribute.length() <= 1) ? attribute : attribute.substring(0, 1);
    }

    @Override // org.w3c.dom.html.HTMLLabelElement
    public String getHtmlFor() {
        return getAttribute("for");
    }

    @Override // org.w3c.dom.html.HTMLLabelElement
    public void setAccessKey(String str) {
        if (str != null && str.length() > 1) {
            str = str.substring(0, 1);
        }
        setAttribute("accesskey", str);
    }

    @Override // org.w3c.dom.html.HTMLLabelElement
    public void setHtmlFor(String str) {
        setAttribute("for", str);
    }
}
