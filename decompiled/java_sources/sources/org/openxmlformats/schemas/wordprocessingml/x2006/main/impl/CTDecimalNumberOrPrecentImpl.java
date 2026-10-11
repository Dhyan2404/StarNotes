package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumberOrPrecent;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDecimalNumberOrPercent;

/* loaded from: classes16.dex */
public class CTDecimalNumberOrPrecentImpl extends XmlComplexContentImpl implements CTDecimalNumberOrPrecent {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTDecimalNumberOrPrecentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumberOrPrecent
    public Object getVal() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumberOrPrecent
    public void setVal(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumberOrPrecent
    public STDecimalNumberOrPercent xgetVal() {
        STDecimalNumberOrPercent sTDecimalNumberOrPercent;
        synchronized (monitor()) {
            check_orphaned();
            sTDecimalNumberOrPercent = (STDecimalNumberOrPercent) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTDecimalNumberOrPercent;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumberOrPrecent
    public void xsetVal(STDecimalNumberOrPercent sTDecimalNumberOrPercent) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDecimalNumberOrPercent sTDecimalNumberOrPercent2 = (STDecimalNumberOrPercent) typeStore.find_attribute_user(qNameArr[0]);
            if (sTDecimalNumberOrPercent2 == null) {
                sTDecimalNumberOrPercent2 = (STDecimalNumberOrPercent) get_store().add_attribute_user(qNameArr[0]);
            }
            sTDecimalNumberOrPercent2.set(sTDecimalNumberOrPercent);
        }
    }
}
