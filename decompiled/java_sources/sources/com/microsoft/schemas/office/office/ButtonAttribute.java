package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface ButtonAttribute extends XmlObject {
    public static final DocumentFactory<ButtonAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ButtonAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "button59dbattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getButton();

    boolean isSetButton();

    void setButton(STTrueFalse.Enum r1);

    void unsetButton();

    STTrueFalse xgetButton();

    void xsetButton(STTrueFalse sTTrueFalse);
}
