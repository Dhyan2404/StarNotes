package org.openxmlformats.schemas.officeDocument.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface TopLeftAttribute extends XmlObject {
    public static final DocumentFactory<TopLeftAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<TopLeftAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "topleft849dattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getTopLeft();

    boolean isSetTopLeft();

    void setTopLeft(String str);

    void unsetTopLeft();

    STRelationshipId xgetTopLeft();

    void xsetTopLeft(STRelationshipId sTRelationshipId);
}
