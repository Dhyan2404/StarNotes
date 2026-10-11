package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface BordertopcolorAttribute extends XmlObject {
    public static final DocumentFactory<BordertopcolorAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BordertopcolorAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "bordertopcolor5303attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getBordertopcolor();

    boolean isSetBordertopcolor();

    void setBordertopcolor(String str);

    void unsetBordertopcolor();

    XmlString xgetBordertopcolor();

    void xsetBordertopcolor(XmlString xmlString);
}
