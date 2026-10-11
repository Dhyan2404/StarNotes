package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTableCellBorderStyle extends XmlObject {
    public static final DocumentFactory<CTTableCellBorderStyle> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTableCellBorderStyle> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttablecellborderstyle87d0type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTThemeableLineStyle addNewBottom();

    CTOfficeArtExtensionList addNewExtLst();

    CTThemeableLineStyle addNewInsideH();

    CTThemeableLineStyle addNewInsideV();

    CTThemeableLineStyle addNewLeft();

    CTThemeableLineStyle addNewRight();

    CTThemeableLineStyle addNewTl2Br();

    CTThemeableLineStyle addNewTop();

    CTThemeableLineStyle addNewTr2Bl();

    CTThemeableLineStyle getBottom();

    CTOfficeArtExtensionList getExtLst();

    CTThemeableLineStyle getInsideH();

    CTThemeableLineStyle getInsideV();

    CTThemeableLineStyle getLeft();

    CTThemeableLineStyle getRight();

    CTThemeableLineStyle getTl2Br();

    CTThemeableLineStyle getTop();

    CTThemeableLineStyle getTr2Bl();

    boolean isSetBottom();

    boolean isSetExtLst();

    boolean isSetInsideH();

    boolean isSetInsideV();

    boolean isSetLeft();

    boolean isSetRight();

    boolean isSetTl2Br();

    boolean isSetTop();

    boolean isSetTr2Bl();

    void setBottom(CTThemeableLineStyle cTThemeableLineStyle);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setInsideH(CTThemeableLineStyle cTThemeableLineStyle);

    void setInsideV(CTThemeableLineStyle cTThemeableLineStyle);

    void setLeft(CTThemeableLineStyle cTThemeableLineStyle);

    void setRight(CTThemeableLineStyle cTThemeableLineStyle);

    void setTl2Br(CTThemeableLineStyle cTThemeableLineStyle);

    void setTop(CTThemeableLineStyle cTThemeableLineStyle);

    void setTr2Bl(CTThemeableLineStyle cTThemeableLineStyle);

    void unsetBottom();

    void unsetExtLst();

    void unsetInsideH();

    void unsetInsideV();

    void unsetLeft();

    void unsetRight();

    void unsetTl2Br();

    void unsetTop();

    void unsetTr2Bl();
}
