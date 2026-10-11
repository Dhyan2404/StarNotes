package org.openxmlformats.schemas.officeDocument.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface PictAttribute extends XmlObject {
    public static final DocumentFactory<PictAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PictAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "pictad01attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getPict();

    boolean isSetPict();

    void setPict(String str);

    void unsetPict();

    STRelationshipId xgetPict();

    void xsetPict(STRelationshipId sTRelationshipId);
}
