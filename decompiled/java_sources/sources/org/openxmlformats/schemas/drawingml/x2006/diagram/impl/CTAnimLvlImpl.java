package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimLvl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STAnimLvlStr;

/* loaded from: classes14.dex */
public class CTAnimLvlImpl extends XmlComplexContentImpl implements CTAnimLvl {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTAnimLvlImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimLvl
    public STAnimLvlStr.Enum getVal() {
        STAnimLvlStr.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STAnimLvlStr.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimLvl
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimLvl
    public void setVal(STAnimLvlStr.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimLvl
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimLvl
    public STAnimLvlStr xgetVal() {
        STAnimLvlStr sTAnimLvlStr;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTAnimLvlStr = (STAnimLvlStr) typeStore.find_attribute_user(qNameArr[0]);
            if (sTAnimLvlStr == null) {
                sTAnimLvlStr = (STAnimLvlStr) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTAnimLvlStr;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimLvl
    public void xsetVal(STAnimLvlStr sTAnimLvlStr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAnimLvlStr sTAnimLvlStr2 = (STAnimLvlStr) typeStore.find_attribute_user(qNameArr[0]);
            if (sTAnimLvlStr2 == null) {
                sTAnimLvlStr2 = (STAnimLvlStr) get_store().add_attribute_user(qNameArr[0]);
            }
            sTAnimLvlStr2.set(sTAnimLvlStr);
        }
    }
}
