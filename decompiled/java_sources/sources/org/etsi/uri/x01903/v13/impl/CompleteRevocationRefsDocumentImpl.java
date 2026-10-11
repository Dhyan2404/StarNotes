package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.CompleteRevocationRefsDocument;
import org.etsi.uri.x01903.v13.CompleteRevocationRefsType;

/* loaded from: classes13.dex */
public class CompleteRevocationRefsDocumentImpl extends XmlComplexContentImpl implements CompleteRevocationRefsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "CompleteRevocationRefs")};
    private static final long serialVersionUID = 1;

    public CompleteRevocationRefsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsDocument
    public CompleteRevocationRefsType addNewCompleteRevocationRefs() {
        CompleteRevocationRefsType completeRevocationRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeRevocationRefsType = (CompleteRevocationRefsType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return completeRevocationRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsDocument
    public CompleteRevocationRefsType getCompleteRevocationRefs() {
        CompleteRevocationRefsType completeRevocationRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeRevocationRefsType = (CompleteRevocationRefsType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (completeRevocationRefsType == null) {
                completeRevocationRefsType = null;
            }
        }
        return completeRevocationRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsDocument
    public void setCompleteRevocationRefs(CompleteRevocationRefsType completeRevocationRefsType) {
        generatedSetterHelperImpl(completeRevocationRefsType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
