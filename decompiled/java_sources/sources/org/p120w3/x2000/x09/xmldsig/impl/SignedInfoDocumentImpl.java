package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.SignedInfoDocument;
import org.p120w3.x2000.x09.xmldsig.SignedInfoType;

/* loaded from: classes16.dex */
public class SignedInfoDocumentImpl extends XmlComplexContentImpl implements SignedInfoDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "SignedInfo")};
    private static final long serialVersionUID = 1;

    public SignedInfoDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoDocument
    public SignedInfoType addNewSignedInfo() {
        SignedInfoType signedInfoType;
        synchronized (monitor()) {
            check_orphaned();
            signedInfoType = (SignedInfoType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signedInfoType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoDocument
    public SignedInfoType getSignedInfo() {
        SignedInfoType signedInfoType;
        synchronized (monitor()) {
            check_orphaned();
            signedInfoType = (SignedInfoType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (signedInfoType == null) {
                signedInfoType = null;
            }
        }
        return signedInfoType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoDocument
    public void setSignedInfo(SignedInfoType signedInfoType) {
        generatedSetterHelperImpl(signedInfoType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
