package org.apache.html.dom;

import com.caverock.androidsvg.SVGParser;
import org.w3c.dom.html.HTMLStyleElement;

/* loaded from: classes12.dex */
public class HTMLStyleElementImpl extends HTMLElementImpl implements HTMLStyleElement {
    private static final long serialVersionUID = -9001815754196124532L;

    public HTMLStyleElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLStyleElement
    public boolean getDisabled() {
        return getBinary("disabled");
    }

    @Override // org.w3c.dom.html.HTMLStyleElement
    public String getMedia() {
        return getAttribute(SVGParser.f16046r);
    }

    @Override // org.w3c.dom.html.HTMLStyleElement
    public String getType() {
        return getAttribute("type");
    }

    @Override // org.w3c.dom.html.HTMLStyleElement
    public void setDisabled(boolean z) {
        setAttribute("disabled", z);
    }

    @Override // org.w3c.dom.html.HTMLStyleElement
    public void setMedia(String str) {
        setAttribute(SVGParser.f16046r, str);
    }

    @Override // org.w3c.dom.html.HTMLStyleElement
    public void setType(String str) {
        setAttribute("type", str);
    }
}
