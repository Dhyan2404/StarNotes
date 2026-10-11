package org.openxmlformats.schemas.xpackage.x2006.relationships.impl;

import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageNamespaces;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship;
import org.openxmlformats.schemas.xpackage.x2006.relationships.RelationshipDocument;

/* loaded from: classes16.dex */
public class RelationshipDocumentImpl extends XmlComplexContentImpl implements RelationshipDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(PackageNamespaces.RELATIONSHIPS, PackageRelationship.RELATIONSHIP_TAG_NAME)};
    private static final long serialVersionUID = 1;

    public RelationshipDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.RelationshipDocument
    public CTRelationship addNewRelationship() {
        CTRelationship cTRelationship;
        synchronized (monitor()) {
            check_orphaned();
            cTRelationship = (CTRelationship) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRelationship;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.RelationshipDocument
    public CTRelationship getRelationship() {
        CTRelationship cTRelationship;
        synchronized (monitor()) {
            check_orphaned();
            cTRelationship = (CTRelationship) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRelationship == null) {
                cTRelationship = null;
            }
        }
        return cTRelationship;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.RelationshipDocument
    public void setRelationship(CTRelationship cTRelationship) {
        generatedSetterHelperImpl(cTRelationship, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
