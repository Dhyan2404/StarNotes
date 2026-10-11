package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface UserdrawnAttribute extends XmlObject {
    public static final DocumentFactory<UserdrawnAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<UserdrawnAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "userdrawn3eb2attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getUserdrawn();

    boolean isSetUserdrawn();

    void setUserdrawn(STTrueFalse.Enum r1);

    void unsetUserdrawn();

    STTrueFalse xgetUserdrawn();

    void xsetUserdrawn(STTrueFalse sTTrueFalse);
}
