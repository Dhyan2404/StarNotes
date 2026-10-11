package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMultiLevelType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STMultiLevelType;

/* loaded from: classes16.dex */
public class CTMultiLevelTypeImpl extends XmlComplexContentImpl implements CTMultiLevelType {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTMultiLevelTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMultiLevelType
    public STMultiLevelType.Enum getVal() {
        STMultiLevelType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STMultiLevelType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMultiLevelType
    public void setVal(STMultiLevelType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMultiLevelType
    public STMultiLevelType xgetVal() {
        STMultiLevelType sTMultiLevelType;
        synchronized (monitor()) {
            check_orphaned();
            sTMultiLevelType = (STMultiLevelType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTMultiLevelType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMultiLevelType
    public void xsetVal(STMultiLevelType sTMultiLevelType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STMultiLevelType sTMultiLevelType2 = (STMultiLevelType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTMultiLevelType2 == null) {
                sTMultiLevelType2 = (STMultiLevelType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTMultiLevelType2.set(sTMultiLevelType);
        }
    }
}
