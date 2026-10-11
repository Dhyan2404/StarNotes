package org.apache.html.dom;

import androidx.core.app.C0619b;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;
import org.w3c.dom.html.HTMLElement;
import org.w3c.dom.html.HTMLOptionElement;
import org.w3c.dom.html.HTMLSelectElement;

/* loaded from: classes12.dex */
public class HTMLOptionElementImpl extends HTMLElementImpl implements HTMLOptionElement {
    private static final long serialVersionUID = -4486774554137530907L;

    public HTMLOptionElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLOptionElement
    public boolean getDefaultSelected() {
        return getBinary("default-selected");
    }

    @Override // org.w3c.dom.html.HTMLOptionElement
    public boolean getDisabled() {
        return getBinary("disabled");
    }

    @Override // org.w3c.dom.html.HTMLOptionElement
    public int getIndex() {
        Node parentNode = getParentNode();
        while (parentNode != null && !(parentNode instanceof HTMLSelectElement)) {
            parentNode = parentNode.getParentNode();
        }
        if (parentNode == null) {
            return -1;
        }
        NodeList elementsByTagName = ((HTMLElement) parentNode).getElementsByTagName("OPTION");
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            if (elementsByTagName.item(i) == this) {
                return i;
            }
        }
        return -1;
    }

    @Override // org.w3c.dom.html.HTMLOptionElement
    public String getLabel() {
        return capitalize(getAttribute(C0619b.f5199k));
    }

    @Override // org.w3c.dom.html.HTMLOptionElement
    public boolean getSelected() {
        return getBinary("selected");
    }

    @Override // org.w3c.dom.html.HTMLOptionElement
    public String getText() {
        StringBuffer stringBuffer = new StringBuffer();
        for (Node firstChild = getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild instanceof Text) {
                stringBuffer.append(((Text) firstChild).getData());
            }
        }
        return stringBuffer.toString();
    }

    @Override // org.w3c.dom.html.HTMLOptionElement
    public String getValue() {
        return getAttribute("value");
    }

    @Override // org.w3c.dom.html.HTMLOptionElement
    public void setDefaultSelected(boolean z) {
        setAttribute("default-selected", z);
    }

    @Override // org.w3c.dom.html.HTMLOptionElement
    public void setDisabled(boolean z) {
        setAttribute("disabled", z);
    }

    @Override // org.w3c.dom.html.HTMLOptionElement
    public void setIndex(int i) {
        Node parentNode = getParentNode();
        while (parentNode != null && !(parentNode instanceof HTMLSelectElement)) {
            parentNode = parentNode.getParentNode();
        }
        if (parentNode != null) {
            NodeList elementsByTagName = ((HTMLElement) parentNode).getElementsByTagName("OPTION");
            if (elementsByTagName.item(i) != this) {
                getParentNode().removeChild(this);
                Node item = elementsByTagName.item(i);
                item.getParentNode().insertBefore(this, item);
            }
        }
    }

    @Override // org.w3c.dom.html.HTMLOptionElement
    public void setLabel(String str) {
        setAttribute(C0619b.f5199k, str);
    }

    public void setSelected(boolean z) {
        setAttribute("selected", z);
    }

    public void setText(String str) {
        Node firstChild = getFirstChild();
        while (firstChild != null) {
            Node nextSibling = firstChild.getNextSibling();
            removeChild(firstChild);
            firstChild = nextSibling;
        }
        insertBefore(getOwnerDocument().createTextNode(str), getFirstChild());
    }

    @Override // org.w3c.dom.html.HTMLOptionElement
    public void setValue(String str) {
        setAttribute("value", str);
    }
}
