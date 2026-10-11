package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface DetectmouseclickAttribute extends XmlObject {
    public static final DocumentFactory<DetectmouseclickAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DetectmouseclickAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "detectmouseclick23cfattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getDetectmouseclick();

    boolean isSetDetectmouseclick();

    void setDetectmouseclick(STTrueFalse.Enum r1);

    void unsetDetectmouseclick();

    STTrueFalse xgetDetectmouseclick();

    void xsetDetectmouseclick(STTrueFalse sTTrueFalse);
}
