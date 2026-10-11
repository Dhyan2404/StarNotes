package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.CertificateValuesDocument;
import org.etsi.uri.x01903.v13.CertificateValuesType;

/* loaded from: classes13.dex */
public class CertificateValuesDocumentImpl extends XmlComplexContentImpl implements CertificateValuesDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "CertificateValues")};
    private static final long serialVersionUID = 1;

    public CertificateValuesDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesDocument
    public CertificateValuesType addNewCertificateValues() {
        CertificateValuesType certificateValuesType;
        synchronized (monitor()) {
            check_orphaned();
            certificateValuesType = (CertificateValuesType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return certificateValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesDocument
    public CertificateValuesType getCertificateValues() {
        CertificateValuesType certificateValuesType;
        synchronized (monitor()) {
            check_orphaned();
            certificateValuesType = (CertificateValuesType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (certificateValuesType == null) {
                certificateValuesType = null;
            }
        }
        return certificateValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.CertificateValuesDocument
    public void setCertificateValues(CertificateValuesType certificateValuesType) {
        generatedSetterHelperImpl(certificateValuesType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
