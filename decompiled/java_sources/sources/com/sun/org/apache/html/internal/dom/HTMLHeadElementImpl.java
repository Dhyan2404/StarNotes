package com.sun.org.apache.html.internal.dom;

import com.google.android.gms.common.Scopes;
import org.w3c.dom.html.HTMLHeadElement;

/* loaded from: classes10.dex */
public class HTMLHeadElementImpl extends HTMLElementImpl implements HTMLHeadElement {
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
