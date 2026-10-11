package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface BorderrightcolorAttribute extends XmlObject {
    public static final DocumentFactory<BorderrightcolorAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BorderrightcolorAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "borderrightcolorbfdcattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getBorderrightcolor();

    boolean isSetBorderrightcolor();

    void setBorderrightcolor(String str);

    void unsetBorderrightcolor();

    XmlString xgetBorderrightcolor();

    void xsetBorderrightcolor(XmlString xmlString);
}
