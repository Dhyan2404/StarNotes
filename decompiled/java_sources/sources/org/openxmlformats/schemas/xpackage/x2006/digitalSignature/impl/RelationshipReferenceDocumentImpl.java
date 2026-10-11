package org.openxmlformats.schemas.xpackage.x2006.digitalSignature.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.xpackage.x2006.digitalSignature.CTRelationshipReference;
import org.openxmlformats.schemas.xpackage.x2006.digitalSignature.RelationshipReferenceDocument;

/* loaded from: classes16.dex */
public class RelationshipReferenceDocumentImpl extends XmlComplexContentImpl implements RelationshipReferenceDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/package/2006/digital-signature", "RelationshipReference")};
    private static final long serialVersionUID = 1;

    public RelationshipReferenceDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.digitalSignature.RelationshipReferenceDocument
    public CTRelationshipReference addNewRelationshipReference() {
        CTRelationshipReference cTRelationshipReference;
        synchronized (monitor()) {
            check_orphaned();
            cTRelationshipReference = (CTRelationshipReference) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRelationshipReference;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.digitalSignature.RelationshipReferenceDocument
    public CTRelationshipReference getRelationshipReference() {
        CTRelationshipReference cTRelationshipReference;
        synchronized (monitor()) {
            check_orphaned();
            cTRelationshipReference = (CTRelationshipReference) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRelationshipReference == null) {
                cTRelationshipReference = null;
            }
        }
        return cTRelationshipReference;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.digitalSignature.RelationshipReferenceDocument
    public void setRelationshipReference(CTRelationshipReference cTRelationshipReference) {
        generatedSetterHelperImpl(cTRelationshipReference, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
