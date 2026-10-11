package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface HrAttribute extends XmlObject {
    public static final DocumentFactory<HrAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<HrAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "hrb533attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getHr();

    boolean isSetHr();

    void setHr(STTrueFalse.Enum r1);

    void unsetHr();

    STTrueFalse xgetHr();

    void xsetHr(STTrueFalse sTTrueFalse);
}
