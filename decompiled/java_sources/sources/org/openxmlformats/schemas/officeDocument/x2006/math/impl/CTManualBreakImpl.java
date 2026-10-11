package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTManualBreak;
import org.openxmlformats.schemas.officeDocument.x2006.math.STInteger255;

/* loaded from: classes14.dex */
public class CTManualBreakImpl extends XmlComplexContentImpl implements CTManualBreak {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "alnAt")};
    private static final long serialVersionUID = 1;

    public CTManualBreakImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTManualBreak
    public int getAlnAt() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTManualBreak
    public boolean isSetAlnAt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTManualBreak
    public void setAlnAt(int i) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTManualBreak
    public void unsetAlnAt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTManualBreak
    public STInteger255 xgetAlnAt() {
        STInteger255 sTInteger255;
        synchronized (monitor()) {
            check_orphaned();
            sTInteger255 = (STInteger255) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTInteger255;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTManualBreak
    public void xsetAlnAt(STInteger255 sTInteger255) {
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
