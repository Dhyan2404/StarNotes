package org.apache.xmlbeans.impl.store;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.impl.soap.SOAPFaultElement;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public class SoapFaultElementXobj extends SoapElementXobj implements SOAPFaultElement {
    public SoapFaultElementXobj(Locale locale, QName qName) {
        super(locale, qName);
    }

    @Override // org.apache.xmlbeans.impl.store.SoapElementXobj, org.apache.xmlbeans.impl.store.ElementXobj, org.apache.xmlbeans.impl.store.Xobj
    public Xobj newNode(Locale locale) {
        return new SoapFaultElementXobj(locale, this._name);
    }
}
