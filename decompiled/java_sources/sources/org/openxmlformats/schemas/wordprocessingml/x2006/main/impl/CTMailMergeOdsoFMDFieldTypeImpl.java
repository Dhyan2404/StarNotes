package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeOdsoFMDFieldType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STMailMergeOdsoFMDFieldType;

/* loaded from: classes16.dex */
public class CTMailMergeOdsoFMDFieldTypeImpl extends XmlComplexContentImpl implements CTMailMergeOdsoFMDFieldType {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTMailMergeOdsoFMDFieldTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeOdsoFMDFieldType
    public STMailMergeOdsoFMDFieldType.Enum getVal() {
        STMailMergeOdsoFMDFieldType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STMailMergeOdsoFMDFieldType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeOdsoFMDFieldType
    public void setVal(STMailMergeOdsoFMDFieldType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeOdsoFMDFieldType
    public STMailMergeOdsoFMDFieldType xgetVal() {
        STMailMergeOdsoFMDFieldType sTMailMergeOdsoFMDFieldType;
        synchronized (monitor()) {
            check_orphaned();
            sTMailMergeOdsoFMDFieldType = (STMailMergeOdsoFMDFieldType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTMailMergeOdsoFMDFieldType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeOdsoFMDFieldType
    public void xsetVal(STMailMergeOdsoFMDFieldType sTMailMergeOdsoFMDFieldType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STMailMergeOdsoFMDFieldType sTMailMergeOdsoFMDFieldType2 = (STMailMergeOdsoFMDFieldType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTMailMergeOdsoFMDFieldType2 == null) {
                sTMailMergeOdsoFMDFieldType2 = (STMailMergeOdsoFMDFieldType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTMailMergeOdsoFMDFieldType2.set(sTMailMergeOdsoFMDFieldType);
        }
    }
}
