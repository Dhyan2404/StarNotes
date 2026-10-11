package org.openxmlformats.schemas.officeDocument.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface BottomRightAttribute extends XmlObject {
    public static final DocumentFactory<BottomRightAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BottomRightAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "bottomrightaf52attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getBottomRight();

    boolean isSetBottomRight();

    void setBottomRight(String str);

    void unsetBottomRight();

    STRelationshipId xgetBottomRight();

    void xsetBottomRight(STRelationshipId sTRelationshipId);
}
