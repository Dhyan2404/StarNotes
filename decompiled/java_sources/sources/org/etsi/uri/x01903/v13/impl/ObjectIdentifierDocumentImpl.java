package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.ObjectIdentifierDocument;
import org.etsi.uri.x01903.v13.ObjectIdentifierType;

/* loaded from: classes13.dex */
public class ObjectIdentifierDocumentImpl extends XmlComplexContentImpl implements ObjectIdentifierDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "ObjectIdentifier")};
    private static final long serialVersionUID = 1;

    public ObjectIdentifierDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierDocument
    public ObjectIdentifierType addNewObjectIdentifier() {
        ObjectIdentifierType objectIdentifierType;
        synchronized (monitor()) {
            check_orphaned();
            objectIdentifierType = (ObjectIdentifierType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return objectIdentifierType;
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierDocument
    public ObjectIdentifierType getObjectIdentifier() {
        ObjectIdentifierType objectIdentifierType;
        synchronized (monitor()) {
            check_orphaned();
            objectIdentifierType = (ObjectIdentifierType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (objectIdentifierType == null) {
                objectIdentifierType = null;
            }
        }
        return objectIdentifierType;
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierDocument
    public void setObjectIdentifier(ObjectIdentifierType objectIdentifierType) {
        generatedSetterHelperImpl(objectIdentifierType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
