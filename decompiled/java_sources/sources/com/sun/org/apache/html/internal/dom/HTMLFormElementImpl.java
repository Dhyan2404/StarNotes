package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.NodeList;
import org.w3c.dom.html.HTMLCollection;
import org.w3c.dom.html.HTMLFormElement;

/* loaded from: classes10.dex */
public class HTMLFormElementImpl extends HTMLElementImpl implements HTMLFormElement {
    private HTMLCollectionImpl _elements;

    public HTMLFormElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLFormElement
    public String getAcceptCharset() {
        return getAttribute("accept-charset");
    }

    @Override // org.w3c.dom.html.HTMLFormElement
    public String getAction() {
        return getAttribute("action");
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public NodeList getChildNodes() {
        return getChildNodesUnoptimized();
    }

    @Override // org.w3c.dom.html.HTMLFormElement
    public HTMLCollection getElements() {
        if (this._elements == null) {
            this._elements = new HTMLCollectionImpl(this, (short) 8);
        }
        return this._elements;
    }

    @Override // org.w3c.dom.html.HTMLFormElement
    public String getEnctype() {
        return getAttribute("enctype");
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.NodeList
    public int getLength() {
        return getElements().getLength();
    }

    @Override // org.w3c.dom.html.HTMLFormElement
    public String getMethod() {
        return capitalize(getAttribute("method"));
    }

    @Override // org.w3c.dom.html.HTMLFormElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.w3c.dom.html.HTMLFormElement
    public String getTarget() {
        return getAttribute("target");
    }

    @Override // org.w3c.dom.html.HTMLFormElement
    public void reset() {
    }

    @Override // org.w3c.dom.html.HTMLFormElement
    public void setAcceptCharset(String str) {
        setAttribute("accept-charset", str);
    }

    @Override // org.w3c.dom.html.HTMLFormElement
    public void setAction(String str) {
        setAttribute("action", str);
    }

    @Override // org.w3c.dom.html.HTMLFormElement
    public void setEnctype(String str) {
        setAttribute("enctype", str);
    }

    @Override // org.w3c.dom.html.HTMLFormElement
    public void setMethod(String str) {
        setAttribute("method", str);
    }

    @Override // org.w3c.dom.html.HTMLFormElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.w3c.dom.html.HTMLFormElement
    public void setTarget(String str) {
        setAttribute("target", str);
    }

    @Override // org.w3c.dom.html.HTMLFormElement
    public void submit() {
    }
}
