package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTParameter;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STParameterId;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STParameterVal;

/* loaded from: classes14.dex */
public class CTParameterImpl extends XmlComplexContentImpl implements CTParameter {
    private static final QName[] PROPERTY_QNAME = {new QName("", "type"), new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTParameterImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTParameter
    public STParameterId.Enum getType() {
        STParameterId.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STParameterId.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTParameter
    public Object getVal() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTParameter
    public void setType(STParameterId.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTParameter
    public void setVal(Object obj) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTParameter
    public STParameterId xgetType() {
        STParameterId sTParameterId;
        synchronized (monitor()) {
            check_orphaned();
            sTParameterId = (STParameterId) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTParameterId;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTParameter
    public STParameterVal xgetVal() {
        STParameterVal sTParameterVal;
        synchronized (monitor()) {
            check_orphaned();
            sTParameterVal = (STParameterVal) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTParameterVal;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTParameter
    public void xsetType(STParameterId sTParameterId) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STParameterId sTParameterId2 = (STParameterId) typeStore.find_attribute_user(qNameArr[0]);
            if (sTParameterId2 == null) {
                sTParameterId2 = (STParameterId) get_store().add_attribute_user(qNameArr[0]);
            }
            sTParameterId2.set(sTParameterId);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTParameter
    public void xsetVal(STParameterVal sTParameterVal) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STParameterVal sTParameterVal2 = (STParameterVal) typeStore.find_attribute_user(qNameArr[1]);
            if (sTParameterVal2 == null) {
                sTParameterVal2 = (STParameterVal) get_store().add_attribute_user(qNameArr[1]);
            }
            sTParameterVal2.set(sTParameterVal);
        }
    }
}
