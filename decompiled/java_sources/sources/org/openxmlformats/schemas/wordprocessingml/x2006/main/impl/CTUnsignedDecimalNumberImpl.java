package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import java.math.BigInteger;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STUnsignedDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTUnsignedDecimalNumber;

/* loaded from: classes16.dex */
public class CTUnsignedDecimalNumberImpl extends XmlComplexContentImpl implements CTUnsignedDecimalNumber {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTUnsignedDecimalNumberImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTUnsignedDecimalNumber
    public BigInteger getVal() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTUnsignedDecimalNumber
    public void setVal(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTUnsignedDecimalNumber
    public STUnsignedDecimalNumber xgetVal() {
        STUnsignedDecimalNumber sTUnsignedDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            sTUnsignedDecimalNumber = (STUnsignedDecimalNumber) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTUnsignedDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTUnsignedDecimalNumber
    public void xsetVal(STUnsignedDecimalNumber sTUnsignedDecimalNumber) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STUnsignedDecimalNumber sTUnsignedDecimalNumber2 = (STUnsignedDecimalNumber) typeStore.find_attribute_user(qNameArr[0]);
            if (sTUnsignedDecimalNumber2 == null) {
                sTUnsignedDecimalNumber2 = (STUnsignedDecimalNumber) get_store().add_attribute_user(qNameArr[0]);
            }
            sTUnsignedDecimalNumber2.set(sTUnsignedDecimalNumber);
        }
    }
}
