package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyleSort;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STStyleSort;

/* loaded from: classes16.dex */
public class CTStyleSortImpl extends XmlComplexContentImpl implements CTStyleSort {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTStyleSortImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyleSort
    public STStyleSort.Enum getVal() {
        STStyleSort.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STStyleSort.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyleSort
    public void setVal(STStyleSort.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyleSort
    public STStyleSort xgetVal() {
        STStyleSort sTStyleSort;
        synchronized (monitor()) {
            check_orphaned();
            sTStyleSort = (STStyleSort) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTStyleSort;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyleSort
    public void xsetVal(STStyleSort sTStyleSort) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStyleSort sTStyleSort2 = (STStyleSort) typeStore.find_attribute_user(qNameArr[0]);
            if (sTStyleSort2 == null) {
                sTStyleSort2 = (STStyleSort) get_store().add_attribute_user(qNameArr[0]);
            }
            sTStyleSort2.set(sTStyleSort);
        }
    }
}
