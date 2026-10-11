package org.apache.html.dom;

import com.google.android.gms.common.Scopes;
import org.w3c.dom.html.HTMLHeadElement;

/* loaded from: classes12.dex */
public class HTMLHeadElementImpl extends HTMLElementImpl implements HTMLHeadElement {
    private static final long serialVersionUID = 6438668473721292232L;

    public HTMLHeadElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLHeadElement
    public String getProfile() {
        return getAttribute(Scopes.PROFILE);
    }

    @Override // org.w3c.dom.html.HTMLHeadElement
    public void setProfile(String str) {
        setAttribute(Scopes.PROFILE, str);
    }
}
