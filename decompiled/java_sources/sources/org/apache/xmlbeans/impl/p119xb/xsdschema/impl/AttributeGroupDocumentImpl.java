package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AttributeGroupDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.NamedAttributeGroup;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class AttributeGroupDocumentImpl extends XmlComplexContentImpl implements AttributeGroupDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "attributeGroup")};
    private static final long serialVersionUID = 1;

    public AttributeGroupDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AttributeGroupDocument
    public NamedAttributeGroup addNewAttributeGroup() {
        NamedAttributeGroup namedAttributeGroup;
        synchronized (monitor()) {
            check_orphaned();
            namedAttributeGroup = (NamedAttributeGroup) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return namedAttributeGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AttributeGroupDocument
    public NamedAttributeGroup getAttributeGroup() {
        NamedAttributeGroup namedAttributeGroup;
        synchronized (monitor()) {
            check_orphaned();
            namedAttributeGroup = (NamedAttributeGroup) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (namedAttributeGroup == null) {
                namedAttributeGroup = null;
            }
        }
        return namedAttributeGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AttributeGroupDocument
    public void setAttributeGroup(NamedAttributeGroup namedAttributeGroup) {
        generatedSetterHelperImpl(namedAttributeGroup, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
