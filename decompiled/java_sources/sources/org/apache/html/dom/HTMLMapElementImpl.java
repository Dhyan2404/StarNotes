package org.apache.html.dom;

import org.w3c.dom.Node;
import org.w3c.dom.html.HTMLCollection;
import org.w3c.dom.html.HTMLMapElement;

/* loaded from: classes12.dex */
public class HTMLMapElementImpl extends HTMLElementImpl implements HTMLMapElement {
    private static final long serialVersionUID = 7520887584251976392L;
    private HTMLCollection _areas;

    public HTMLMapElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.apache.xerces.dom.ElementImpl, org.apache.xerces.dom.ParentNode, org.apache.xerces.dom.ChildNode, org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        HTMLMapElementImpl hTMLMapElementImpl = (HTMLMapElementImpl) super.cloneNode(z);
        hTMLMapElementImpl._areas = null;
        return hTMLMapElementImpl;
    }

    @Override // org.w3c.dom.html.HTMLMapElement
    public HTMLCollection getAreas() {
        if (this._areas == null) {
            this._areas = new HTMLCollectionImpl(this, (short) -1);
        }
        return this._areas;
    }

    @Override // org.w3c.dom.html.HTMLMapElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.w3c.dom.html.HTMLMapElement
    public void setName(String str) {
        setAttribute("name", str);
    }
}
