package org.apache.xmlbeans.impl.store;

import org.apache.xmlbeans.impl.store.DomImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public class SoapPartDocXobj extends DocumentXobj {
    SoapPartDom _soapPartDom;

    public SoapPartDocXobj(Locale locale) {
        super(locale);
        this._soapPartDom = new SoapPartDom(this);
    }

    @Override // org.apache.xmlbeans.impl.store.NodeXobj, org.apache.xmlbeans.impl.store.Xobj
    public DomImpl.Dom getDom() {
        return this._soapPartDom;
    }

    @Override // org.apache.xmlbeans.impl.store.DocumentXobj, org.apache.xmlbeans.impl.store.Xobj
    public Xobj newNode(Locale locale) {
        return new SoapPartDocXobj(locale);
    }
}
