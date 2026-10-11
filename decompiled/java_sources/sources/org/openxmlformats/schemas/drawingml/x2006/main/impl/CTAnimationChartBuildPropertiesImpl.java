package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartBuildProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.STAnimationChartBuildType;

/* loaded from: classes14.dex */
public class CTAnimationChartBuildPropertiesImpl extends XmlComplexContentImpl implements CTAnimationChartBuildProperties {
    private static final QName[] PROPERTY_QNAME = {new QName("", "bld"), new QName("", "animBg")};
    private static final long serialVersionUID = 1;

    public CTAnimationChartBuildPropertiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartBuildProperties
    public boolean getAnimBg() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartBuildProperties
    public String getBld() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartBuildProperties
    public boolean isSetAnimBg() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartBuildProperties
    public boolean isSetBld() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartBuildProperties
    public void setAnimBg(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartBuildProperties
    public void setBld(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartBuildProperties
    public void unsetAnimBg() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartBuildProperties
    public void unsetBld() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartBuildProperties
    public XmlBoolean xgetAnimBg() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[1]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartBuildProperties
    public STAnimationChartBuildType xgetBld() {
        STAnimationChartBuildType sTAnimationChartBuildType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTAnimationChartBuildType = (STAnimationChartBuildType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTAnimationChartBuildType == null) {
                sTAnimationChartBuildType = (STAnimationChartBuildType) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTAnimationChartBuildType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartBuildProperties
    public void xsetAnimBg(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartBuildProperties
    public void xsetBld(STAnimationChartBuildType sTAnimationChartBuildType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAnimationChartBuildType sTAnimationChartBuildType2 = (STAnimationChartBuildType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTAnimationChartBuildType2 == null) {
                sTAnimationChartBuildType2 = (STAnimationChartBuildType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTAnimationChartBuildType2.set(sTAnimationChartBuildType);
        }
    }
}
