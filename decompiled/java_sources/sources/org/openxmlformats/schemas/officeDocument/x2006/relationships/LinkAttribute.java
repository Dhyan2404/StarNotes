package org.openxmlformats.schemas.officeDocument.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface LinkAttribute extends XmlObject {
    public static final DocumentFactory<LinkAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<LinkAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "linkf4d1attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getLink();

    boolean isSetLink();

    void setLink(String str);

    void unsetLink();

    STRelationshipId xgetLink();

    void xsetLink(STRelationshipId sTRelationshipId);
}
