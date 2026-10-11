package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPitch;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STPitch;

/* loaded from: classes16.dex */
public class CTPitchImpl extends XmlComplexContentImpl implements CTPitch {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTPitchImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPitch
    public STPitch.Enum getVal() {
        STPitch.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STPitch.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPitch
    public void setVal(STPitch.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPitch
    public STPitch xgetVal() {
        STPitch sTPitch;
        synchronized (monitor()) {
            check_orphaned();
            sTPitch = (STPitch) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTPitch;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPitch
    public void xsetVal(STPitch sTPitch) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPitch sTPitch2 = (STPitch) typeStore.find_attribute_user(qNameArr[0]);
            if (sTPitch2 == null) {
                sTPitch2 = (STPitch) get_store().add_attribute_user(qNameArr[0]);
            }
            sTPitch2.set(sTPitch);
        }
    }
}
