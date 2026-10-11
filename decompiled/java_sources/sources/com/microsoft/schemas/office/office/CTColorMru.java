package com.microsoft.schemas.office.office;

import com.microsoft.schemas.vml.STExt;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTColorMru extends XmlObject {
    public static final DocumentFactory<CTColorMru> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTColorMru> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcolormrue2f0type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getColors();

    STExt.Enum getExt();

    boolean isSetColors();

    boolean isSetExt();

    void setColors(String str);

    void setExt(STExt.Enum r1);

    void unsetColors();

    void unsetExt();

    XmlString xgetColors();

    STExt xgetExt();

    void xsetColors(XmlString xmlString);

    void xsetExt(STExt sTExt);
}
