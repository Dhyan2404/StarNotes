package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDataType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STMailMergeDataType;

/* loaded from: classes16.dex */
public class CTMailMergeDataTypeImpl extends XmlComplexContentImpl implements CTMailMergeDataType {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTMailMergeDataTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDataType
    public String getVal() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDataType
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDataType
    public STMailMergeDataType xgetVal() {
        STMailMergeDataType sTMailMergeDataType;
        synchronized (monitor()) {
            check_orphaned();
            sTMailMergeDataType = (STMailMergeDataType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTMailMergeDataType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDataType
    public void xsetVal(STMailMergeDataType sTMailMergeDataType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STMailMergeDataType sTMailMergeDataType2 = (STMailMergeDataType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTMailMergeDataType2 == null) {
                sTMailMergeDataType2 = (STMailMergeDataType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTMailMergeDataType2.set(sTMailMergeDataType);
        }
    }
}
