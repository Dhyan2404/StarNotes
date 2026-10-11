package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDocType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STMailMergeDocType;

/* loaded from: classes16.dex */
public class CTMailMergeDocTypeImpl extends XmlComplexContentImpl implements CTMailMergeDocType {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTMailMergeDocTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDocType
    public STMailMergeDocType.Enum getVal() {
        STMailMergeDocType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STMailMergeDocType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDocType
    public void setVal(STMailMergeDocType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDocType
    public STMailMergeDocType xgetVal() {
        STMailMergeDocType sTMailMergeDocType;
        synchronized (monitor()) {
            check_orphaned();
            sTMailMergeDocType = (STMailMergeDocType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTMailMergeDocType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDocType
    public void xsetVal(STMailMergeDocType sTMailMergeDocType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STMailMergeDocType sTMailMergeDocType2 = (STMailMergeDocType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTMailMergeDocType2 == null) {
                sTMailMergeDocType2 = (STMailMergeDocType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTMailMergeDocType2.set(sTMailMergeDocType);
        }
    }
}
