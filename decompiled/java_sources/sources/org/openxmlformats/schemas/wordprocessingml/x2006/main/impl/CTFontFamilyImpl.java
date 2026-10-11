package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontFamily;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STFontFamily;

/* loaded from: classes16.dex */
public class CTFontFamilyImpl extends XmlComplexContentImpl implements CTFontFamily {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTFontFamilyImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontFamily
    public STFontFamily.Enum getVal() {
        STFontFamily.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STFontFamily.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontFamily
    public void setVal(STFontFamily.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontFamily
    public STFontFamily xgetVal() {
        STFontFamily sTFontFamily;
        synchronized (monitor()) {
            check_orphaned();
            sTFontFamily = (STFontFamily) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTFontFamily;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontFamily
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
