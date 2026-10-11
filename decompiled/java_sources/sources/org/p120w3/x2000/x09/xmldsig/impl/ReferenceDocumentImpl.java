package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.ReferenceDocument;
import org.p120w3.x2000.x09.xmldsig.ReferenceType;

/* loaded from: classes16.dex */
public class ReferenceDocumentImpl extends XmlComplexContentImpl implements ReferenceDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "Reference")};
    private static final long serialVersionUID = 1;

    public ReferenceDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceDocument
    public ReferenceType addNewReference() {
        ReferenceType referenceType;
        synchronized (monitor()) {
            check_orphaned();
            referenceType = (ReferenceType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return referenceType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceDocument
    public ReferenceType getReference() {
        ReferenceType referenceType;
        synchronized (monitor()) {
            check_orphaned();
            referenceType = (ReferenceType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (referenceType == null) {
                referenceType = null;
            }
        }
        return referenceType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceDocument
    public void setReference(ReferenceType referenceType) {
        generatedSetterHelperImpl(referenceType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
