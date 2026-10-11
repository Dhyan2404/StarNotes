package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.SignaturePropertyDocument;
import org.p120w3.x2000.x09.xmldsig.SignaturePropertyType;

/* loaded from: classes16.dex */
public class SignaturePropertyDocumentImpl extends XmlComplexContentImpl implements SignaturePropertyDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "SignatureProperty")};
    private static final long serialVersionUID = 1;

    public SignaturePropertyDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertyDocument
    public SignaturePropertyType addNewSignatureProperty() {
        SignaturePropertyType signaturePropertyType;
        synchronized (monitor()) {
            check_orphaned();
            signaturePropertyType = (SignaturePropertyType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signaturePropertyType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertyDocument
    public SignaturePropertyType getSignatureProperty() {
        SignaturePropertyType signaturePropertyType;
        synchronized (monitor()) {
            check_orphaned();
            signaturePropertyType = (SignaturePropertyType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (signaturePropertyType == null) {
                signaturePropertyType = null;
            }
        }
        return signaturePropertyType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertyDocument
    public void setSignatureProperty(SignaturePropertyType signaturePropertyType) {
        generatedSetterHelperImpl(signaturePropertyType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
