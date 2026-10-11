package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTLuminanceEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.STFixedPercentage;

/* loaded from: classes14.dex */
public class CTLuminanceEffectImpl extends XmlComplexContentImpl implements CTLuminanceEffect {
    private static final QName[] PROPERTY_QNAME = {new QName("", "bright"), new QName("", "contrast")};
    private static final long serialVersionUID = 1;

    public CTLuminanceEffectImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLuminanceEffect
    public Object getBright() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLuminanceEffect
    public Object getContrast() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLuminanceEffect
    public boolean isSetBright() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLuminanceEffect
    public boolean isSetContrast() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLuminanceEffect
    public void setBright(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLuminanceEffect
    public void setContrast(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLuminanceEffect
    public void unsetBright() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLuminanceEffect
    public void unsetContrast() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLuminanceEffect
    public STFixedPercentage xgetBright() {
        STFixedPercentage sTFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTFixedPercentage = (STFixedPercentage) typeStore.find_attribute_user(qNameArr[0]);
            if (sTFixedPercentage == null) {
                sTFixedPercentage = (STFixedPercentage) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLuminanceEffect
    public STFixedPercentage xgetContrast() {
        STFixedPercentage sTFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTFixedPercentage = (STFixedPercentage) typeStore.find_attribute_user(qNameArr[1]);
            if (sTFixedPercentage == null) {
                sTFixedPercentage = (STFixedPercentage) get_default_attribute_value(qNameArr[1]);
            }
        }
        return sTFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLuminanceEffect
    public void xsetBright(STFixedPercentage sTFixedPercentage) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFixedPercentage sTFixedPercentage2 = (STFixedPercentage) typeStore.find_attribute_user(qNameArr[0]);
            if (sTFixedPercentage2 == null) {
                sTFixedPercentage2 = (STFixedPercentage) get_store().add_attribute_user(qNameArr[0]);
            }
            sTFixedPercentage2.set(sTFixedPercentage);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLuminanceEffect
    public void xsetContrast(STFixedPercentage sTFixedPercentage) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFixedPercentage sTFixedPercentage2 = (STFixedPercentage) typeStore.find_attribute_user(qNameArr[1]);
            if (sTFixedPercentage2 == null) {
                sTFixedPercentage2 = (STFixedPercentage) get_store().add_attribute_user(qNameArr[1]);
            }
            sTFixedPercentage2.set(sTFixedPercentage);
        }
    }
}
