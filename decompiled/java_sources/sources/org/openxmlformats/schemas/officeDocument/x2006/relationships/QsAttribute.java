package org.openxmlformats.schemas.officeDocument.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface QsAttribute extends XmlObject {
    public static final DocumentFactory<QsAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<QsAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "qs8db9attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getQs();

    boolean isSetQs();

    void setQs(String str);

    void unsetQs();

    STRelationshipId xgetQs();

    void xsetQs(STRelationshipId sTRelationshipId);
}
