package com.sun.org.apache.html.internal.dom;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import org.w3c.dom.html.HTMLBRElement;

/* loaded from: classes10.dex */
public class HTMLBRElementImpl extends HTMLElementImpl implements HTMLBRElement {
    public HTMLBRElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLBRElement
    public String getClear() {
        return capitalize(getAttribute(Constants.CLEAR_ATTRIBUTES));
    }

    @Override // org.w3c.dom.html.HTMLBRElement
    public void setClear(String str) {
        setAttribute(Constants.CLEAR_ATTRIBUTES, str);
    }
}
