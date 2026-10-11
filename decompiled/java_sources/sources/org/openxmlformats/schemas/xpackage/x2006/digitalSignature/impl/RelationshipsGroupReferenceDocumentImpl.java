package org.openxmlformats.schemas.xpackage.x2006.digitalSignature.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.xpackage.x2006.digitalSignature.CTRelationshipsGroupReference;
import org.openxmlformats.schemas.xpackage.x2006.digitalSignature.RelationshipsGroupReferenceDocument;

/* loaded from: classes16.dex */
public class RelationshipsGroupReferenceDocumentImpl extends XmlComplexContentImpl implements RelationshipsGroupReferenceDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/package/2006/digital-signature", "RelationshipsGroupReference")};
    private static final long serialVersionUID = 1;

    public RelationshipsGroupReferenceDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.digitalSignature.RelationshipsGroupReferenceDocument
    public CTRelationshipsGroupReference addNewRelationshipsGroupReference() {
        CTRelationshipsGroupReference cTRelationshipsGroupReference;
        synchronized (monitor()) {
            check_orphaned();
            cTRelationshipsGroupReference = (CTRelationshipsGroupReference) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRelationshipsGroupReference;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.digitalSignature.RelationshipsGroupReferenceDocument
    public CTRelationshipsGroupReference getRelationshipsGroupReference() {
        CTRelationshipsGroupReference cTRelationshipsGroupReference;
        synchronized (monitor()) {
            check_orphaned();
            cTRelationshipsGroupReference = (CTRelationshipsGroupReference) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRelationshipsGroupReference == null) {
                cTRelationshipsGroupReference = null;
            }
        }
        return cTRelationshipsGroupReference;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.digitalSignature.RelationshipsGroupReferenceDocument
    public void setRelationshipsGroupReference(CTRelationshipsGroupReference cTRelationshipsGroupReference) {
        generatedSetterHelperImpl(cTRelationshipsGroupReference, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
