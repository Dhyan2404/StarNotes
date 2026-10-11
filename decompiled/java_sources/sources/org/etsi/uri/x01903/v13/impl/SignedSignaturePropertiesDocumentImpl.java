package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.SignedSignaturePropertiesDocument;
import org.etsi.uri.x01903.v13.SignedSignaturePropertiesType;

/* loaded from: classes13.dex */
public class SignedSignaturePropertiesDocumentImpl extends XmlComplexContentImpl implements SignedSignaturePropertiesDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "SignedSignatureProperties")};
    private static final long serialVersionUID = 1;

    public SignedSignaturePropertiesDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesDocument
    public SignedSignaturePropertiesType addNewSignedSignatureProperties() {
        SignedSignaturePropertiesType signedSignaturePropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            signedSignaturePropertiesType = (SignedSignaturePropertiesType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signedSignaturePropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesDocument
    public SignedSignaturePropertiesType getSignedSignatureProperties() {
        SignedSignaturePropertiesType signedSignaturePropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            signedSignaturePropertiesType = (SignedSignaturePropertiesType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (signedSignaturePropertiesType == null) {
                signedSignaturePropertiesType = null;
            }
        }
        return signedSignaturePropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesDocument
    public void setSignedSignatureProperties(SignedSignaturePropertiesType signedSignaturePropertiesType) {
        generatedSetterHelperImpl(signedSignaturePropertiesType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
