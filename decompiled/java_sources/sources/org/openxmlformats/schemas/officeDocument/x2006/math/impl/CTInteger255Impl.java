package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTInteger255;
import org.openxmlformats.schemas.officeDocument.x2006.math.STInteger255;

/* loaded from: classes14.dex */
public class CTInteger255Impl extends XmlComplexContentImpl implements CTInteger255 {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "val")};
    private static final long serialVersionUID = 1;

    public CTInteger255Impl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTInteger255
    public int getVal() {
        int i;
        synchronized (monitor()) {
            check_orphaned();
            i = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            if (simpleValue != null) {
                i = simpleValue.getIntValue();
            }
        }
        return i;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTInteger255
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTInteger255
    public STInteger255 xgetVal() {
        STInteger255 sTInteger255;
        synchronized (monitor()) {
            check_orphaned();
            sTInteger255 = (STInteger255) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTInteger255;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTInteger255
    public void xsetVal(STInteger255 sTInteger255) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STInteger255 sTInteger2552 = (STInteger255) typeStore.find_attribute_user(qNameArr[0]);
            if (sTInteger2552 == null) {
                sTInteger2552 = (STInteger255) get_store().add_attribute_user(qNameArr[0]);
            }
            sTInteger2552.set(sTInteger255);
        }
    }
}
