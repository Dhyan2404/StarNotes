package org.openxmlformats.schemas.xpackage.x2006.digitalSignature;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface RelationshipsGroupReferenceDocument extends XmlObject {
    public static final DocumentFactory<RelationshipsGroupReferenceDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RelationshipsGroupReferenceDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "relationshipsgroupreference9f0fdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRelationshipsGroupReference addNewRelationshipsGroupReference();

    CTRelationshipsGroupReference getRelationshipsGroupReference();

    void setRelationshipsGroupReference(CTRelationshipsGroupReference cTRelationshipsGroupReference);
}
