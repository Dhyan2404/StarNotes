package org.apache.html.dom;

import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import org.w3c.dom.html.HTMLBaseFontElement;

/* loaded from: classes12.dex */
public class HTMLBaseFontElementImpl extends HTMLElementImpl implements HTMLBaseFontElement {
    private static final long serialVersionUID = -3650249921091097229L;

    public HTMLBaseFontElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLBaseFontElement
    public String getColor() {
        return capitalize(getAttribute("color"));
    }

    @Override // org.w3c.dom.html.HTMLBaseFontElement
    public String getFace() {
        return capitalize(getAttribute(OptionalModuleUtils.FACE));
    }

    @Override // org.w3c.dom.html.HTMLBaseFontElement
    public String getSize() {
        return getAttribute("size");
    }

    @Override // org.w3c.dom.html.HTMLBaseFontElement
    public void setColor(String str) {
        setAttribute("color", str);
    }

    @Override // org.w3c.dom.html.HTMLBaseFontElement
    public void setFace(String str) {
        setAttribute(OptionalModuleUtils.FACE, str);
    }

    @Override // org.w3c.dom.html.HTMLBaseFontElement
    public void setSize(String str) {
        setAttribute("size", str);
    }
}
