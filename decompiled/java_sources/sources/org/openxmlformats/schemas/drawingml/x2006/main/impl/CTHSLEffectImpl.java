package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import androidx.core.text.util.LocalePreferences;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.STFixedPercentage;
import org.openxmlformats.schemas.drawingml.x2006.main.STPositiveFixedAngle;

/* loaded from: classes14.dex */
public class CTHSLEffectImpl extends XmlComplexContentImpl implements CTHSLEffect {
    private static final QName[] PROPERTY_QNAME = {new QName("", "hue"), new QName("", LocalePreferences.FirstDayOfWeek.SATURDAY), new QName("", "lum")};
    private static final long serialVersionUID = 1;

    public CTHSLEffectImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public int getHue() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public Object getLum() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public Object getSat() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public boolean isSetHue() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public boolean isSetLum() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public boolean isSetSat() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public void setHue(int i) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public void setLum(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public void setSat(Object obj) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public void unsetHue() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public void unsetLum() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public void unsetSat() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public STPositiveFixedAngle xgetHue() {
        STPositiveFixedAngle sTPositiveFixedAngle;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTPositiveFixedAngle = (STPositiveFixedAngle) typeStore.find_attribute_user(qNameArr[0]);
            if (sTPositiveFixedAngle == null) {
                sTPositiveFixedAngle = (STPositiveFixedAngle) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTPositiveFixedAngle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public STFixedPercentage xgetLum() {
        STFixedPercentage sTFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTFixedPercentage = (STFixedPercentage) typeStore.find_attribute_user(qNameArr[2]);
            if (sTFixedPercentage == null) {
                sTFixedPercentage = (STFixedPercentage) get_default_attribute_value(qNameArr[2]);
            }
        }
        return sTFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public STFixedPercentage xgetSat() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public void xsetHue(STPositiveFixedAngle sTPositiveFixedAngle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPositiveFixedAngle sTPositiveFixedAngle2 = (STPositiveFixedAngle) typeStore.find_attribute_user(qNameArr[0]);
            if (sTPositiveFixedAngle2 == null) {
                sTPositiveFixedAngle2 = (STPositiveFixedAngle) get_store().add_attribute_user(qNameArr[0]);
            }
            sTPositiveFixedAngle2.set(sTPositiveFixedAngle);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public void xsetLum(STFixedPercentage sTFixedPercentage) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFixedPercentage sTFixedPercentage2 = (STFixedPercentage) typeStore.find_attribute_user(qNameArr[2]);
            if (sTFixedPercentage2 == null) {
                sTFixedPercentage2 = (STFixedPercentage) get_store().add_attribute_user(qNameArr[2]);
            }
            sTFixedPercentage2.set(sTFixedPercentage);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect
    public void xsetSat(STFixedPercentage sTFixedPercentage) {
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
