package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import java.math.BigInteger;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPixelsMeasure;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STPixelsMeasure;

/* loaded from: classes16.dex */
public class CTPixelsMeasureImpl extends XmlComplexContentImpl implements CTPixelsMeasure {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTPixelsMeasureImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPixelsMeasure
    public BigInteger getVal() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPixelsMeasure
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPixelsMeasure
    public STPixelsMeasure xgetVal() {
        STPixelsMeasure sTPixelsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            sTPixelsMeasure = (STPixelsMeasure) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTPixelsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPixelsMeasure
    public void xsetVal(STPixelsMeasure sTPixelsMeasure) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPixelsMeasure sTPixelsMeasure2 = (STPixelsMeasure) typeStore.find_attribute_user(qNameArr[0]);
            if (sTPixelsMeasure2 == null) {
                sTPixelsMeasure2 = (STPixelsMeasure) get_store().add_attribute_user(qNameArr[0]);
            }
            sTPixelsMeasure2.set(sTPixelsMeasure);
        }
    }
}
