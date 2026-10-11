package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.STAngle;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData;

/* loaded from: classes14.dex */
public class CTTLAnimateRotationBehaviorImpl extends XmlComplexContentImpl implements CTTLAnimateRotationBehavior {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cBhvr"), new QName("", "by"), new QName("", "from"), new QName("", "to")};
    private static final long serialVersionUID = 1;

    public CTTLAnimateRotationBehaviorImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public CTTLCommonBehaviorData addNewCBhvr() {
        CTTLCommonBehaviorData cTTLCommonBehaviorData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonBehaviorData = (CTTLCommonBehaviorData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLCommonBehaviorData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public int getBy() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public CTTLCommonBehaviorData getCBhvr() {
        CTTLCommonBehaviorData cTTLCommonBehaviorData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonBehaviorData = (CTTLCommonBehaviorData) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTLCommonBehaviorData == null) {
                cTTLCommonBehaviorData = null;
            }
        }
        return cTTLCommonBehaviorData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public int getFrom() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public int getTo() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public boolean isSetBy() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public boolean isSetFrom() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public boolean isSetTo() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public void setBy(int i) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public void setCBhvr(CTTLCommonBehaviorData cTTLCommonBehaviorData) {
        generatedSetterHelperImpl(cTTLCommonBehaviorData, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public void setFrom(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public void setTo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public void unsetBy() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public void unsetFrom() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public void unsetTo() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public STAngle xgetBy() {
        STAngle sTAngle;
        synchronized (monitor()) {
            check_orphaned();
            sTAngle = (STAngle) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTAngle;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public STAngle xgetFrom() {
        STAngle sTAngle;
        synchronized (monitor()) {
            check_orphaned();
            sTAngle = (STAngle) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTAngle;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public STAngle xgetTo() {
        STAngle sTAngle;
        synchronized (monitor()) {
            check_orphaned();
            sTAngle = (STAngle) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTAngle;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public void xsetBy(STAngle sTAngle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAngle sTAngle2 = (STAngle) typeStore.find_attribute_user(qNameArr[1]);
            if (sTAngle2 == null) {
                sTAngle2 = (STAngle) get_store().add_attribute_user(qNameArr[1]);
            }
            sTAngle2.set(sTAngle);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public void xsetFrom(STAngle sTAngle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAngle sTAngle2 = (STAngle) typeStore.find_attribute_user(qNameArr[2]);
            if (sTAngle2 == null) {
                sTAngle2 = (STAngle) get_store().add_attribute_user(qNameArr[2]);
            }
            sTAngle2.set(sTAngle);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimateRotationBehavior
    public void xsetTo(STAngle sTAngle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAngle sTAngle2 = (STAngle) typeStore.find_attribute_user(qNameArr[3]);
            if (sTAngle2 == null) {
                sTAngle2 = (STAngle) get_store().add_attribute_user(qNameArr[3]);
            }
            sTAngle2.set(sTAngle);
        }
    }
}
