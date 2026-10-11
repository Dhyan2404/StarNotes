package org.openxmlformats.schemas.xpackage.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface RelationshipDocument extends XmlObject {
    public static final DocumentFactory<RelationshipDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RelationshipDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "relationshipfe04doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRelationship addNewRelationship();

    CTRelationship getRelationship();

    void setRelationship(CTRelationship cTRelationship);
}
