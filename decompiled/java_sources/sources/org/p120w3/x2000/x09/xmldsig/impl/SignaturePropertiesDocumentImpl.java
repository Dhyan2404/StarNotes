package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.SignaturePropertiesDocument;
import org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType;

/* loaded from: classes16.dex */
public class SignaturePropertiesDocumentImpl extends XmlComplexContentImpl implements SignaturePropertiesDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "SignatureProperties")};
    private static final long serialVersionUID = 1;

    public SignaturePropertiesDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesDocument
    public SignaturePropertiesType addNewSignatureProperties() {
        SignaturePropertiesType signaturePropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            signaturePropertiesType = (SignaturePropertiesType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signaturePropertiesType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesDocument
    public SignaturePropertiesType getSignatureProperties() {
        SignaturePropertiesType signaturePropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            signaturePropertiesType = (SignaturePropertiesType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (signaturePropertiesType == null) {
                signaturePropertiesType = null;
            }
        }
        return signaturePropertiesType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesDocument
    public void setSignatureProperties(SignaturePropertiesType signaturePropertiesType) {
        generatedSetterHelperImpl(signaturePropertiesType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
