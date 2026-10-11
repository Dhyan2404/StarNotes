package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface ForcedashAttribute extends XmlObject {
    public static final DocumentFactory<ForcedashAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ForcedashAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "forcedash7ef0attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getForcedash();

    boolean isSetForcedash();

    void setForcedash(STTrueFalse.Enum r1);

    void unsetForcedash();

    STTrueFalse xgetForcedash();

    void xsetForcedash(STTrueFalse sTTrueFalse);
}
