package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.FractionDigitsDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.NumFacet;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class FractionDigitsDocumentImpl extends XmlComplexContentImpl implements FractionDigitsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "fractionDigits")};
    private static final long serialVersionUID = 1;

    public FractionDigitsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.FractionDigitsDocument
    public NumFacet addNewFractionDigits() {
        NumFacet numFacet;
        synchronized (monitor()) {
            check_orphaned();
            numFacet = (NumFacet) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return numFacet;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.FractionDigitsDocument
    public NumFacet getFractionDigits() {
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

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.FractionDigitsDocument
    public void setFractionDigits(NumFacet numFacet) {
        generatedSetterHelperImpl(numFacet, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
