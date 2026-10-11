package org.apache.xmlbeans.impl.store;

import org.w3c.dom.DocumentFragment;

/* loaded from: classes13.dex */
class DocumentFragXobj extends NodeXobj implements DocumentFragment {
    public DocumentFragXobj(Locale locale) {
        super(locale, 1, 11);
    }

    @Override // org.apache.xmlbeans.impl.store.Xobj
    public Xobj newNode(Locale locale) {
        return new DocumentFragXobj(locale);
    }
}
