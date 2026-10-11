package org.apache.html.dom;

import org.w3c.dom.html.HTMLFrameSetElement;

/* loaded from: classes12.dex */
public class HTMLFrameSetElementImpl extends HTMLElementImpl implements HTMLFrameSetElement {
    private static final long serialVersionUID = 8403143821972586708L;

    public HTMLFrameSetElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLFrameSetElement
    public String getCols() {
        return getAttribute("cols");
    }

    @Override // org.w3c.dom.html.HTMLFrameSetElement
    public String getRows() {
        return getAttribute("rows");
    }

    @Override // org.w3c.dom.html.HTMLFrameSetElement
    public void setCols(String str) {
        setAttribute("cols", str);
    }

    @Override // org.w3c.dom.html.HTMLFrameSetElement
    public void setRows(String str) {
        setAttribute("rows", str);
    }
}
