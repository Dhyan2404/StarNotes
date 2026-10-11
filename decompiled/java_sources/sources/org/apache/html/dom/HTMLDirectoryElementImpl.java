package org.apache.html.dom;

import org.w3c.dom.html.HTMLDirectoryElement;

/* loaded from: classes12.dex */
public class HTMLDirectoryElementImpl extends HTMLElementImpl implements HTMLDirectoryElement {
    private static final long serialVersionUID = -1010376135190194454L;

    public HTMLDirectoryElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLDirectoryElement
    public boolean getCompact() {
        return getBinary("compact");
    }

    @Override // org.w3c.dom.html.HTMLDirectoryElement
    public void setCompact(boolean z) {
        setAttribute("compact", z);
    }
}
