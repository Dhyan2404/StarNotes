package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.miui.penengine.p015e.C6999h;
import java.math.BigInteger;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDecimalNumberOrPercent;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STPixelsMeasure;

/* loaded from: classes16.dex */
public class CTReadingModeInkLockDownImpl extends XmlComplexContentImpl implements CTReadingModeInkLockDown {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "actualPg"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "w"), new QName(XSSFRelation.NS_WORDPROCESSINGML, C6999h.f39688c), new QName(XSSFRelation.NS_WORDPROCESSINGML, "fontSz")};
    private static final long serialVersionUID = 1;

    public CTReadingModeInkLockDownImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public Object getActualPg() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public Object getFontSz() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public BigInteger getH() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public BigInteger getW() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public void setActualPg(Object obj) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public void setFontSz(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public void setH(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public void setW(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public STOnOff xgetActualPg() {
        STOnOff sTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            sTOnOff = (STOnOff) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public STDecimalNumberOrPercent xgetFontSz() {
        STDecimalNumberOrPercent sTDecimalNumberOrPercent;
        synchronized (monitor()) {
            check_orphaned();
            sTDecimalNumberOrPercent = (STDecimalNumberOrPercent) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTDecimalNumberOrPercent;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public STPixelsMeasure xgetH() {
        STPixelsMeasure sTPixelsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            sTPixelsMeasure = (STPixelsMeasure) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTPixelsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public STPixelsMeasure xgetW() {
        STPixelsMeasure sTPixelsMeasure;
        synchronized (monitor()) {
            check_orphaned();
            sTPixelsMeasure = (STPixelsMeasure) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTPixelsMeasure;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public void xsetActualPg(STOnOff sTOnOff) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STOnOff sTOnOff2 = (STOnOff) typeStore.find_attribute_user(qNameArr[0]);
            if (sTOnOff2 == null) {
                sTOnOff2 = (STOnOff) get_store().add_attribute_user(qNameArr[0]);
            }
            sTOnOff2.set(sTOnOff);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public void xsetFontSz(STDecimalNumberOrPercent sTDecimalNumberOrPercent) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDecimalNumberOrPercent sTDecimalNumberOrPercent2 = (STDecimalNumberOrPercent) typeStore.find_attribute_user(qNameArr[3]);
            if (sTDecimalNumberOrPercent2 == null) {
                sTDecimalNumberOrPercent2 = (STDecimalNumberOrPercent) get_store().add_attribute_user(qNameArr[3]);
            }
            sTDecimalNumberOrPercent2.set(sTDecimalNumberOrPercent);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public void xsetH(STPixelsMeasure sTPixelsMeasure) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPixelsMeasure sTPixelsMeasure2 = (STPixelsMeasure) typeStore.find_attribute_user(qNameArr[2]);
            if (sTPixelsMeasure2 == null) {
                sTPixelsMeasure2 = (STPixelsMeasure) get_store().add_attribute_user(qNameArr[2]);
            }
            sTPixelsMeasure2.set(sTPixelsMeasure);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTReadingModeInkLockDown
    public void xsetW(STPixelsMeasure sTPixelsMeasure) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPixelsMeasure sTPixelsMeasure2 = (STPixelsMeasure) typeStore.find_attribute_user(qNameArr[1]);
            if (sTPixelsMeasure2 == null) {
                sTPixelsMeasure2 = (STPixelsMeasure) get_store().add_attribute_user(qNameArr[1]);
            }
            sTPixelsMeasure2.set(sTPixelsMeasure);
        }
    }
}
