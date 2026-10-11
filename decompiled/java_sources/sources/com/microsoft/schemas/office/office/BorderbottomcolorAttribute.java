package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface BorderbottomcolorAttribute extends XmlObject {
    public static final DocumentFactory<BorderbottomcolorAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BorderbottomcolorAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "borderbottomcolorc25fattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getBorderbottomcolor();

    boolean isSetBorderbottomcolor();

    void setBorderbottomcolor(String str);

    void unsetBorderbottomcolor();

    XmlString xgetBorderbottomcolor();

    void xsetBorderbottomcolor(XmlString xmlString);
}
