package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAudioCD;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAudioFile;
import org.openxmlformats.schemas.drawingml.x2006.main.CTEmbeddedWAVAudioFile;
import org.openxmlformats.schemas.drawingml.x2006.main.CTQuickTimeFile;
import org.openxmlformats.schemas.drawingml.x2006.main.CTVideoFile;
import org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps;
import org.openxmlformats.schemas.presentationml.x2006.main.CTCustomerDataList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPlaceholder;

/* loaded from: classes14.dex */
public class CTApplicationNonVisualDrawingPropsImpl extends XmlComplexContentImpl implements CTApplicationNonVisualDrawingProps {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "ph"), new QName(XSSFRelation.NS_DRAWINGML, "audioCd"), new QName(XSSFRelation.NS_DRAWINGML, "wavAudioFile"), new QName(XSSFRelation.NS_DRAWINGML, "audioFile"), new QName(XSSFRelation.NS_DRAWINGML, "videoFile"), new QName(XSSFRelation.NS_DRAWINGML, "quickTimeFile"), new QName(XSSFRelation.NS_PRESENTATIONML, "custDataLst"), new QName(XSSFRelation.NS_PRESENTATIONML, "extLst"), new QName("", "isPhoto"), new QName("", "userDrawn")};
    private static final long serialVersionUID = 1;

    public CTApplicationNonVisualDrawingPropsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public CTAudioCD addNewAudioCd() {
        CTAudioCD cTAudioCD;
        synchronized (monitor()) {
            check_orphaned();
            cTAudioCD = (CTAudioCD) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTAudioCD;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public CTAudioFile addNewAudioFile() {
        CTAudioFile cTAudioFile;
        synchronized (monitor()) {
            check_orphaned();
            cTAudioFile = (CTAudioFile) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTAudioFile;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public CTCustomerDataList addNewCustDataLst() {
        CTCustomerDataList cTCustomerDataList;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomerDataList = (CTCustomerDataList) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTCustomerDataList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public CTPlaceholder addNewPh() {
        CTPlaceholder cTPlaceholder;
        synchronized (monitor()) {
            check_orphaned();
            cTPlaceholder = (CTPlaceholder) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPlaceholder;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public CTQuickTimeFile addNewQuickTimeFile() {
        CTQuickTimeFile cTQuickTimeFile;
        synchronized (monitor()) {
            check_orphaned();
            cTQuickTimeFile = (CTQuickTimeFile) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTQuickTimeFile;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public CTVideoFile addNewVideoFile() {
        CTVideoFile cTVideoFile;
        synchronized (monitor()) {
            check_orphaned();
            cTVideoFile = (CTVideoFile) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTVideoFile;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public CTEmbeddedWAVAudioFile addNewWavAudioFile() {
        CTEmbeddedWAVAudioFile cTEmbeddedWAVAudioFile;
        synchronized (monitor()) {
            check_orphaned();
            cTEmbeddedWAVAudioFile = (CTEmbeddedWAVAudioFile) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTEmbeddedWAVAudioFile;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public CTAudioCD getAudioCd() {
        CTAudioCD cTAudioCD;
        synchronized (monitor()) {
            check_orphaned();
            cTAudioCD = (CTAudioCD) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTAudioCD == null) {
                cTAudioCD = null;
            }
        }
        return cTAudioCD;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public CTAudioFile getAudioFile() {
        CTAudioFile cTAudioFile;
        synchronized (monitor()) {
            check_orphaned();
            cTAudioFile = (CTAudioFile) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTAudioFile == null) {
                cTAudioFile = null;
            }
        }
        return cTAudioFile;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public CTCustomerDataList getCustDataLst() {
        CTCustomerDataList cTCustomerDataList;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomerDataList = (CTCustomerDataList) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTCustomerDataList == null) {
                cTCustomerDataList = null;
            }
        }
        return cTCustomerDataList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public boolean getIsPhoto() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public CTPlaceholder getPh() {
        CTPlaceholder cTPlaceholder;
        synchronized (monitor()) {
            check_orphaned();
            cTPlaceholder = (CTPlaceholder) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPlaceholder == null) {
                cTPlaceholder = null;
            }
        }
        return cTPlaceholder;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public CTQuickTimeFile getQuickTimeFile() {
        CTQuickTimeFile cTQuickTimeFile;
        synchronized (monitor()) {
            check_orphaned();
            cTQuickTimeFile = (CTQuickTimeFile) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTQuickTimeFile == null) {
                cTQuickTimeFile = null;
            }
        }
        return cTQuickTimeFile;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public boolean getUserDrawn() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public CTVideoFile getVideoFile() {
        CTVideoFile cTVideoFile;
        synchronized (monitor()) {
            check_orphaned();
            cTVideoFile = (CTVideoFile) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTVideoFile == null) {
                cTVideoFile = null;
            }
        }
        return cTVideoFile;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public CTEmbeddedWAVAudioFile getWavAudioFile() {
        CTEmbeddedWAVAudioFile cTEmbeddedWAVAudioFile;
        synchronized (monitor()) {
            check_orphaned();
            cTEmbeddedWAVAudioFile = (CTEmbeddedWAVAudioFile) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTEmbeddedWAVAudioFile == null) {
                cTEmbeddedWAVAudioFile = null;
            }
        }
        return cTEmbeddedWAVAudioFile;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public boolean isSetAudioCd() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public boolean isSetAudioFile() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public boolean isSetCustDataLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public boolean isSetIsPhoto() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public boolean isSetPh() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public boolean isSetQuickTimeFile() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public boolean isSetUserDrawn() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public boolean isSetVideoFile() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public boolean isSetWavAudioFile() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void setAudioCd(CTAudioCD cTAudioCD) {
        generatedSetterHelperImpl(cTAudioCD, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void setAudioFile(CTAudioFile cTAudioFile) {
        generatedSetterHelperImpl(cTAudioFile, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void setCustDataLst(CTCustomerDataList cTCustomerDataList) {
        generatedSetterHelperImpl(cTCustomerDataList, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void setIsPhoto(boolean z) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void setPh(CTPlaceholder cTPlaceholder) {
        generatedSetterHelperImpl(cTPlaceholder, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void setQuickTimeFile(CTQuickTimeFile cTQuickTimeFile) {
        generatedSetterHelperImpl(cTQuickTimeFile, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void setUserDrawn(boolean z) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void setVideoFile(CTVideoFile cTVideoFile) {
        generatedSetterHelperImpl(cTVideoFile, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void setWavAudioFile(CTEmbeddedWAVAudioFile cTEmbeddedWAVAudioFile) {
        generatedSetterHelperImpl(cTEmbeddedWAVAudioFile, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void unsetAudioCd() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void unsetAudioFile() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void unsetCustDataLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void unsetIsPhoto() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void unsetPh() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void unsetQuickTimeFile() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void unsetUserDrawn() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void unsetVideoFile() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void unsetWavAudioFile() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public XmlBoolean xgetIsPhoto() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public XmlBoolean xgetUserDrawn() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void xsetIsPhoto(XmlBoolean xmlBoolean) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps
    public void xsetUserDrawn(XmlBoolean xmlBoolean) {
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
}
