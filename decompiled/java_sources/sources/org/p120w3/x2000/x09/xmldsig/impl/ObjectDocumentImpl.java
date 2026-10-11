package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.ObjectDocument;
import org.p120w3.x2000.x09.xmldsig.ObjectType;

/* loaded from: classes16.dex */
public class ObjectDocumentImpl extends XmlComplexContentImpl implements ObjectDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "Object")};
    private static final long serialVersionUID = 1;

    public ObjectDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ObjectDocument
    public ObjectType addNewObject() {
        ObjectType objectType;
        synchronized (monitor()) {
            check_orphaned();
            objectType = (ObjectType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return objectType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ObjectDocument
    public ObjectType getObject() {
        ObjectType objectType;
        synchronized (monitor()) {
            check_orphaned();
            objectType = (ObjectType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (objectType == null) {
                objectType = null;
            }
        }
        return objectType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ObjectDocument
    public void setObject(ObjectType objectType) {
        generatedSetterHelperImpl(objectType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
