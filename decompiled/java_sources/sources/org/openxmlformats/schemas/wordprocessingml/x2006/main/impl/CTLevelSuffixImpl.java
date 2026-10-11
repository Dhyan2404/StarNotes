package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTLevelSuffix;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STLevelSuffix;

/* loaded from: classes16.dex */
public class CTLevelSuffixImpl extends XmlComplexContentImpl implements CTLevelSuffix {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTLevelSuffixImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTLevelSuffix
    public STLevelSuffix.Enum getVal() {
        STLevelSuffix.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STLevelSuffix.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTLevelSuffix
    public void setVal(STLevelSuffix.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTLevelSuffix
    public STLevelSuffix xgetVal() {
        STLevelSuffix sTLevelSuffix;
        synchronized (monitor()) {
            check_orphaned();
            sTLevelSuffix = (STLevelSuffix) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTLevelSuffix;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTLevelSuffix
    public void xsetVal(STLevelSuffix sTLevelSuffix) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STLevelSuffix sTLevelSuffix2 = (STLevelSuffix) typeStore.find_attribute_user(qNameArr[0]);
            if (sTLevelSuffix2 == null) {
                sTLevelSuffix2 = (STLevelSuffix) get_store().add_attribute_user(qNameArr[0]);
            }
            sTLevelSuffix2.set(sTLevelSuffix);
        }
    }
}
