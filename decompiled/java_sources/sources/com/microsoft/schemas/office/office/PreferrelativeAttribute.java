package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface PreferrelativeAttribute extends XmlObject {
    public static final DocumentFactory<PreferrelativeAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PreferrelativeAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "preferrelative4285attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getPreferrelative();

    boolean isSetPreferrelative();

    void setPreferrelative(STTrueFalse.Enum r1);

    void unsetPreferrelative();

    STTrueFalse xgetPreferrelative();

    void xsetPreferrelative(STTrueFalse sTTrueFalse);
}
