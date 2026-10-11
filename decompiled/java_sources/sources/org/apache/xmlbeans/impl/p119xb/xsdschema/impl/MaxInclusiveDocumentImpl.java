package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Facet;
import org.apache.xmlbeans.impl.p119xb.xsdschema.MaxInclusiveDocument;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class MaxInclusiveDocumentImpl extends XmlComplexContentImpl implements MaxInclusiveDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "maxInclusive")};
    private static final long serialVersionUID = 1;

    public MaxInclusiveDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.MaxInclusiveDocument
    public Facet addNewMaxInclusive() {
        Facet facet;
        synchronized (monitor()) {
            check_orphaned();
            facet = (Facet) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return facet;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.MaxInclusiveDocument
    public Facet getMaxInclusive() {
        Facet facet;
        synchronized (monitor()) {
            check_orphaned();
            facet = (Facet) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (facet == null) {
                facet = null;
            }
        }
        return facet;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.MaxInclusiveDocument
    public void setMaxInclusive(Facet facet) {
        generatedSetterHelperImpl(facet, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
