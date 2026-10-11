package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface OnedAttribute extends XmlObject {
    public static final DocumentFactory<OnedAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OnedAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "oned9427attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getOned();

    boolean isSetOned();

    void setOned(STTrueFalse.Enum r1);

    void unsetOned();

    STTrueFalse xgetOned();

    void xsetOned(STTrueFalse sTTrueFalse);
}
