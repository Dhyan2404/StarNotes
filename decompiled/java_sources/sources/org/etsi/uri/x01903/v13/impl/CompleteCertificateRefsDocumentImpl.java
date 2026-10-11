package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.CompleteCertificateRefsDocument;
import org.etsi.uri.x01903.v13.CompleteCertificateRefsType;

/* loaded from: classes13.dex */
public class CompleteCertificateRefsDocumentImpl extends XmlComplexContentImpl implements CompleteCertificateRefsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "CompleteCertificateRefs")};
    private static final long serialVersionUID = 1;

    public CompleteCertificateRefsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.CompleteCertificateRefsDocument
    public CompleteCertificateRefsType addNewCompleteCertificateRefs() {
        CompleteCertificateRefsType completeCertificateRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeCertificateRefsType = (CompleteCertificateRefsType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return completeCertificateRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.CompleteCertificateRefsDocument
    public CompleteCertificateRefsType getCompleteCertificateRefs() {
        CompleteCertificateRefsType completeCertificateRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeCertificateRefsType = (CompleteCertificateRefsType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (completeCertificateRefsType == null) {
                completeCertificateRefsType = null;
            }
        }
        return completeCertificateRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.CompleteCertificateRefsDocument
    public void setCompleteCertificateRefs(CompleteCertificateRefsType completeCertificateRefsType) {
        generatedSetterHelperImpl(completeCertificateRefsType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
