package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.SignedDataObjectPropertiesDocument;
import org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType;

/* loaded from: classes13.dex */
public class SignedDataObjectPropertiesDocumentImpl extends XmlComplexContentImpl implements SignedDataObjectPropertiesDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "SignedDataObjectProperties")};
    private static final long serialVersionUID = 1;

    public SignedDataObjectPropertiesDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesDocument
    public SignedDataObjectPropertiesType addNewSignedDataObjectProperties() {
        SignedDataObjectPropertiesType signedDataObjectPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            signedDataObjectPropertiesType = (SignedDataObjectPropertiesType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signedDataObjectPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesDocument
    public SignedDataObjectPropertiesType getSignedDataObjectProperties() {
        SignedDataObjectPropertiesType signedDataObjectPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            signedDataObjectPropertiesType = (SignedDataObjectPropertiesType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (signedDataObjectPropertiesType == null) {
                signedDataObjectPropertiesType = null;
            }
        }
        return signedDataObjectPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesDocument
    public void setSignedDataObjectProperties(SignedDataObjectPropertiesType signedDataObjectPropertiesType) {
        generatedSetterHelperImpl(signedDataObjectPropertiesType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
