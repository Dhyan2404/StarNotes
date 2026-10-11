package org.openxmlformats.schemas.officeDocument.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface EmbedAttribute extends XmlObject {
    public static final DocumentFactory<EmbedAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<EmbedAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "embedcb3aattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getEmbed();

    boolean isSetEmbed();

    void setEmbed(String str);

    void unsetEmbed();

    STRelationshipId xgetEmbed();

    void xsetEmbed(STRelationshipId sTRelationshipId);
}
