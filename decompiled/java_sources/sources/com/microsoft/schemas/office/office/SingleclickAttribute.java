package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface SingleclickAttribute extends XmlObject {
    public static final DocumentFactory<SingleclickAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SingleclickAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "singleclicke7f3attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getSingleclick();

    boolean isSetSingleclick();

    void setSingleclick(STTrueFalse.Enum r1);

    void unsetSingleclick();

    STTrueFalse xgetSingleclick();

    void xsetSingleclick(STTrueFalse sTTrueFalse);
}
