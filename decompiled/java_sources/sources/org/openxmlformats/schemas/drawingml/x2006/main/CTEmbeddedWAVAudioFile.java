package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes14.dex */
public interface CTEmbeddedWAVAudioFile extends XmlObject {
    public static final DocumentFactory<CTEmbeddedWAVAudioFile> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTEmbeddedWAVAudioFile> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctembeddedwavaudiofile19abtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getEmbed();

    String getName();

    boolean isSetName();

    void setEmbed(String str);

    void setName(String str);

    void unsetName();

    STRelationshipId xgetEmbed();

    XmlString xgetName();

    void xsetEmbed(STRelationshipId sTRelationshipId);

    void xsetName(XmlString xmlString);
}
