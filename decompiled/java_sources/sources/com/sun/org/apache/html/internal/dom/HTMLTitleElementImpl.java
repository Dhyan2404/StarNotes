package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.Node;
import org.w3c.dom.Text;
import org.w3c.dom.html.HTMLTitleElement;

/* loaded from: classes10.dex */
public class HTMLTitleElementImpl extends HTMLElementImpl implements HTMLTitleElement {
    public HTMLTitleElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLTitleElement
    public String getText() {
        String str = "";
        for (Node firstChild = getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild instanceof Text) {
                str = str + ((Text) firstChild).getData();
            }
        }
        return str;
    }

    @Override // org.w3c.dom.html.HTMLTitleElement
    public void setText(String str) {
        Node firstChild = getFirstChild();
        while (firstChild != null) {
            Node nextSibling = firstChild.getNextSibling();
            removeChild(firstChild);
            firstChild = nextSibling;
        }
        insertBefore(getOwnerDocument().createTextNode(str), getFirstChild());
    }
}
