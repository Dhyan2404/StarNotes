package com.sun.org.apache.html.internal.dom;

import com.sun.org.apache.xalan.internal.templates.Constants;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.html.HTMLCollection;
import org.w3c.dom.html.HTMLElement;
import org.w3c.dom.html.HTMLOptionElement;
import org.w3c.dom.html.HTMLSelectElement;

/* loaded from: classes10.dex */
public class HTMLSelectElementImpl extends HTMLElementImpl implements HTMLSelectElement, HTMLFormControl {
    private HTMLCollection _options;

    public HTMLSelectElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public void add(HTMLElement hTMLElement, HTMLElement hTMLElement2) {
        insertBefore(hTMLElement, hTMLElement2);
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public void blur() {
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public void focus() {
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public NodeList getChildNodes() {
        return getChildNodesUnoptimized();
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public boolean getDisabled() {
        return getBinary("disabled");
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.NodeList
    public int getLength() {
        return getOptions().getLength();
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public boolean getMultiple() {
        return getBinary(Constants.ATTRVAL_MULTI);
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public HTMLCollection getOptions() {
        if (this._options == null) {
            this._options = new HTMLCollectionImpl(this, (short) 6);
        }
        return this._options;
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public int getSelectedIndex() {
        NodeList elementsByTagName = getElementsByTagName("OPTION");
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            if (((HTMLOptionElement) elementsByTagName.item(i)).getSelected()) {
                return i;
            }
        }
        return -1;
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public int getSize() {
        return getInteger(getAttribute("size"));
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public int getTabIndex() {
        return getInteger(getAttribute("tabindex"));
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public String getType() {
        return getAttribute("type");
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public String getValue() {
        return getAttribute("value");
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public void remove(int i) {
        Node item = getElementsByTagName("OPTION").item(i);
        if (item != null) {
            item.getParentNode().removeChild(item);
        }
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public void setDisabled(boolean z) {
        setAttribute("disabled", z);
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public void setMultiple(boolean z) {
        setAttribute(Constants.ATTRVAL_MULTI, z);
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public void setSelectedIndex(int i) {
        NodeList elementsByTagName = getElementsByTagName("OPTION");
        int i2 = 0;
        while (i2 < elementsByTagName.getLength()) {
            ((HTMLOptionElementImpl) elementsByTagName.item(i2)).setSelected(i2 == i);
            i2++;
        }
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public void setSize(int i) {
        setAttribute("size", String.valueOf(i));
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public void setTabIndex(int i) {
        setAttribute("tabindex", String.valueOf(i));
    }

    @Override // org.w3c.dom.html.HTMLSelectElement
    public void setValue(String str) {
        setAttribute("value", str);
    }
}
