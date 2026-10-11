package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.SignaturePolicyIdentifierDocument;
import org.etsi.uri.x01903.v13.SignaturePolicyIdentifierType;

/* loaded from: classes13.dex */
public class SignaturePolicyIdentifierDocumentImpl extends XmlComplexContentImpl implements SignaturePolicyIdentifierDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "SignaturePolicyIdentifier")};
    private static final long serialVersionUID = 1;

    public SignaturePolicyIdentifierDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdentifierDocument
    public SignaturePolicyIdentifierType addNewSignaturePolicyIdentifier() {
        SignaturePolicyIdentifierType signaturePolicyIdentifierType;
        synchronized (monitor()) {
            check_orphaned();
            signaturePolicyIdentifierType = (SignaturePolicyIdentifierType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signaturePolicyIdentifierType;
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdentifierDocument
    public SignaturePolicyIdentifierType getSignaturePolicyIdentifier() {
        SignaturePolicyIdentifierType signaturePolicyIdentifierType;
        synchronized (monitor()) {
            check_orphaned();
            signaturePolicyIdentifierType = (SignaturePolicyIdentifierType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (signaturePolicyIdentifierType == null) {
                signaturePolicyIdentifierType = null;
            }
        }
        return signaturePolicyIdentifierType;
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdentifierDocument
    public void setSignaturePolicyIdentifier(SignaturePolicyIdentifierType signaturePolicyIdentifierType) {
        generatedSetterHelperImpl(signaturePolicyIdentifierType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
