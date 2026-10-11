package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFTextType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STFFTextType;

/* loaded from: classes16.dex */
public class CTFFTextTypeImpl extends XmlComplexContentImpl implements CTFFTextType {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTFFTextTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFTextType
    public STFFTextType.Enum getVal() {
        STFFTextType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STFFTextType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFTextType
    public void setVal(STFFTextType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFTextType
    public STFFTextType xgetVal() {
        STFFTextType sTFFTextType;
        synchronized (monitor()) {
            check_orphaned();
            sTFFTextType = (STFFTextType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTFFTextType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFTextType
    public void xsetVal(STFFTextType sTFFTextType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFFTextType sTFFTextType2 = (STFFTextType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTFFTextType2 == null) {
                sTFFTextType2 = (STFFTextType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTFFTextType2.set(sTFFTextType);
        }
    }
}
