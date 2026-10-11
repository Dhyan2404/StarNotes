package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface HrnoshadeAttribute extends XmlObject {
    public static final DocumentFactory<HrnoshadeAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<HrnoshadeAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "hrnoshade4db5attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getHrnoshade();

    boolean isSetHrnoshade();

    void setHrnoshade(STTrueFalse.Enum r1);

    void unsetHrnoshade();

    STTrueFalse xgetHrnoshade();

    void xsetHrnoshade(STTrueFalse sTTrueFalse);
}
