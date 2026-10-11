package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes7.dex */
public interface RelidAttribute extends XmlObject {
    public static final DocumentFactory<RelidAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RelidAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "relid54e7attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getRelid();

    boolean isSetRelid();

    void setRelid(String str);

    void unsetRelid();

    STRelationshipId xgetRelid();

    void xsetRelid(STRelationshipId sTRelationshipId);
}
