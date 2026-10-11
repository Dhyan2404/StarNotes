package org.openxmlformats.schemas.officeDocument.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface IdAttribute extends XmlObject {
    public static final DocumentFactory<IdAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<IdAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "id2032attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getId();

    boolean isSetId();

    void setId(String str);

    void unsetId();

    STRelationshipId xgetId();

    void xsetId(STRelationshipId sTRelationshipId);
}
