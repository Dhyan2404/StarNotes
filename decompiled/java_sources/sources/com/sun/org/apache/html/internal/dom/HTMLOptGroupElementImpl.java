package com.sun.org.apache.html.internal.dom;

import androidx.core.app.C0619b;
import org.w3c.dom.html.HTMLOptGroupElement;

/* loaded from: classes10.dex */
public class HTMLOptGroupElementImpl extends HTMLElementImpl implements HTMLOptGroupElement {
    public HTMLOptGroupElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLOptGroupElement
    public boolean getDisabled() {
        return getBinary("disabled");
    }

    @Override // org.w3c.dom.html.HTMLOptGroupElement
    public String getLabel() {
        return capitalize(getAttribute(C0619b.f5199k));
    }

    @Override // org.w3c.dom.html.HTMLOptGroupElement
    public void setDisabled(boolean z) {
        setAttribute("disabled", z);
    }

    @Override // org.w3c.dom.html.HTMLOptGroupElement
    public void setLabel(String str) {
        setAttribute(C0619b.f5199k, str);
    }
}
