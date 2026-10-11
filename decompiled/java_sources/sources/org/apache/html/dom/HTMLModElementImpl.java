package org.apache.html.dom;

import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import org.w3c.dom.html.HTMLModElement;

/* loaded from: classes12.dex */
public class HTMLModElementImpl extends HTMLElementImpl implements HTMLModElement {
    private static final long serialVersionUID = 6424581972706750120L;

    public HTMLModElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLModElement
    public String getCite() {
        return getAttribute("cite");
    }

    @Override // org.w3c.dom.html.HTMLModElement
    public String getDateTime() {
        return getAttribute(ExtensionNamespaceContext.EXSLT_DATETIME_PREFIX);
    }

    @Override // org.w3c.dom.html.HTMLModElement
    public void setCite(String str) {
        setAttribute("cite", str);
    }

    @Override // org.w3c.dom.html.HTMLModElement
    public void setDateTime(String str) {
        setAttribute(ExtensionNamespaceContext.EXSLT_DATETIME_PREFIX, str);
    }
}
