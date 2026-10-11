package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.SignatureMethodDocument;
import org.p120w3.x2000.x09.xmldsig.SignatureMethodType;

/* loaded from: classes16.dex */
public class SignatureMethodDocumentImpl extends XmlComplexContentImpl implements SignatureMethodDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "SignatureMethod")};
    private static final long serialVersionUID = 1;

    public SignatureMethodDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureMethodDocument
    public SignatureMethodType addNewSignatureMethod() {
        SignatureMethodType signatureMethodType;
        synchronized (monitor()) {
            check_orphaned();
            signatureMethodType = (SignatureMethodType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signatureMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureMethodDocument
    public SignatureMethodType getSignatureMethod() {
        SignatureMethodType signatureMethodType;
        synchronized (monitor()) {
            check_orphaned();
            signatureMethodType = (SignatureMethodType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (signatureMethodType == null) {
                signatureMethodType = null;
            }
        }
        return signatureMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureMethodDocument
    public void setSignatureMethod(SignatureMethodType signatureMethodType) {
        generatedSetterHelperImpl(signatureMethodType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
