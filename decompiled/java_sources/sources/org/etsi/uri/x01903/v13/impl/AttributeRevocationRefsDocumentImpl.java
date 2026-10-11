package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.AttributeRevocationRefsDocument;
import org.etsi.uri.x01903.v13.CompleteRevocationRefsType;

/* loaded from: classes13.dex */
public class AttributeRevocationRefsDocumentImpl extends XmlComplexContentImpl implements AttributeRevocationRefsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "AttributeRevocationRefs")};
    private static final long serialVersionUID = 1;

    public AttributeRevocationRefsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.AttributeRevocationRefsDocument
    public CompleteRevocationRefsType addNewAttributeRevocationRefs() {
        CompleteRevocationRefsType completeRevocationRefsType;
        synchronized (monitor()) {
            check_orphaned();
            completeRevocationRefsType = (CompleteRevocationRefsType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return completeRevocationRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.AttributeRevocationRefsDocument
    public CompleteRevocationRefsType getAttributeRevocationRefs() {
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

    @Override // org.etsi.uri.x01903.v13.AttributeRevocationRefsDocument
    public void setAttributeRevocationRefs(CompleteRevocationRefsType completeRevocationRefsType) {
        generatedSetterHelperImpl(completeRevocationRefsType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
