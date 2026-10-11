package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.MaxLengthDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.NumFacet;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class MaxLengthDocumentImpl extends XmlComplexContentImpl implements MaxLengthDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "maxLength")};
    private static final long serialVersionUID = 1;

    public MaxLengthDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.MaxLengthDocument
    public NumFacet addNewMaxLength() {
        NumFacet numFacet;
        synchronized (monitor()) {
            check_orphaned();
            numFacet = (NumFacet) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return numFacet;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.MaxLengthDocument
    public NumFacet getMaxLength() {
        NumFacet numFacet;
        synchronized (monitor()) {
            check_orphaned();
            numFacet = (NumFacet) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (numFacet == null) {
                numFacet = null;
            }
        }
        return numFacet;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.MaxLengthDocument
    public void setMaxLength(NumFacet numFacet) {
        generatedSetterHelperImpl(numFacet, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
