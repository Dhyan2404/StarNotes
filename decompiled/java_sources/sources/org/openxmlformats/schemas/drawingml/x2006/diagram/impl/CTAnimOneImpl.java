package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimOne;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STAnimOneStr;

/* loaded from: classes14.dex */
public class CTAnimOneImpl extends XmlComplexContentImpl implements CTAnimOne {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTAnimOneImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimOne
    public STAnimOneStr.Enum getVal() {
        STAnimOneStr.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STAnimOneStr.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimOne
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimOne
    public void setVal(STAnimOneStr.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimOne
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimOne
    public STAnimOneStr xgetVal() {
        STAnimOneStr sTAnimOneStr;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTAnimOneStr = (STAnimOneStr) typeStore.find_attribute_user(qNameArr[0]);
            if (sTAnimOneStr == null) {
                sTAnimOneStr = (STAnimOneStr) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTAnimOneStr;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimOne
    public void xsetVal(STAnimOneStr sTAnimOneStr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAnimOneStr sTAnimOneStr2 = (STAnimOneStr) typeStore.find_attribute_user(qNameArr[0]);
            if (sTAnimOneStr2 == null) {
                sTAnimOneStr2 = (STAnimOneStr) get_store().add_attribute_user(qNameArr[0]);
            }
            sTAnimOneStr2.set(sTAnimOneStr);
        }
    }
}
