package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTWebSettings extends XmlObject {
    public static final DocumentFactory<CTWebSettings> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWebSettings> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwebsettings31dbtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOnOff addNewAllowPNG();

    CTDivs addNewDivs();

    CTOnOff addNewDoNotOrganizeInFolder();

    CTOnOff addNewDoNotRelyOnCSS();

    CTOnOff addNewDoNotSaveAsSingleFile();

    CTOnOff addNewDoNotUseLongFileNames();

    CTString addNewEncoding();

    CTFrameset addNewFrameset();

    CTOptimizeForBrowser addNewOptimizeForBrowser();

    CTDecimalNumber addNewPixelsPerInch();

    CTOnOff addNewRelyOnVML();

    CTOnOff addNewSaveSmartTagsAsXml();

    CTTargetScreenSz addNewTargetScreenSz();

    CTOnOff getAllowPNG();

    CTDivs getDivs();

    CTOnOff getDoNotOrganizeInFolder();

    CTOnOff getDoNotRelyOnCSS();

    CTOnOff getDoNotSaveAsSingleFile();

    CTOnOff getDoNotUseLongFileNames();

    CTString getEncoding();

    CTFrameset getFrameset();

    CTOptimizeForBrowser getOptimizeForBrowser();

    CTDecimalNumber getPixelsPerInch();

    CTOnOff getRelyOnVML();

    CTOnOff getSaveSmartTagsAsXml();

    CTTargetScreenSz getTargetScreenSz();

    boolean isSetAllowPNG();

    boolean isSetDivs();

    boolean isSetDoNotOrganizeInFolder();

    boolean isSetDoNotRelyOnCSS();

    boolean isSetDoNotSaveAsSingleFile();

    boolean isSetDoNotUseLongFileNames();

    boolean isSetEncoding();

    boolean isSetFrameset();

    boolean isSetOptimizeForBrowser();

    boolean isSetPixelsPerInch();

    boolean isSetRelyOnVML();

    boolean isSetSaveSmartTagsAsXml();

    boolean isSetTargetScreenSz();

    void setAllowPNG(CTOnOff cTOnOff);

    void setDivs(CTDivs cTDivs);

    void setDoNotOrganizeInFolder(CTOnOff cTOnOff);

    void setDoNotRelyOnCSS(CTOnOff cTOnOff);

    void setDoNotSaveAsSingleFile(CTOnOff cTOnOff);

    void setDoNotUseLongFileNames(CTOnOff cTOnOff);

    void setEncoding(CTString cTString);

    void setFrameset(CTFrameset cTFrameset);

    void setOptimizeForBrowser(CTOptimizeForBrowser cTOptimizeForBrowser);

    void setPixelsPerInch(CTDecimalNumber cTDecimalNumber);

    void setRelyOnVML(CTOnOff cTOnOff);

    void setSaveSmartTagsAsXml(CTOnOff cTOnOff);

    void setTargetScreenSz(CTTargetScreenSz cTTargetScreenSz);

    void unsetAllowPNG();

    void unsetDivs();

    void unsetDoNotOrganizeInFolder();

    void unsetDoNotRelyOnCSS();

    void unsetDoNotSaveAsSingleFile();

    void unsetDoNotUseLongFileNames();

    void unsetEncoding();

    void unsetFrameset();

    void unsetOptimizeForBrowser();

    void unsetPixelsPerInch();

    void unsetRelyOnVML();

    void unsetSaveSmartTagsAsXml();

    void unsetTargetScreenSz();
}
