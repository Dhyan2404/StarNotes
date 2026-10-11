package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.QualifyingPropertiesDocument;
import org.etsi.uri.x01903.v13.QualifyingPropertiesType;

/* loaded from: classes13.dex */
public class QualifyingPropertiesDocumentImpl extends XmlComplexContentImpl implements QualifyingPropertiesDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "QualifyingProperties")};
    private static final long serialVersionUID = 1;

    public QualifyingPropertiesDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesDocument
    public QualifyingPropertiesType addNewQualifyingProperties() {
        QualifyingPropertiesType qualifyingPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            qualifyingPropertiesType = (QualifyingPropertiesType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return qualifyingPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesDocument
    public QualifyingPropertiesType getQualifyingProperties() {
        QualifyingPropertiesType qualifyingPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            qualifyingPropertiesType = (QualifyingPropertiesType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (qualifyingPropertiesType == null) {
                qualifyingPropertiesType = null;
            }
        }
        return qualifyingPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesDocument
    public void setQualifyingProperties(QualifyingPropertiesType qualifyingPropertiesType) {
        generatedSetterHelperImpl(qualifyingPropertiesType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
