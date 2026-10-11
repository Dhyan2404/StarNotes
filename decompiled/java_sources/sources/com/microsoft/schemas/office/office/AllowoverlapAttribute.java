package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface AllowoverlapAttribute extends XmlObject {
    public static final DocumentFactory<AllowoverlapAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AllowoverlapAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "allowoverlap0747attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getAllowoverlap();

    boolean isSetAllowoverlap();

    void setAllowoverlap(STTrueFalse.Enum r1);

    void unsetAllowoverlap();

    STTrueFalse xgetAllowoverlap();

    void xsetAllowoverlap(STTrueFalse sTTrueFalse);
}
