package org.apache.xmlbeans.impl.store;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.impl.soap.DetailEntry;

/* loaded from: classes13.dex */
class DetailEntryXobj extends SoapElementXobj implements DetailEntry {
    public DetailEntryXobj(Locale locale, QName qName) {
        super(locale, qName);
    }

    @Override // org.apache.xmlbeans.impl.store.SoapElementXobj, org.apache.xmlbeans.impl.store.ElementXobj, org.apache.xmlbeans.impl.store.Xobj
    public Xobj newNode(Locale locale) {
        return new DetailEntryXobj(locale, this._name);
    }
}
