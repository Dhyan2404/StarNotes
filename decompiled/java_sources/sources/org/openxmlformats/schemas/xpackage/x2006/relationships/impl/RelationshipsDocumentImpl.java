package org.openxmlformats.schemas.xpackage.x2006.relationships.impl;

import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageNamespaces;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationships;
import org.openxmlformats.schemas.xpackage.x2006.relationships.RelationshipsDocument;

/* loaded from: classes16.dex */
public class RelationshipsDocumentImpl extends XmlComplexContentImpl implements RelationshipsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(PackageNamespaces.RELATIONSHIPS, PackageRelationship.RELATIONSHIPS_TAG_NAME)};
    private static final long serialVersionUID = 1;

    public RelationshipsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.RelationshipsDocument
    public CTRelationships addNewRelationships() {
        CTRelationships cTRelationships;
        synchronized (monitor()) {
            check_orphaned();
            cTRelationships = (CTRelationships) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRelationships;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.RelationshipsDocument
    public CTRelationships getRelationships() {
        CTRelationships cTRelationships;
        synchronized (monitor()) {
            check_orphaned();
            cTRelationships = (CTRelationships) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRelationships == null) {
                cTRelationships = null;
            }
        }
        return cTRelationships;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.RelationshipsDocument
    public void setRelationships(CTRelationships cTRelationships) {
        generatedSetterHelperImpl(cTRelationships, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
