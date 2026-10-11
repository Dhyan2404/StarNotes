package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface ExtrusionokAttribute extends XmlObject {
    public static final DocumentFactory<ExtrusionokAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ExtrusionokAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "extrusionok1d28attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getExtrusionok();

    boolean isSetExtrusionok();

    void setExtrusionok(STTrueFalse.Enum r1);

    void unsetExtrusionok();

    STTrueFalse xgetExtrusionok();

    void xsetExtrusionok(STTrueFalse sTTrueFalse);
}
