package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetLineDashProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.STPresetLineDashVal;

/* loaded from: classes14.dex */
public class CTPresetLineDashPropertiesImpl extends XmlComplexContentImpl implements CTPresetLineDashProperties {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTPresetLineDashPropertiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetLineDashProperties
    public STPresetLineDashVal.Enum getVal() {
        STPresetLineDashVal.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STPresetLineDashVal.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetLineDashProperties
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetLineDashProperties
    public void setVal(STPresetLineDashVal.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetLineDashProperties
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetLineDashProperties
    public STPresetLineDashVal xgetVal() {
        STPresetLineDashVal sTPresetLineDashVal;
        synchronized (monitor()) {
            check_orphaned();
            sTPresetLineDashVal = (STPresetLineDashVal) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTPresetLineDashVal;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetLineDashProperties
    public void xsetVal(STPresetLineDashVal sTPresetLineDashVal) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPresetLineDashVal sTPresetLineDashVal2 = (STPresetLineDashVal) typeStore.find_attribute_user(qNameArr[0]);
            if (sTPresetLineDashVal2 == null) {
                sTPresetLineDashVal2 = (STPresetLineDashVal) get_store().add_attribute_user(qNameArr[0]);
            }
            sTPresetLineDashVal2.set(sTPresetLineDashVal);
        }
    }
}
