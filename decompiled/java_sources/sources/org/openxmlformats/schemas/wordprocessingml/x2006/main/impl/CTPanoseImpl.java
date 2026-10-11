package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STPanose;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPanose;

/* loaded from: classes16.dex */
public class CTPanoseImpl extends XmlComplexContentImpl implements CTPanose {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTPanoseImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPanose
    public byte[] getVal() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPanose
    public void setVal(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPanose
    public STPanose xgetVal() {
        STPanose sTPanose;
        synchronized (monitor()) {
            check_orphaned();
            sTPanose = (STPanose) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTPanose;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPanose
    public void xsetVal(STPanose sTPanose) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPanose sTPanose2 = (STPanose) typeStore.find_attribute_user(qNameArr[0]);
            if (sTPanose2 == null) {
                sTPanose2 = (STPanose) get_store().add_attribute_user(qNameArr[0]);
            }
            sTPanose2.set(sTPanose);
        }
    }
}
