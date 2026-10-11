package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank;

/* loaded from: classes7.dex */
public interface OleAttribute extends XmlObject {
    public static final DocumentFactory<OleAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OleAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "olea4dbattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalseBlank.Enum getOle();

    boolean isSetOle();

    void setOle(STTrueFalseBlank.Enum r1);

    void unsetOle();

    STTrueFalseBlank xgetOle();

    void xsetOle(STTrueFalseBlank sTTrueFalseBlank);
}
