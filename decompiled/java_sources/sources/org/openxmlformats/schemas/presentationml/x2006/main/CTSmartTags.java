package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes14.dex */
public interface CTSmartTags extends XmlObject {
    public static final DocumentFactory<CTSmartTags> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSmartTags> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsmarttagsf2cdtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getId();

    void setId(String str);

    STRelationshipId xgetId();

    void xsetId(STRelationshipId sTRelationshipId);
}
