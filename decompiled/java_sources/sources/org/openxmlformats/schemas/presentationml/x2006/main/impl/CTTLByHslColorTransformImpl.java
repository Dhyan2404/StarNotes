package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import com.miui.penengine.p015e.C6999h;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.STAngle;
import org.openxmlformats.schemas.drawingml.x2006.main.STFixedPercentage;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLByHslColorTransform;

/* loaded from: classes14.dex */
public class CTTLByHslColorTransformImpl extends XmlComplexContentImpl implements CTTLByHslColorTransform {
    private static final QName[] PROPERTY_QNAME = {new QName("", C6999h.f39688c), new QName("", "s"), new QName("", "l")};
    private static final long serialVersionUID = 1;

    public CTTLByHslColorTransformImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByHslColorTransform
    public int getH() {
        int i;
        synchronized (monitor()) {
            check_orphaned();
            i = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            if (simpleValue != null) {
                i = simpleValue.getIntValue();
            }
        }
        return i;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByHslColorTransform
    public Object getL() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByHslColorTransform
    public Object getS() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByHslColorTransform
    public void setH(int i) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByHslColorTransform
    public void setL(Object obj) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByHslColorTransform
    public void setS(Object obj) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByHslColorTransform
    public STAngle xgetH() {
        STAngle sTAngle;
        synchronized (monitor()) {
            check_orphaned();
            sTAngle = (STAngle) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTAngle;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByHslColorTransform
    public STFixedPercentage xgetL() {
        STFixedPercentage sTFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            sTFixedPercentage = (STFixedPercentage) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByHslColorTransform
    public STFixedPercentage xgetS() {
        STFixedPercentage sTFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            sTFixedPercentage = (STFixedPercentage) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByHslColorTransform
    public void xsetH(STAngle sTAngle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAngle sTAngle2 = (STAngle) typeStore.find_attribute_user(qNameArr[0]);
            if (sTAngle2 == null) {
                sTAngle2 = (STAngle) get_store().add_attribute_user(qNameArr[0]);
            }
            sTAngle2.set(sTAngle);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByHslColorTransform
    public void xsetL(STFixedPercentage sTFixedPercentage) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByHslColorTransform
    public void xsetS(STFixedPercentage sTFixedPercentage) {
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
