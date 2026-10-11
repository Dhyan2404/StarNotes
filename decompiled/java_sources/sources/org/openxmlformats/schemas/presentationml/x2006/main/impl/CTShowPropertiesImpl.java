package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.presentationml.x2006.main.CTCustomShowId;
import org.openxmlformats.schemas.presentationml.x2006.main.CTEmpty;
import org.openxmlformats.schemas.presentationml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTIndexRange;
import org.openxmlformats.schemas.presentationml.x2006.main.CTShowInfoBrowse;
import org.openxmlformats.schemas.presentationml.x2006.main.CTShowInfoKiosk;
import org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties;

/* loaded from: classes14.dex */
public class CTShowPropertiesImpl extends XmlComplexContentImpl implements CTShowProperties {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "present"), new QName(XSSFRelation.NS_PRESENTATIONML, "browse"), new QName(XSSFRelation.NS_PRESENTATIONML, "kiosk"), new QName(XSSFRelation.NS_PRESENTATIONML, "sldAll"), new QName(XSSFRelation.NS_PRESENTATIONML, "sldRg"), new QName(XSSFRelation.NS_PRESENTATIONML, "custShow"), new QName(XSSFRelation.NS_PRESENTATIONML, "penClr"), new QName(XSSFRelation.NS_PRESENTATIONML, "extLst"), new QName("", "loop"), new QName("", "showNarration"), new QName("", "showAnimation"), new QName("", "useTimings")};
    private static final long serialVersionUID = 1;

    public CTShowPropertiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTShowInfoBrowse addNewBrowse() {
        CTShowInfoBrowse cTShowInfoBrowse;
        synchronized (monitor()) {
            check_orphaned();
            cTShowInfoBrowse = (CTShowInfoBrowse) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTShowInfoBrowse;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTCustomShowId addNewCustShow() {
        CTCustomShowId cTCustomShowId;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomShowId = (CTCustomShowId) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTCustomShowId;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTShowInfoKiosk addNewKiosk() {
        CTShowInfoKiosk cTShowInfoKiosk;
        synchronized (monitor()) {
            check_orphaned();
            cTShowInfoKiosk = (CTShowInfoKiosk) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTShowInfoKiosk;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTColor addNewPenClr() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTEmpty addNewPresent() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTEmpty addNewSldAll() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTIndexRange addNewSldRg() {
        CTIndexRange cTIndexRange;
        synchronized (monitor()) {
            check_orphaned();
            cTIndexRange = (CTIndexRange) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTIndexRange;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTShowInfoBrowse getBrowse() {
        CTShowInfoBrowse cTShowInfoBrowse;
        synchronized (monitor()) {
            check_orphaned();
            cTShowInfoBrowse = (CTShowInfoBrowse) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTShowInfoBrowse == null) {
                cTShowInfoBrowse = null;
            }
        }
        return cTShowInfoBrowse;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTCustomShowId getCustShow() {
        CTCustomShowId cTCustomShowId;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomShowId = (CTCustomShowId) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTCustomShowId == null) {
                cTCustomShowId = null;
            }
        }
        return cTCustomShowId;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTShowInfoKiosk getKiosk() {
        CTShowInfoKiosk cTShowInfoKiosk;
        synchronized (monitor()) {
            check_orphaned();
            cTShowInfoKiosk = (CTShowInfoKiosk) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTShowInfoKiosk == null) {
                cTShowInfoKiosk = null;
            }
        }
        return cTShowInfoKiosk;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean getLoop() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[8]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTColor getPenClr() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTColor == null) {
                cTColor = null;
            }
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTEmpty getPresent() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTEmpty == null) {
                cTEmpty = null;
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean getShowAnimation() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[10]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean getShowNarration() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[9]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTEmpty getSldAll() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTEmpty == null) {
                cTEmpty = null;
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public CTIndexRange getSldRg() {
        CTIndexRange cTIndexRange;
        synchronized (monitor()) {
            check_orphaned();
            cTIndexRange = (CTIndexRange) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTIndexRange == null) {
                cTIndexRange = null;
            }
        }
        return cTIndexRange;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean getUseTimings() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[11]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[11]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean isSetBrowse() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean isSetCustShow() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean isSetKiosk() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean isSetLoop() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean isSetPenClr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean isSetPresent() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean isSetShowAnimation() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean isSetShowNarration() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean isSetSldAll() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean isSetSldRg() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public boolean isSetUseTimings() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[11]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void setBrowse(CTShowInfoBrowse cTShowInfoBrowse) {
        generatedSetterHelperImpl(cTShowInfoBrowse, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void setCustShow(CTCustomShowId cTCustomShowId) {
        generatedSetterHelperImpl(cTCustomShowId, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void setKiosk(CTShowInfoKiosk cTShowInfoKiosk) {
        generatedSetterHelperImpl(cTShowInfoKiosk, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void setLoop(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void setPenClr(CTColor cTColor) {
        generatedSetterHelperImpl(cTColor, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void setPresent(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void setShowAnimation(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[10]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void setShowNarration(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void setSldAll(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void setSldRg(CTIndexRange cTIndexRange) {
        generatedSetterHelperImpl(cTIndexRange, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void setUseTimings(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[11]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[11]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void unsetBrowse() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void unsetCustShow() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void unsetKiosk() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void unsetLoop() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void unsetPenClr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void unsetPresent() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void unsetShowAnimation() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void unsetShowNarration() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void unsetSldAll() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void unsetSldRg() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void unsetUseTimings() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[11]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public XmlBoolean xgetLoop() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[8]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[8]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public XmlBoolean xgetShowAnimation() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[10]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[10]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public XmlBoolean xgetShowNarration() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[9]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public XmlBoolean xgetUseTimings() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[11]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[11]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void xsetLoop(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[8]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[8]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void xsetShowAnimation(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[10]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[10]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void xsetShowNarration(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[9]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties
    public void xsetUseTimings(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[11]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[11]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }
}
