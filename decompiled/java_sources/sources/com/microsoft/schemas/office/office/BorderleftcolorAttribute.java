package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface BorderleftcolorAttribute extends XmlObject {
    public static final DocumentFactory<BorderleftcolorAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BorderleftcolorAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "borderleftcolor2043attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getBorderleftcolor();

    boolean isSetBorderleftcolor();

    void setBorderleftcolor(String str);

    void unsetBorderleftcolor();

    XmlString xgetBorderleftcolor();

    void xsetBorderleftcolor(XmlString xmlString);
}
