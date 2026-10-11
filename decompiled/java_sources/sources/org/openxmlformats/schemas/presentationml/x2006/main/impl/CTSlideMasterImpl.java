package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorMapping;
import org.openxmlformats.schemas.presentationml.x2006.main.CTCommonSlideData;
import org.openxmlformats.schemas.presentationml.x2006.main.CTExtensionListModify;
import org.openxmlformats.schemas.presentationml.x2006.main.CTHeaderFooter;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideLayoutIdList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMasterTextStyles;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition;

/* loaded from: classes14.dex */
public class CTSlideMasterImpl extends XmlComplexContentImpl implements CTSlideMaster {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cSld"), new QName(XSSFRelation.NS_PRESENTATIONML, "clrMap"), new QName(XSSFRelation.NS_PRESENTATIONML, "sldLayoutIdLst"), new QName(XSSFRelation.NS_PRESENTATIONML, AnimatedStateListDrawableCompat.f876Z), new QName(XSSFRelation.NS_PRESENTATIONML, "timing"), new QName(XSSFRelation.NS_PRESENTATIONML, "hf"), new QName(XSSFRelation.NS_PRESENTATIONML, "txStyles"), new QName(XSSFRelation.NS_PRESENTATIONML, "extLst"), new QName("", "preserve")};
    private static final long serialVersionUID = 1;

    public CTSlideMasterImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTCommonSlideData addNewCSld() {
        CTCommonSlideData cTCommonSlideData;
        synchronized (monitor()) {
            check_orphaned();
            cTCommonSlideData = (CTCommonSlideData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCommonSlideData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTColorMapping addNewClrMap() {
        CTColorMapping cTColorMapping;
        synchronized (monitor()) {
            check_orphaned();
            cTColorMapping = (CTColorMapping) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTColorMapping;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTExtensionListModify addNewExtLst() {
        CTExtensionListModify cTExtensionListModify;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionListModify = (CTExtensionListModify) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTExtensionListModify;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTHeaderFooter addNewHf() {
        CTHeaderFooter cTHeaderFooter;
        synchronized (monitor()) {
            check_orphaned();
            cTHeaderFooter = (CTHeaderFooter) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTHeaderFooter;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTSlideLayoutIdList addNewSldLayoutIdLst() {
        CTSlideLayoutIdList cTSlideLayoutIdList;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideLayoutIdList = (CTSlideLayoutIdList) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTSlideLayoutIdList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTSlideTiming addNewTiming() {
        CTSlideTiming cTSlideTiming;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideTiming = (CTSlideTiming) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTSlideTiming;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTSlideTransition addNewTransition() {
        CTSlideTransition cTSlideTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideTransition = (CTSlideTransition) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTSlideTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTSlideMasterTextStyles addNewTxStyles() {
        CTSlideMasterTextStyles cTSlideMasterTextStyles;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideMasterTextStyles = (CTSlideMasterTextStyles) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTSlideMasterTextStyles;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTCommonSlideData getCSld() {
        CTCommonSlideData cTCommonSlideData;
        synchronized (monitor()) {
            check_orphaned();
            cTCommonSlideData = (CTCommonSlideData) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTCommonSlideData == null) {
                cTCommonSlideData = null;
            }
        }
        return cTCommonSlideData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTColorMapping getClrMap() {
        CTColorMapping cTColorMapping;
        synchronized (monitor()) {
            check_orphaned();
            cTColorMapping = (CTColorMapping) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTColorMapping == null) {
                cTColorMapping = null;
            }
        }
        return cTColorMapping;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTExtensionListModify getExtLst() {
        CTExtensionListModify cTExtensionListModify;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionListModify = (CTExtensionListModify) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTExtensionListModify == null) {
                cTExtensionListModify = null;
            }
        }
        return cTExtensionListModify;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTHeaderFooter getHf() {
        CTHeaderFooter cTHeaderFooter;
        synchronized (monitor()) {
            check_orphaned();
            cTHeaderFooter = (CTHeaderFooter) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTHeaderFooter == null) {
                cTHeaderFooter = null;
            }
        }
        return cTHeaderFooter;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public boolean getPreserve() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTSlideLayoutIdList getSldLayoutIdLst() {
        CTSlideLayoutIdList cTSlideLayoutIdList;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideLayoutIdList = (CTSlideLayoutIdList) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTSlideLayoutIdList == null) {
                cTSlideLayoutIdList = null;
            }
        }
        return cTSlideLayoutIdList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTSlideTiming getTiming() {
        CTSlideTiming cTSlideTiming;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideTiming = (CTSlideTiming) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTSlideTiming == null) {
                cTSlideTiming = null;
            }
        }
        return cTSlideTiming;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTSlideTransition getTransition() {
        CTSlideTransition cTSlideTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideTransition = (CTSlideTransition) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTSlideTransition == null) {
                cTSlideTransition = null;
            }
        }
        return cTSlideTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public CTSlideMasterTextStyles getTxStyles() {
        CTSlideMasterTextStyles cTSlideMasterTextStyles;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideMasterTextStyles = (CTSlideMasterTextStyles) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTSlideMasterTextStyles == null) {
                cTSlideMasterTextStyles = null;
            }
        }
        return cTSlideMasterTextStyles;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public boolean isSetHf() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public boolean isSetPreserve() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public boolean isSetSldLayoutIdLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public boolean isSetTiming() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public boolean isSetTransition() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public boolean isSetTxStyles() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void setCSld(CTCommonSlideData cTCommonSlideData) {
        generatedSetterHelperImpl(cTCommonSlideData, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void setClrMap(CTColorMapping cTColorMapping) {
        generatedSetterHelperImpl(cTColorMapping, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void setExtLst(CTExtensionListModify cTExtensionListModify) {
        generatedSetterHelperImpl(cTExtensionListModify, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void setHf(CTHeaderFooter cTHeaderFooter) {
        generatedSetterHelperImpl(cTHeaderFooter, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void setPreserve(boolean z) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void setSldLayoutIdLst(CTSlideLayoutIdList cTSlideLayoutIdList) {
        generatedSetterHelperImpl(cTSlideLayoutIdList, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void setTiming(CTSlideTiming cTSlideTiming) {
        generatedSetterHelperImpl(cTSlideTiming, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void setTransition(CTSlideTransition cTSlideTransition) {
        generatedSetterHelperImpl(cTSlideTransition, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void setTxStyles(CTSlideMasterTextStyles cTSlideMasterTextStyles) {
        generatedSetterHelperImpl(cTSlideMasterTextStyles, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void unsetHf() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void unsetPreserve() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void unsetSldLayoutIdLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void unsetTiming() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void unsetTransition() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void unsetTxStyles() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public XmlBoolean xgetPreserve() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster
    public void xsetPreserve(XmlBoolean xmlBoolean) {
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
}
