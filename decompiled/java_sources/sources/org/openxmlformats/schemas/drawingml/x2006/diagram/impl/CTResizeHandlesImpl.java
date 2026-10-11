package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTResizeHandles;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STResizeHandlesStr;

/* loaded from: classes14.dex */
public class CTResizeHandlesImpl extends XmlComplexContentImpl implements CTResizeHandles {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTResizeHandlesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTResizeHandles
    public STResizeHandlesStr.Enum getVal() {
        STResizeHandlesStr.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STResizeHandlesStr.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTResizeHandles
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTResizeHandles
    public void setVal(STResizeHandlesStr.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTResizeHandles
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTResizeHandles
    public STResizeHandlesStr xgetVal() {
        STResizeHandlesStr sTResizeHandlesStr;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTResizeHandlesStr = (STResizeHandlesStr) typeStore.find_attribute_user(qNameArr[0]);
            if (sTResizeHandlesStr == null) {
                sTResizeHandlesStr = (STResizeHandlesStr) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTResizeHandlesStr;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTResizeHandles
    public void xsetVal(STResizeHandlesStr sTResizeHandlesStr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STResizeHandlesStr sTResizeHandlesStr2 = (STResizeHandlesStr) typeStore.find_attribute_user(qNameArr[0]);
            if (sTResizeHandlesStr2 == null) {
                sTResizeHandlesStr2 = (STResizeHandlesStr) get_store().add_attribute_user(qNameArr[0]);
            }
            sTResizeHandlesStr2.set(sTResizeHandlesStr);
        }
    }
}
