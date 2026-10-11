package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateIntervalPercentage;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateIntervalTime;
import org.openxmlformats.schemas.presentationml.x2006.main.STIterateType;

/* loaded from: classes14.dex */
public class CTTLIterateDataImpl extends XmlComplexContentImpl implements CTTLIterateData {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "tmAbs"), new QName(XSSFRelation.NS_PRESENTATIONML, "tmPct"), new QName("", "type"), new QName("", "backwards")};
    private static final long serialVersionUID = 1;

    public CTTLIterateDataImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public CTTLIterateIntervalTime addNewTmAbs() {
        CTTLIterateIntervalTime cTTLIterateIntervalTime;
        synchronized (monitor()) {
            check_orphaned();
            cTTLIterateIntervalTime = (CTTLIterateIntervalTime) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLIterateIntervalTime;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public CTTLIterateIntervalPercentage addNewTmPct() {
        CTTLIterateIntervalPercentage cTTLIterateIntervalPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTTLIterateIntervalPercentage = (CTTLIterateIntervalPercentage) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTLIterateIntervalPercentage;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public boolean getBackwards() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public CTTLIterateIntervalTime getTmAbs() {
        CTTLIterateIntervalTime cTTLIterateIntervalTime;
        synchronized (monitor()) {
            check_orphaned();
            cTTLIterateIntervalTime = (CTTLIterateIntervalTime) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTLIterateIntervalTime == null) {
                cTTLIterateIntervalTime = null;
            }
        }
        return cTTLIterateIntervalTime;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public CTTLIterateIntervalPercentage getTmPct() {
        CTTLIterateIntervalPercentage cTTLIterateIntervalPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTTLIterateIntervalPercentage = (CTTLIterateIntervalPercentage) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTLIterateIntervalPercentage == null) {
                cTTLIterateIntervalPercentage = null;
            }
        }
        return cTTLIterateIntervalPercentage;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public STIterateType.Enum getType() {
        STIterateType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            r5 = simpleValue == null ? null : (STIterateType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public boolean isSetBackwards() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public boolean isSetTmAbs() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public boolean isSetTmPct() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public boolean isSetType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public void setBackwards(boolean z) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public void setTmAbs(CTTLIterateIntervalTime cTTLIterateIntervalTime) {
        generatedSetterHelperImpl(cTTLIterateIntervalTime, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public void setTmPct(CTTLIterateIntervalPercentage cTTLIterateIntervalPercentage) {
        generatedSetterHelperImpl(cTTLIterateIntervalPercentage, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public void setType(STIterateType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public void unsetBackwards() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public void unsetTmAbs() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public void unsetTmPct() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public XmlBoolean xgetBackwards() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public STIterateType xgetType() {
        STIterateType sTIterateType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTIterateType = (STIterateType) typeStore.find_attribute_user(qNameArr[2]);
            if (sTIterateType == null) {
                sTIterateType = (STIterateType) get_default_attribute_value(qNameArr[2]);
            }
        }
        return sTIterateType;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public void xsetBackwards(XmlBoolean xmlBoolean) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateData
    public void xsetType(STIterateType sTIterateType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STIterateType sTIterateType2 = (STIterateType) typeStore.find_attribute_user(qNameArr[2]);
            if (sTIterateType2 == null) {
                sTIterateType2 = (STIterateType) get_store().add_attribute_user(qNameArr[2]);
            }
            sTIterateType2.set(sTIterateType);
        }
    }
}
