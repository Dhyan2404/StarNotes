package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDivs;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOptimizeForBrowser;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTargetScreenSz;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings;

/* loaded from: classes16.dex */
public class CTWebSettingsImpl extends XmlComplexContentImpl implements CTWebSettings {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "frameset"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "divs"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "encoding"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "optimizeForBrowser"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "relyOnVML"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "allowPNG"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "doNotRelyOnCSS"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "doNotSaveAsSingleFile"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "doNotOrganizeInFolder"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "doNotUseLongFileNames"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "pixelsPerInch"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "targetScreenSz"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "saveSmartTagsAsXml")};
    private static final long serialVersionUID = 1;

    public CTWebSettingsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOnOff addNewAllowPNG() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTDivs addNewDivs() {
        CTDivs cTDivs;
        synchronized (monitor()) {
            check_orphaned();
            cTDivs = (CTDivs) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTDivs;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOnOff addNewDoNotOrganizeInFolder() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOnOff addNewDoNotRelyOnCSS() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOnOff addNewDoNotSaveAsSingleFile() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOnOff addNewDoNotUseLongFileNames() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTString addNewEncoding() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTFrameset addNewFrameset() {
        CTFrameset cTFrameset;
        synchronized (monitor()) {
            check_orphaned();
            cTFrameset = (CTFrameset) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFrameset;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOptimizeForBrowser addNewOptimizeForBrowser() {
        CTOptimizeForBrowser cTOptimizeForBrowser;
        synchronized (monitor()) {
            check_orphaned();
            cTOptimizeForBrowser = (CTOptimizeForBrowser) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTOptimizeForBrowser;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTDecimalNumber addNewPixelsPerInch() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOnOff addNewRelyOnVML() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOnOff addNewSaveSmartTagsAsXml() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTTargetScreenSz addNewTargetScreenSz() {
        CTTargetScreenSz cTTargetScreenSz;
        synchronized (monitor()) {
            check_orphaned();
            cTTargetScreenSz = (CTTargetScreenSz) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTTargetScreenSz;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOnOff getAllowPNG() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTDivs getDivs() {
        CTDivs cTDivs;
        synchronized (monitor()) {
            check_orphaned();
            cTDivs = (CTDivs) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTDivs == null) {
                cTDivs = null;
            }
        }
        return cTDivs;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOnOff getDoNotOrganizeInFolder() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOnOff getDoNotRelyOnCSS() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOnOff getDoNotSaveAsSingleFile() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOnOff getDoNotUseLongFileNames() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[9], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTString getEncoding() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTFrameset getFrameset() {
        CTFrameset cTFrameset;
        synchronized (monitor()) {
            check_orphaned();
            cTFrameset = (CTFrameset) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTFrameset == null) {
                cTFrameset = null;
            }
        }
        return cTFrameset;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOptimizeForBrowser getOptimizeForBrowser() {
        CTOptimizeForBrowser cTOptimizeForBrowser;
        synchronized (monitor()) {
            check_orphaned();
            cTOptimizeForBrowser = (CTOptimizeForBrowser) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTOptimizeForBrowser == null) {
                cTOptimizeForBrowser = null;
            }
        }
        return cTOptimizeForBrowser;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTDecimalNumber getPixelsPerInch() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().find_element_user(PROPERTY_QNAME[10], 0);
            if (cTDecimalNumber == null) {
                cTDecimalNumber = null;
            }
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOnOff getRelyOnVML() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTOnOff getSaveSmartTagsAsXml() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[12], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public CTTargetScreenSz getTargetScreenSz() {
        CTTargetScreenSz cTTargetScreenSz;
        synchronized (monitor()) {
            check_orphaned();
            cTTargetScreenSz = (CTTargetScreenSz) get_store().find_element_user(PROPERTY_QNAME[11], 0);
            if (cTTargetScreenSz == null) {
                cTTargetScreenSz = null;
            }
        }
        return cTTargetScreenSz;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public boolean isSetAllowPNG() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public boolean isSetDivs() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public boolean isSetDoNotOrganizeInFolder() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public boolean isSetDoNotRelyOnCSS() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public boolean isSetDoNotSaveAsSingleFile() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public boolean isSetDoNotUseLongFileNames() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[9]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public boolean isSetEncoding() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public boolean isSetFrameset() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public boolean isSetOptimizeForBrowser() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public boolean isSetPixelsPerInch() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[10]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public boolean isSetRelyOnVML() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public boolean isSetSaveSmartTagsAsXml() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[12]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public boolean isSetTargetScreenSz() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[11]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void setAllowPNG(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void setDivs(CTDivs cTDivs) {
        generatedSetterHelperImpl(cTDivs, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void setDoNotOrganizeInFolder(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void setDoNotRelyOnCSS(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void setDoNotSaveAsSingleFile(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void setDoNotUseLongFileNames(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[9], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void setEncoding(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void setFrameset(CTFrameset cTFrameset) {
        generatedSetterHelperImpl(cTFrameset, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void setOptimizeForBrowser(CTOptimizeForBrowser cTOptimizeForBrowser) {
        generatedSetterHelperImpl(cTOptimizeForBrowser, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void setPixelsPerInch(CTDecimalNumber cTDecimalNumber) {
        generatedSetterHelperImpl(cTDecimalNumber, PROPERTY_QNAME[10], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void setRelyOnVML(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void setSaveSmartTagsAsXml(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[12], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void setTargetScreenSz(CTTargetScreenSz cTTargetScreenSz) {
        generatedSetterHelperImpl(cTTargetScreenSz, PROPERTY_QNAME[11], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void unsetAllowPNG() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void unsetDivs() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void unsetDoNotOrganizeInFolder() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void unsetDoNotRelyOnCSS() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void unsetDoNotSaveAsSingleFile() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void unsetDoNotUseLongFileNames() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void unsetEncoding() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void unsetFrameset() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void unsetOptimizeForBrowser() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void unsetPixelsPerInch() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void unsetRelyOnVML() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void unsetSaveSmartTagsAsXml() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings
    public void unsetTargetScreenSz() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], 0);
        }
    }
}
