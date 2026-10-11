package org.apache.xmlbeans.impl.store;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.impl.soap.Name;
import org.apache.xmlbeans.impl.soap.SOAPBody;
import org.apache.xmlbeans.impl.soap.SOAPEnvelope;
import org.apache.xmlbeans.impl.soap.SOAPException;
import org.apache.xmlbeans.impl.soap.SOAPHeader;

/* loaded from: classes13.dex */
class SoapEnvelopeXobj extends SoapElementXobj implements SOAPEnvelope {
    public SoapEnvelopeXobj(Locale locale, QName qName) {
        super(locale, qName);
    }

    @Override // org.apache.xmlbeans.impl.soap.SOAPEnvelope
    public SOAPBody addBody() throws SOAPException {
        return DomImpl._soapEnvelope_addBody(this);
    }

    @Override // org.apache.xmlbeans.impl.soap.SOAPEnvelope
    public SOAPHeader addHeader() throws SOAPException {
        return DomImpl._soapEnvelope_addHeader(this);
    }

    @Override // org.apache.xmlbeans.impl.soap.SOAPEnvelope
    public Name createName(String str) {
        return DomImpl._soapEnvelope_createName(this, str);
    }

    @Override // org.apache.xmlbeans.impl.soap.SOAPEnvelope
    public SOAPBody getBody() throws SOAPException {
        return DomImpl._soapEnvelope_getBody(this);
    }

    @Override // org.apache.xmlbeans.impl.soap.SOAPEnvelope
    public SOAPHeader getHeader() throws SOAPException {
        return DomImpl._soapEnvelope_getHeader(this);
    }

    @Override // org.apache.xmlbeans.impl.store.SoapElementXobj, org.apache.xmlbeans.impl.store.ElementXobj, org.apache.xmlbeans.impl.store.Xobj
    public Xobj newNode(Locale locale) {
        return new SoapEnvelopeXobj(locale, this._name);
    }

    @Override // org.apache.xmlbeans.impl.soap.SOAPEnvelope
    public Name createName(String str, String str2, String str3) {
        return DomImpl._soapEnvelope_createName(this, str, str2, str3);
    }
}
