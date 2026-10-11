package org.openxmlformats.schemas.officeDocument.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface DmAttribute extends XmlObject {
    public static final DocumentFactory<DmAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DmAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "dm48a0attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getDm();

    boolean isSetDm();

    void setDm(String str);

    void unsetDm();

    STRelationshipId xgetDm();

    void xsetDm(STRelationshipId sTRelationshipId);
}
