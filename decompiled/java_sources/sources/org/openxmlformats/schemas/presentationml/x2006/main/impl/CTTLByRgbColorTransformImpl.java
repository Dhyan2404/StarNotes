package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import com.miui.penengine.p015e.C6998g;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.STFixedPercentage;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLByRgbColorTransform;

/* loaded from: classes14.dex */
public class CTTLByRgbColorTransformImpl extends XmlComplexContentImpl implements CTTLByRgbColorTransform {
    private static final QName[] PROPERTY_QNAME = {new QName("", "r"), new QName("", C6998g.f39679a), new QName("", "b")};
    private static final long serialVersionUID = 1;

    public CTTLByRgbColorTransformImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByRgbColorTransform
    public Object getB() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByRgbColorTransform
    public Object getG() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByRgbColorTransform
    public Object getR() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByRgbColorTransform
    public void setB(Object obj) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByRgbColorTransform
    public void setG(Object obj) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByRgbColorTransform
    public void setR(Object obj) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByRgbColorTransform
    public STFixedPercentage xgetB() {
        STFixedPercentage sTFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            sTFixedPercentage = (STFixedPercentage) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByRgbColorTransform
    public STFixedPercentage xgetG() {
        STFixedPercentage sTFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            sTFixedPercentage = (STFixedPercentage) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByRgbColorTransform
    public STFixedPercentage xgetR() {
        STFixedPercentage sTFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            sTFixedPercentage = (STFixedPercentage) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByRgbColorTransform
    public void xsetB(STFixedPercentage sTFixedPercentage) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByRgbColorTransform
    public void xsetG(STFixedPercentage sTFixedPercentage) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByRgbColorTransform
    public void xsetR(STFixedPercentage sTFixedPercentage) {
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
}
