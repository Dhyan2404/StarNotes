package org.apache.xmlbeans.impl.store;

import javax.xml.namespace.QName;

/* loaded from: classes13.dex */
class AttrIdXobj extends AttrXobj {
    public AttrIdXobj(Locale locale, QName qName) {
        super(locale, qName);
    }

    @Override // org.apache.xmlbeans.impl.store.AttrXobj, org.w3c.dom.Attr
    public boolean isId() {
        return true;
    }
}
