package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface CTInk extends XmlObject {
    public static final DocumentFactory<CTInk> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTInk> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctink6f5ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getAnnotation();

    String getContentType();

    String getI();

    boolean isSetAnnotation();

    boolean isSetContentType();

    boolean isSetI();

    void setAnnotation(STTrueFalse.Enum r1);

    void setContentType(String str);

    void setI(String str);

    void unsetAnnotation();

    void unsetContentType();

    void unsetI();

    STTrueFalse xgetAnnotation();

    STContentType xgetContentType();

    XmlString xgetI();

    void xsetAnnotation(STTrueFalse sTTrueFalse);

    void xsetContentType(STContentType sTContentType);

    void xsetI(XmlString xmlString);
}
