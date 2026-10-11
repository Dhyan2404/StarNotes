package org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes14.dex */
public interface CTRel extends XmlObject {
    public static final DocumentFactory<CTRel> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRel> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrelb3c3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getId();

    void setId(String str);

    STRelationshipId xgetId();

    void xsetId(STRelationshipId sTRelationshipId);
}
