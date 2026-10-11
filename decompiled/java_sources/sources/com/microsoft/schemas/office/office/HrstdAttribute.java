package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface HrstdAttribute extends XmlObject {
    public static final DocumentFactory<HrstdAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<HrstdAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "hrstd654cattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getHrstd();

    boolean isSetHrstd();

    void setHrstd(STTrueFalse.Enum r1);

    void unsetHrstd();

    STTrueFalse xgetHrstd();

    void xsetHrstd(STTrueFalse sTTrueFalse);
}
