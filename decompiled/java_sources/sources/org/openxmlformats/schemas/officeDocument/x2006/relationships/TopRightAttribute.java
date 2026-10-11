package org.openxmlformats.schemas.officeDocument.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface TopRightAttribute extends XmlObject {
    public static final DocumentFactory<TopRightAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<TopRightAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "toprightbe9eattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getTopRight();

    boolean isSetTopRight();

    void setTopRight(String str);

    void unsetTopRight();

    STRelationshipId xgetTopRight();

    void xsetTopRight(STRelationshipId sTRelationshipId);
}
