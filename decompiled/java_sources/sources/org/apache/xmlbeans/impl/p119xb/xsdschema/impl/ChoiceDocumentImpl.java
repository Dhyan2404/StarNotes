package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ChoiceDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ExplicitGroup;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class ChoiceDocumentImpl extends XmlComplexContentImpl implements ChoiceDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "choice")};
    private static final long serialVersionUID = 1;

    public ChoiceDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ChoiceDocument
    public ExplicitGroup addNewChoice() {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ChoiceDocument
    public ExplicitGroup getChoice() {
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

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ChoiceDocument
    public void setChoice(ExplicitGroup explicitGroup) {
        generatedSetterHelperImpl(explicitGroup, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
