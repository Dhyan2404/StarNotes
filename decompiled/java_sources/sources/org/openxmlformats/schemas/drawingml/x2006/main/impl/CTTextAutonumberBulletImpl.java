package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextAutonumberBullet;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextAutonumberScheme;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextBulletStartAtNum;

/* loaded from: classes14.dex */
public class CTTextAutonumberBulletImpl extends XmlComplexContentImpl implements CTTextAutonumberBullet {
    private static final QName[] PROPERTY_QNAME = {new QName("", "type"), new QName("", "startAt")};
    private static final long serialVersionUID = 1;

    public CTTextAutonumberBulletImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextAutonumberBullet
    public int getStartAt() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextAutonumberBullet
    public STTextAutonumberScheme.Enum getType() {
        STTextAutonumberScheme.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STTextAutonumberScheme.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextAutonumberBullet
    public boolean isSetStartAt() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextAutonumberBullet
    public void setStartAt(int i) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextAutonumberBullet
    public void setType(STTextAutonumberScheme.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextAutonumberBullet
    public void unsetStartAt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextAutonumberBullet
    public STTextBulletStartAtNum xgetStartAt() {
        STTextBulletStartAtNum sTTextBulletStartAtNum;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTTextBulletStartAtNum = (STTextBulletStartAtNum) typeStore.find_attribute_user(qNameArr[1]);
            if (sTTextBulletStartAtNum == null) {
                sTTextBulletStartAtNum = (STTextBulletStartAtNum) get_default_attribute_value(qNameArr[1]);
            }
        }
        return sTTextBulletStartAtNum;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextAutonumberBullet
    public STTextAutonumberScheme xgetType() {
        STTextAutonumberScheme sTTextAutonumberScheme;
        synchronized (monitor()) {
            check_orphaned();
            sTTextAutonumberScheme = (STTextAutonumberScheme) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTTextAutonumberScheme;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextAutonumberBullet
    public void xsetStartAt(STTextBulletStartAtNum sTTextBulletStartAtNum) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTextBulletStartAtNum sTTextBulletStartAtNum2 = (STTextBulletStartAtNum) typeStore.find_attribute_user(qNameArr[1]);
            if (sTTextBulletStartAtNum2 == null) {
                sTTextBulletStartAtNum2 = (STTextBulletStartAtNum) get_store().add_attribute_user(qNameArr[1]);
            }
            sTTextBulletStartAtNum2.set(sTTextBulletStartAtNum);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextAutonumberBullet
    public void xsetType(STTextAutonumberScheme sTTextAutonumberScheme) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTextAutonumberScheme sTTextAutonumberScheme2 = (STTextAutonumberScheme) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTextAutonumberScheme2 == null) {
                sTTextAutonumberScheme2 = (STTextAutonumberScheme) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTextAutonumberScheme2.set(sTTextAutonumberScheme);
        }
    }
}
