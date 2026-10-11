package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STPresetShadowVal;

/* loaded from: classes14.dex */
public interface CTPresetShadowEffect extends XmlObject {
    public static final DocumentFactory<CTPresetShadowEffect> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPresetShadowEffect> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpresetshadoweffecta9abtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTHslColor addNewHslClr();

    CTPresetColor addNewPrstClr();

    CTSchemeColor addNewSchemeClr();

    CTScRgbColor addNewScrgbClr();

    CTSRgbColor addNewSrgbClr();

    CTSystemColor addNewSysClr();

    int getDir();

    long getDist();

    CTHslColor getHslClr();

    STPresetShadowVal.Enum getPrst();

    CTPresetColor getPrstClr();

    CTSchemeColor getSchemeClr();

    CTScRgbColor getScrgbClr();

    CTSRgbColor getSrgbClr();

    CTSystemColor getSysClr();

    boolean isSetDir();

    boolean isSetDist();

    boolean isSetHslClr();

    boolean isSetPrstClr();

    boolean isSetSchemeClr();

    boolean isSetScrgbClr();

    boolean isSetSrgbClr();

    boolean isSetSysClr();

    void setDir(int i);

    void setDist(long j);

    void setHslClr(CTHslColor cTHslColor);

    void setPrst(STPresetShadowVal.Enum r1);

    void setPrstClr(CTPresetColor cTPresetColor);

    void setSchemeClr(CTSchemeColor cTSchemeColor);

    void setScrgbClr(CTScRgbColor cTScRgbColor);

    void setSrgbClr(CTSRgbColor cTSRgbColor);

    void setSysClr(CTSystemColor cTSystemColor);

    void unsetDir();

    void unsetDist();

    void unsetHslClr();

    void unsetPrstClr();

    void unsetSchemeClr();

    void unsetScrgbClr();

    void unsetSrgbClr();

    void unsetSysClr();

    STPositiveFixedAngle xgetDir();

    STPositiveCoordinate xgetDist();

    STPresetShadowVal xgetPrst();

    void xsetDir(STPositiveFixedAngle sTPositiveFixedAngle);

    void xsetDist(STPositiveCoordinate sTPositiveCoordinate);

    void xsetPrst(STPresetShadowVal sTPresetShadowVal);
}
