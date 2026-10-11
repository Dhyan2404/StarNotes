package com.microsoft.schemas.office.office;

import com.microsoft.schemas.vml.STExt;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STColorType;

/* loaded from: classes7.dex */
public interface CTColorMenu extends XmlObject {
    public static final DocumentFactory<CTColorMenu> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTColorMenu> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcolormenu029btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STExt.Enum getExt();

    String getExtrusioncolor();

    String getFillcolor();

    String getShadowcolor();

    String getStrokecolor();

    boolean isSetExt();

    boolean isSetExtrusioncolor();

    boolean isSetFillcolor();

    boolean isSetShadowcolor();

    boolean isSetStrokecolor();

    void setExt(STExt.Enum r1);

    void setExtrusioncolor(String str);

    void setFillcolor(String str);

    void setShadowcolor(String str);

    void setStrokecolor(String str);

    void unsetExt();

    void unsetExtrusioncolor();

    void unsetFillcolor();

    void unsetShadowcolor();

    void unsetStrokecolor();

    STExt xgetExt();

    STColorType xgetExtrusioncolor();

    STColorType xgetFillcolor();

    STColorType xgetShadowcolor();

    STColorType xgetStrokecolor();

    void xsetExt(STExt sTExt);

    void xsetExtrusioncolor(STColorType sTColorType);

    void xsetFillcolor(STColorType sTColorType);

    void xsetShadowcolor(STColorType sTColorType);

    void xsetStrokecolor(STColorType sTColorType);
}
