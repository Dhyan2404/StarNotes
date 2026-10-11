package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.CertIDListType;
import org.etsi.uri.x01903.v13.SigningCertificateDocument;

/* loaded from: classes13.dex */
public class SigningCertificateDocumentImpl extends XmlComplexContentImpl implements SigningCertificateDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "SigningCertificate")};
    private static final long serialVersionUID = 1;

    public SigningCertificateDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.SigningCertificateDocument
    public CertIDListType addNewSigningCertificate() {
        CertIDListType certIDListType;
        synchronized (monitor()) {
            check_orphaned();
            certIDListType = (CertIDListType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return certIDListType;
    }

    @Override // org.etsi.uri.x01903.v13.SigningCertificateDocument
    public CertIDListType getSigningCertificate() {
        CertIDListType certIDListType;
        synchronized (monitor()) {
            check_orphaned();
            certIDListType = (CertIDListType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (certIDListType == null) {
                certIDListType = null;
            }
        }
        return certIDListType;
    }

    @Override // org.etsi.uri.x01903.v13.SigningCertificateDocument
    public void setSigningCertificate(CertIDListType certIDListType) {
        generatedSetterHelperImpl(certIDListType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
