package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface AllowincellAttribute extends XmlObject {
    public static final DocumentFactory<AllowincellAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AllowincellAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "allowincell6e43attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getAllowincell();

    boolean isSetAllowincell();

    void setAllowincell(STTrueFalse.Enum r1);

    void unsetAllowincell();

    STTrueFalse xgetAllowincell();

    void xsetAllowincell(STTrueFalse sTTrueFalse);
}
