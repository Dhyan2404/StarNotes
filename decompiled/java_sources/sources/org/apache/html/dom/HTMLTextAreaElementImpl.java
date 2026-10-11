package org.apache.html.dom;

import org.w3c.dom.html.HTMLTextAreaElement;

/* loaded from: classes12.dex */
public class HTMLTextAreaElementImpl extends HTMLElementImpl implements HTMLTextAreaElement, HTMLFormControl {
    private static final long serialVersionUID = -6737778308542678104L;

    public HTMLTextAreaElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public void blur() {
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public void focus() {
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public String getAccessKey() {
        String attribute = getAttribute("accesskey");
        return (attribute == null || attribute.length() <= 1) ? attribute : attribute.substring(0, 1);
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public int getCols() {
        return getInteger(getAttribute("cols"));
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public String getDefaultValue() {
        return getAttribute("default-value");
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public boolean getDisabled() {
        return getBinary("disabled");
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.html.HTMLInputElement
    public boolean getReadOnly() {
        return getBinary("readonly");
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public int getRows() {
        return getInteger(getAttribute("rows"));
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public int getTabIndex() {
        return getInteger(getAttribute("tabindex"));
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public String getType() {
        return getAttribute("type");
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public String getValue() {
        return getAttribute("value");
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public void select() {
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public void setAccessKey(String str) {
        if (str != null && str.length() > 1) {
            str = str.substring(0, 1);
        }
        setAttribute("accesskey", str);
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public void setCols(int i) {
        setAttribute("cols", String.valueOf(i));
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public void setDefaultValue(String str) {
        setAttribute("default-value", str);
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public void setDisabled(boolean z) {
        setAttribute("disabled", z);
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public void setReadOnly(boolean z) {
        setAttribute("readonly", z);
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public void setRows(int i) {
        setAttribute("rows", String.valueOf(i));
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public void setTabIndex(int i) {
        setAttribute("tabindex", String.valueOf(i));
    }

    @Override // org.w3c.dom.html.HTMLTextAreaElement
    public void setValue(String str) {
        setAttribute("value", str);
    }
}
