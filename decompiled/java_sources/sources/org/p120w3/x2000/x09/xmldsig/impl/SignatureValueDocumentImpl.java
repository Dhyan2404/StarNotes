package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.SignatureValueDocument;
import org.p120w3.x2000.x09.xmldsig.SignatureValueType;

/* loaded from: classes16.dex */
public class SignatureValueDocumentImpl extends XmlComplexContentImpl implements SignatureValueDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "SignatureValue")};
    private static final long serialVersionUID = 1;

    public SignatureValueDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureValueDocument
    public SignatureValueType addNewSignatureValue() {
        SignatureValueType signatureValueType;
        synchronized (monitor()) {
            check_orphaned();
            signatureValueType = (SignatureValueType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signatureValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureValueDocument
    public SignatureValueType getSignatureValue() {
        SignatureValueType signatureValueType;
        synchronized (monitor()) {
            check_orphaned();
            signatureValueType = (SignatureValueType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (signatureValueType == null) {
                signatureValueType = null;
            }
        }
        return signatureValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureValueDocument
    public void setSignatureValue(SignatureValueType signatureValueType) {
        generatedSetterHelperImpl(signatureValueType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
