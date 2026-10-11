package org.openxmlformats.schemas.xpackage.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface RelationshipsDocument extends XmlObject {
    public static final DocumentFactory<RelationshipsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RelationshipsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "relationships93b3doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRelationships addNewRelationships();

    CTRelationships getRelationships();

    void setRelationships(CTRelationships cTRelationships);
}
