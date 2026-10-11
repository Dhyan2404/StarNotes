package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement;
import org.openxmlformats.schemas.drawingml.x2006.main.STChartBuildStep;

/* loaded from: classes14.dex */
public class CTAnimationChartElementImpl extends XmlComplexContentImpl implements CTAnimationChartElement {
    private static final QName[] PROPERTY_QNAME = {new QName("", "seriesIdx"), new QName("", "categoryIdx"), new QName("", "bldStep")};
    private static final long serialVersionUID = 1;

    public CTAnimationChartElementImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public STChartBuildStep.Enum getBldStep() {
        STChartBuildStep.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            r3 = simpleValue == null ? null : (STChartBuildStep.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public int getCategoryIdx() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public int getSeriesIdx() {
        int i;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            i = 0;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            if (simpleValue != null) {
                i = simpleValue.getIntValue();
            }
        }
        return i;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public boolean isSetCategoryIdx() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public boolean isSetSeriesIdx() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public void setBldStep(STChartBuildStep.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public void setCategoryIdx(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public void setSeriesIdx(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public void unsetCategoryIdx() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public void unsetSeriesIdx() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public STChartBuildStep xgetBldStep() {
        STChartBuildStep sTChartBuildStep;
        synchronized (monitor()) {
            check_orphaned();
            sTChartBuildStep = (STChartBuildStep) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTChartBuildStep;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public XmlInt xgetCategoryIdx() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlInt = (XmlInt) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlInt == null) {
                xmlInt = (XmlInt) get_default_attribute_value(qNameArr[1]);
            }
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public XmlInt xgetSeriesIdx() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlInt = (XmlInt) typeStore.find_attribute_user(qNameArr[0]);
            if (xmlInt == null) {
                xmlInt = (XmlInt) get_default_attribute_value(qNameArr[0]);
            }
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public void xsetBldStep(STChartBuildStep sTChartBuildStep) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STChartBuildStep sTChartBuildStep2 = (STChartBuildStep) typeStore.find_attribute_user(qNameArr[2]);
            if (sTChartBuildStep2 == null) {
                sTChartBuildStep2 = (STChartBuildStep) get_store().add_attribute_user(qNameArr[2]);
            }
            sTChartBuildStep2.set(sTChartBuildStep);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public void xsetCategoryIdx(XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInt xmlInt2 = (XmlInt) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlInt2 == null) {
                xmlInt2 = (XmlInt) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlInt2.set(xmlInt);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement
    public void xsetSeriesIdx(XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInt xmlInt2 = (XmlInt) typeStore.find_attribute_user(qNameArr[0]);
            if (xmlInt2 == null) {
                xmlInt2 = (XmlInt) get_store().add_attribute_user(qNameArr[0]);
            }
            xmlInt2.set(xmlInt);
        }
    }
}
