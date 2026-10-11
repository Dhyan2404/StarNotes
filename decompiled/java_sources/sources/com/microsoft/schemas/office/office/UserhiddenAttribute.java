package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface UserhiddenAttribute extends XmlObject {
    public static final DocumentFactory<UserhiddenAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<UserhiddenAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "userhidden8b5eattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getUserhidden();

    boolean isSetUserhidden();

    void setUserhidden(STTrueFalse.Enum r1);

    void unsetUserhidden();

    STTrueFalse xgetUserhidden();

    void xsetUserhidden(STTrueFalse sTTrueFalse);
}
