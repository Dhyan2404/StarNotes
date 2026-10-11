package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSizeRepresents;
import org.openxmlformats.schemas.drawingml.x2006.chart.STSizeRepresents;

/* loaded from: classes14.dex */
public class CTSizeRepresentsImpl extends XmlComplexContentImpl implements CTSizeRepresents {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTSizeRepresentsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSizeRepresents
    public STSizeRepresents.Enum getVal() {
        STSizeRepresents.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STSizeRepresents.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSizeRepresents
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSizeRepresents
    public void setVal(STSizeRepresents.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSizeRepresents
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSizeRepresents
    public STSizeRepresents xgetVal() {
        STSizeRepresents sTSizeRepresents;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTSizeRepresents = (STSizeRepresents) typeStore.find_attribute_user(qNameArr[0]);
            if (sTSizeRepresents == null) {
                sTSizeRepresents = (STSizeRepresents) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTSizeRepresents;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSizeRepresents
    public void xsetVal(STSizeRepresents sTSizeRepresents) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STSizeRepresents sTSizeRepresents2 = (STSizeRepresents) typeStore.find_attribute_user(qNameArr[0]);
            if (sTSizeRepresents2 == null) {
                sTSizeRepresents2 = (STSizeRepresents) get_store().add_attribute_user(qNameArr[0]);
            }
            sTSizeRepresents2.set(sTSizeRepresents);
        }
    }
}
