package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.SignatureDocument;
import org.p120w3.x2000.x09.xmldsig.SignatureType;

/* loaded from: classes16.dex */
public class SignatureDocumentImpl extends XmlComplexContentImpl implements SignatureDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "Signature")};
    private static final long serialVersionUID = 1;

    public SignatureDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureDocument
    public SignatureType addNewSignature() {
        SignatureType signatureType;
        synchronized (monitor()) {
            check_orphaned();
            signatureType = (SignatureType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signatureType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureDocument
    public SignatureType getSignature() {
        SignatureType signatureType;
        synchronized (monitor()) {
            check_orphaned();
            signatureType = (SignatureType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (signatureType == null) {
                signatureType = null;
            }
        }
        return signatureType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureDocument
    public void setSignature(SignatureType signatureType) {
        generatedSetterHelperImpl(signatureType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
