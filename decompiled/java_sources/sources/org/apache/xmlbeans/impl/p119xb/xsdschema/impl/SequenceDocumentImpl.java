package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ExplicitGroup;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SequenceDocument;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class SequenceDocumentImpl extends XmlComplexContentImpl implements SequenceDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "sequence")};
    private static final long serialVersionUID = 1;

    public SequenceDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SequenceDocument
    public ExplicitGroup addNewSequence() {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SequenceDocument
    public ExplicitGroup getSequence() {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (explicitGroup == null) {
                explicitGroup = null;
            }
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SequenceDocument
    public void setSequence(ExplicitGroup explicitGroup) {
        generatedSetterHelperImpl(explicitGroup, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
