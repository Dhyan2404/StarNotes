package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleTypeDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.TopLevelSimpleType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class SimpleTypeDocumentImpl extends XmlComplexContentImpl implements SimpleTypeDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "simpleType")};
    private static final long serialVersionUID = 1;

    public SimpleTypeDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleTypeDocument
    public TopLevelSimpleType addNewSimpleType() {
        TopLevelSimpleType topLevelSimpleType;
        synchronized (monitor()) {
            check_orphaned();
            topLevelSimpleType = (TopLevelSimpleType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return topLevelSimpleType;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleTypeDocument
    public TopLevelSimpleType getSimpleType() {
        TopLevelSimpleType topLevelSimpleType;
        synchronized (monitor()) {
            check_orphaned();
            topLevelSimpleType = (TopLevelSimpleType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (topLevelSimpleType == null) {
                topLevelSimpleType = null;
            }
        }
        return topLevelSimpleType;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleTypeDocument
    public void setSimpleType(TopLevelSimpleType topLevelSimpleType) {
        generatedSetterHelperImpl(topLevelSimpleType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
