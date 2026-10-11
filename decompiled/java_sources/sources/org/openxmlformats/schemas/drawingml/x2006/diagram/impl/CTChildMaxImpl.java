package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTChildMax;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STNodeCount;

/* loaded from: classes14.dex */
public class CTChildMaxImpl extends XmlComplexContentImpl implements CTChildMax {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTChildMaxImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChildMax
    public int getVal() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChildMax
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChildMax
    public void setVal(int i) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChildMax
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChildMax
    public STNodeCount xgetVal() {
        STNodeCount sTNodeCount;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTNodeCount = (STNodeCount) typeStore.find_attribute_user(qNameArr[0]);
            if (sTNodeCount == null) {
                sTNodeCount = (STNodeCount) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTNodeCount;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChildMax
    public void xsetVal(STNodeCount sTNodeCount) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STNodeCount sTNodeCount2 = (STNodeCount) typeStore.find_attribute_user(qNameArr[0]);
            if (sTNodeCount2 == null) {
                sTNodeCount2 = (STNodeCount) get_store().add_attribute_user(qNameArr[0]);
            }
            sTNodeCount2.set(sTNodeCount);
        }
    }
}
