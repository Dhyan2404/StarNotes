package org.apache.html.dom;

import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import org.w3c.dom.html.HTMLFontElement;

/* loaded from: classes12.dex */
public class HTMLFontElementImpl extends HTMLElementImpl implements HTMLFontElement {
    private static final long serialVersionUID = -415914342045846318L;

    public HTMLFontElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLFontElement
    public String getColor() {
        return capitalize(getAttribute("color"));
    }

    @Override // org.w3c.dom.html.HTMLFontElement
    public String getFace() {
        return capitalize(getAttribute(OptionalModuleUtils.FACE));
    }

    @Override // org.w3c.dom.html.HTMLFontElement
    public String getSize() {
        return getAttribute("size");
    }

    @Override // org.w3c.dom.html.HTMLFontElement
    public void setColor(String str) {
        setAttribute("color", str);
    }

    @Override // org.w3c.dom.html.HTMLFontElement
    public void setFace(String str) {
        setAttribute(OptionalModuleUtils.FACE, str);
    }

    @Override // org.w3c.dom.html.HTMLFontElement
    public void setSize(String str) {
        setAttribute("size", str);
    }
}
