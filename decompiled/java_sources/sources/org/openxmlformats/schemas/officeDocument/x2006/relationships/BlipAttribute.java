package org.openxmlformats.schemas.officeDocument.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface BlipAttribute extends XmlObject {
    public static final DocumentFactory<BlipAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BlipAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "blipe848attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getBlip();

    boolean isSetBlip();

    void setBlip(String str);

    void unsetBlip();

    STRelationshipId xgetBlip();

    void xsetBlip(STRelationshipId sTRelationshipId);
}
