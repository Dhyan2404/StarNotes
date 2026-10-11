package org.openxmlformats.schemas.officeDocument.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface BottomLeftAttribute extends XmlObject {
    public static final DocumentFactory<BottomLeftAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BottomLeftAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "bottomleftad69attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getBottomLeft();

    boolean isSetBottomLeft();

    void setBottomLeft(String str);

    void unsetBottomLeft();

    STRelationshipId xgetBottomLeft();

    void xsetBottomLeft(STRelationshipId sTRelationshipId);
}
