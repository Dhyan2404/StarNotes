package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontFamily;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STFontFamily;

/* loaded from: classes15.dex */
public class CTFontFamilyImpl extends XmlComplexContentImpl implements CTFontFamily {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTFontFamilyImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontFamily
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontFamily
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontFamily
    public STFontFamily xgetVal() {
        STFontFamily sTFontFamily;
        synchronized (monitor()) {
            check_orphaned();
            sTFontFamily = (STFontFamily) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTFontFamily;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontFamily
    public void xsetVal(STFontFamily sTFontFamily) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFontFamily sTFontFamily2 = (STFontFamily) typeStore.find_attribute_user(qNameArr[0]);
            if (sTFontFamily2 == null) {
                sTFontFamily2 = (STFontFamily) get_store().add_attribute_user(qNameArr[0]);
            }
            sTFontFamily2.set(sTFontFamily);
        }
    }
}
