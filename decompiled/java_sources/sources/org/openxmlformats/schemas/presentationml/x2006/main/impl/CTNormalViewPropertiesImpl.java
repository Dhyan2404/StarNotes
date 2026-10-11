package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewPortion;
import org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.STSplitterBarState;

/* loaded from: classes14.dex */
public class CTNormalViewPropertiesImpl extends XmlComplexContentImpl implements CTNormalViewProperties {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "restoredLeft"), new QName(XSSFRelation.NS_PRESENTATIONML, "restoredTop"), new QName(XSSFRelation.NS_PRESENTATIONML, "extLst"), new QName("", "showOutlineIcons"), new QName("", "snapVertSplitter"), new QName("", "vertBarState"), new QName("", "horzBarState"), new QName("", "preferSingleView")};
    private static final long serialVersionUID = 1;

    public CTNormalViewPropertiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public CTNormalViewPortion addNewRestoredLeft() {
        CTNormalViewPortion cTNormalViewPortion;
        synchronized (monitor()) {
            check_orphaned();
            cTNormalViewPortion = (CTNormalViewPortion) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTNormalViewPortion;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public CTNormalViewPortion addNewRestoredTop() {
        CTNormalViewPortion cTNormalViewPortion;
        synchronized (monitor()) {
            check_orphaned();
            cTNormalViewPortion = (CTNormalViewPortion) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTNormalViewPortion;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public STSplitterBarState.Enum getHorzBarState() {
        STSplitterBarState.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[6]);
            }
            r5 = simpleValue == null ? null : (STSplitterBarState.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public boolean getPreferSingleView() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[7]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public CTNormalViewPortion getRestoredLeft() {
        CTNormalViewPortion cTNormalViewPortion;
        synchronized (monitor()) {
            check_orphaned();
            cTNormalViewPortion = (CTNormalViewPortion) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTNormalViewPortion == null) {
                cTNormalViewPortion = null;
            }
        }
        return cTNormalViewPortion;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public CTNormalViewPortion getRestoredTop() {
        CTNormalViewPortion cTNormalViewPortion;
        synchronized (monitor()) {
            check_orphaned();
            cTNormalViewPortion = (CTNormalViewPortion) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTNormalViewPortion == null) {
                cTNormalViewPortion = null;
            }
        }
        return cTNormalViewPortion;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public boolean getShowOutlineIcons() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[3]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public boolean getSnapVertSplitter() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[4]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public STSplitterBarState.Enum getVertBarState() {
        STSplitterBarState.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[5]);
            }
            r5 = simpleValue == null ? null : (STSplitterBarState.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public boolean isSetHorzBarState() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public boolean isSetPreferSingleView() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public boolean isSetShowOutlineIcons() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public boolean isSetSnapVertSplitter() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public boolean isSetVertBarState() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void setHorzBarState(STSplitterBarState.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void setPreferSingleView(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void setRestoredLeft(CTNormalViewPortion cTNormalViewPortion) {
        generatedSetterHelperImpl(cTNormalViewPortion, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void setRestoredTop(CTNormalViewPortion cTNormalViewPortion) {
        generatedSetterHelperImpl(cTNormalViewPortion, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void setShowOutlineIcons(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void setSnapVertSplitter(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void setVertBarState(STSplitterBarState.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void unsetHorzBarState() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void unsetPreferSingleView() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void unsetShowOutlineIcons() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void unsetSnapVertSplitter() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void unsetVertBarState() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public STSplitterBarState xgetHorzBarState() {
        STSplitterBarState sTSplitterBarState;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTSplitterBarState = (STSplitterBarState) typeStore.find_attribute_user(qNameArr[6]);
            if (sTSplitterBarState == null) {
                sTSplitterBarState = (STSplitterBarState) get_default_attribute_value(qNameArr[6]);
            }
        }
        return sTSplitterBarState;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public XmlBoolean xgetPreferSingleView() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[7]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public XmlBoolean xgetShowOutlineIcons() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[3]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public XmlBoolean xgetSnapVertSplitter() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[4]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public STSplitterBarState xgetVertBarState() {
        STSplitterBarState sTSplitterBarState;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTSplitterBarState = (STSplitterBarState) typeStore.find_attribute_user(qNameArr[5]);
            if (sTSplitterBarState == null) {
                sTSplitterBarState = (STSplitterBarState) get_default_attribute_value(qNameArr[5]);
            }
        }
        return sTSplitterBarState;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void xsetHorzBarState(STSplitterBarState sTSplitterBarState) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STSplitterBarState sTSplitterBarState2 = (STSplitterBarState) typeStore.find_attribute_user(qNameArr[6]);
            if (sTSplitterBarState2 == null) {
                sTSplitterBarState2 = (STSplitterBarState) get_store().add_attribute_user(qNameArr[6]);
            }
            sTSplitterBarState2.set(sTSplitterBarState);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void xsetPreferSingleView(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[7]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void xsetShowOutlineIcons(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void xsetSnapVertSplitter(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties
    public void xsetVertBarState(STSplitterBarState sTSplitterBarState) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STSplitterBarState sTSplitterBarState2 = (STSplitterBarState) typeStore.find_attribute_user(qNameArr[5]);
            if (sTSplitterBarState2 == null) {
                sTSplitterBarState2 = (STSplitterBarState) get_store().add_attribute_user(qNameArr[5]);
            }
            sTSplitterBarState2.set(sTSplitterBarState);
        }
    }
}
