package org.apache.xmlbeans.impl.store;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.impl.soap.SOAPBodyElement;

/* loaded from: classes13.dex */
class SoapBodyElementXobj extends SoapElementXobj implements SOAPBodyElement {
    public SoapBodyElementXobj(Locale locale, QName qName) {
        super(locale, qName);
    }

    @Override // org.apache.xmlbeans.impl.store.SoapElementXobj, org.apache.xmlbeans.impl.store.ElementXobj, org.apache.xmlbeans.impl.store.Xobj
    public Xobj newNode(Locale locale) {
        return new SoapBodyElementXobj(locale, this._name);
    }
}
