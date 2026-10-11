package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.SignedPropertiesDocument;
import org.etsi.uri.x01903.v13.SignedPropertiesType;

/* loaded from: classes13.dex */
public class SignedPropertiesDocumentImpl extends XmlComplexContentImpl implements SignedPropertiesDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "SignedProperties")};
    private static final long serialVersionUID = 1;

    public SignedPropertiesDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesDocument
    public SignedPropertiesType addNewSignedProperties() {
        SignedPropertiesType signedPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            signedPropertiesType = (SignedPropertiesType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signedPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesDocument
    public SignedPropertiesType getSignedProperties() {
        SignedPropertiesType signedPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            signedPropertiesType = (SignedPropertiesType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (signedPropertiesType == null) {
                signedPropertiesType = null;
            }
        }
        return signedPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesDocument
    public void setSignedProperties(SignedPropertiesType signedPropertiesType) {
        generatedSetterHelperImpl(signedPropertiesType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
