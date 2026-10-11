package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface OleiconAttribute extends XmlObject {
    public static final DocumentFactory<OleiconAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OleiconAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "oleicon5dd4attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getOleicon();

    boolean isSetOleicon();

    void setOleicon(STTrueFalse.Enum r1);

    void unsetOleicon();

    STTrueFalse xgetOleicon();

    void xsetOleicon(STTrueFalse sTTrueFalse);
}
