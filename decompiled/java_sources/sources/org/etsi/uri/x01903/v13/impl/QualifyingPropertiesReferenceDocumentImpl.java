package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.QualifyingPropertiesReferenceDocument;
import org.etsi.uri.x01903.v13.QualifyingPropertiesReferenceType;

/* loaded from: classes13.dex */
public class QualifyingPropertiesReferenceDocumentImpl extends XmlComplexContentImpl implements QualifyingPropertiesReferenceDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "QualifyingPropertiesReference")};
    private static final long serialVersionUID = 1;

    public QualifyingPropertiesReferenceDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesReferenceDocument
    public QualifyingPropertiesReferenceType addNewQualifyingPropertiesReference() {
        QualifyingPropertiesReferenceType qualifyingPropertiesReferenceType;
        synchronized (monitor()) {
            check_orphaned();
            qualifyingPropertiesReferenceType = (QualifyingPropertiesReferenceType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return qualifyingPropertiesReferenceType;
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesReferenceDocument
    public QualifyingPropertiesReferenceType getQualifyingPropertiesReference() {
        QualifyingPropertiesReferenceType qualifyingPropertiesReferenceType;
        synchronized (monitor()) {
            check_orphaned();
            qualifyingPropertiesReferenceType = (QualifyingPropertiesReferenceType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (qualifyingPropertiesReferenceType == null) {
                qualifyingPropertiesReferenceType = null;
            }
        }
        return qualifyingPropertiesReferenceType;
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesReferenceDocument
    public void setQualifyingPropertiesReference(QualifyingPropertiesReferenceType qualifyingPropertiesReferenceType) {
        generatedSetterHelperImpl(qualifyingPropertiesReferenceType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
