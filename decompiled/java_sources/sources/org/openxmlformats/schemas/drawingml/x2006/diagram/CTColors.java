package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STClrAppMethod;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STHueDir;
import org.openxmlformats.schemas.drawingml.x2006.main.CTHslColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSRgbColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSystemColor;

/* loaded from: classes14.dex */
public interface CTColors extends XmlObject {
    public static final DocumentFactory<CTColors> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTColors> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcolorsfe01type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTHslColor addNewHslClr();

    CTPresetColor addNewPrstClr();

    CTSchemeColor addNewSchemeClr();

    CTScRgbColor addNewScrgbClr();

    CTSRgbColor addNewSrgbClr();

    CTSystemColor addNewSysClr();

    CTHslColor getHslClrArray(int i);

    CTHslColor[] getHslClrArray();

    List<CTHslColor> getHslClrList();

    STHueDir.Enum getHueDir();

    STClrAppMethod.Enum getMeth();

    CTPresetColor getPrstClrArray(int i);

    CTPresetColor[] getPrstClrArray();

    List<CTPresetColor> getPrstClrList();

    CTSchemeColor getSchemeClrArray(int i);

    CTSchemeColor[] getSchemeClrArray();

    List<CTSchemeColor> getSchemeClrList();

    CTScRgbColor getScrgbClrArray(int i);

    CTScRgbColor[] getScrgbClrArray();

    List<CTScRgbColor> getScrgbClrList();

    CTSRgbColor getSrgbClrArray(int i);

    CTSRgbColor[] getSrgbClrArray();

    List<CTSRgbColor> getSrgbClrList();

    CTSystemColor getSysClrArray(int i);

    CTSystemColor[] getSysClrArray();

    List<CTSystemColor> getSysClrList();

    CTHslColor insertNewHslClr(int i);

    CTPresetColor insertNewPrstClr(int i);

    CTSchemeColor insertNewSchemeClr(int i);

    CTScRgbColor insertNewScrgbClr(int i);

    CTSRgbColor insertNewSrgbClr(int i);

    CTSystemColor insertNewSysClr(int i);

    boolean isSetHueDir();

    boolean isSetMeth();

    void removeHslClr(int i);

    void removePrstClr(int i);

    void removeSchemeClr(int i);

    void removeScrgbClr(int i);

    void removeSrgbClr(int i);

    void removeSysClr(int i);

    void setHslClrArray(int i, CTHslColor cTHslColor);

    void setHslClrArray(CTHslColor[] cTHslColorArr);

    void setHueDir(STHueDir.Enum r1);

    void setMeth(STClrAppMethod.Enum r1);

    void setPrstClrArray(int i, CTPresetColor cTPresetColor);

    void setPrstClrArray(CTPresetColor[] cTPresetColorArr);

    void setSchemeClrArray(int i, CTSchemeColor cTSchemeColor);

    void setSchemeClrArray(CTSchemeColor[] cTSchemeColorArr);

    void setScrgbClrArray(int i, CTScRgbColor cTScRgbColor);

    void setScrgbClrArray(CTScRgbColor[] cTScRgbColorArr);

    void setSrgbClrArray(int i, CTSRgbColor cTSRgbColor);

    void setSrgbClrArray(CTSRgbColor[] cTSRgbColorArr);

    void setSysClrArray(int i, CTSystemColor cTSystemColor);

    void setSysClrArray(CTSystemColor[] cTSystemColorArr);

    int sizeOfHslClrArray();

    int sizeOfPrstClrArray();

    int sizeOfSchemeClrArray();

    int sizeOfScrgbClrArray();

    int sizeOfSrgbClrArray();

    int sizeOfSysClrArray();

    void unsetHueDir();

    void unsetMeth();

    STHueDir xgetHueDir();

    STClrAppMethod xgetMeth();

    void xsetHueDir(STHueDir sTHueDir);

    void xsetMeth(STClrAppMethod sTClrAppMethod);
}
