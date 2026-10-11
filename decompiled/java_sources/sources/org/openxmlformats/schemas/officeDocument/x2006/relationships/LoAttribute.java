package org.openxmlformats.schemas.officeDocument.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface LoAttribute extends XmlObject {
    public static final DocumentFactory<LoAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<LoAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "lo6c9aattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getLo();

    boolean isSetLo();

    void setLo(String str);

    void unsetLo();

    STRelationshipId xgetLo();

    void xsetLo(STRelationshipId sTRelationshipId);
}
