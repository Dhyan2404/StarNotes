package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface ClipAttribute extends XmlObject {
    public static final DocumentFactory<ClipAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ClipAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "clip9eb9attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getClip();

    boolean isSetClip();

    void setClip(STTrueFalse.Enum r1);

    void unsetClip();

    STTrueFalse xgetClip();

    void xsetClip(STTrueFalse sTTrueFalse);
}
