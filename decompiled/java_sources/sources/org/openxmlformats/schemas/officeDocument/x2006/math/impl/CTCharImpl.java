package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTChar;
import org.openxmlformats.schemas.officeDocument.x2006.math.STChar;

/* loaded from: classes14.dex */
public class CTCharImpl extends XmlComplexContentImpl implements CTChar {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "val")};
    private static final long serialVersionUID = 1;

    public CTCharImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTChar
    public String getVal() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTChar
    public void setVal(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTChar
    public STChar xgetVal() {
        STChar sTChar;
        synchronized (monitor()) {
            check_orphaned();
            sTChar = (STChar) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTChar;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTChar
    public void xsetVal(STChar sTChar) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STChar sTChar2 = (STChar) typeStore.find_attribute_user(qNameArr[0]);
            if (sTChar2 == null) {
                sTChar2 = (STChar) get_store().add_attribute_user(qNameArr[0]);
            }
            sTChar2.set(sTChar);
        }
    }
}
