package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface CliptowrapAttribute extends XmlObject {
    public static final DocumentFactory<CliptowrapAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CliptowrapAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cliptowrap76beattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getCliptowrap();

    boolean isSetCliptowrap();

    void setCliptowrap(STTrueFalse.Enum r1);

    void unsetCliptowrap();

    STTrueFalse xgetCliptowrap();

    void xsetCliptowrap(STTrueFalse sTTrueFalse);
}
