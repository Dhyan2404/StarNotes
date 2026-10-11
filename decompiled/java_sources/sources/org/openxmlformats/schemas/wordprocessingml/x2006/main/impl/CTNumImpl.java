package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import java.math.BigInteger;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumLvl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTNumImpl;

/* loaded from: classes16.dex */
public class CTNumImpl extends XmlComplexContentImpl implements CTNum {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "abstractNumId"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "lvlOverride"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "numId")};
    private static final long serialVersionUID = 1;

    public CTNumImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public CTDecimalNumber addNewAbstractNumId() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public CTNumLvl addNewLvlOverride() {
        CTNumLvl cTNumLvl;
        synchronized (monitor()) {
            check_orphaned();
            cTNumLvl = (CTNumLvl) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTNumLvl;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public CTDecimalNumber getAbstractNumId() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDecimalNumber == null) {
                cTDecimalNumber = null;
            }
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public CTNumLvl[] getLvlOverrideArray() {
        return (CTNumLvl[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTNumLvl[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public List<CTNumLvl> getLvlOverrideList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mo5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTNumImpl.this.getLvlOverrideArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.no5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTNumImpl.this.setLvlOverrideArray(((Integer) obj).intValue(), (CTNumLvl) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.oo5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTNumImpl.this.insertNewLvlOverride(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.po5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTNumImpl.this.removeLvlOverride(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qo5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTNumImpl.this.sizeOfLvlOverrideArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public BigInteger getNumId() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public CTNumLvl insertNewLvlOverride(int i) {
        CTNumLvl cTNumLvl;
        synchronized (monitor()) {
            check_orphaned();
            cTNumLvl = (CTNumLvl) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTNumLvl;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public void removeLvlOverride(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public void setAbstractNumId(CTDecimalNumber cTDecimalNumber) {
        generatedSetterHelperImpl(cTDecimalNumber, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public void setLvlOverrideArray(CTNumLvl[] cTNumLvlArr) {
        check_orphaned();
        arraySetterHelper(cTNumLvlArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public void setNumId(BigInteger bigInteger) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public int sizeOfLvlOverrideArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public STDecimalNumber xgetNumId() {
        STDecimalNumber sTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            sTDecimalNumber = (STDecimalNumber) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public void xsetNumId(STDecimalNumber sTDecimalNumber) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDecimalNumber sTDecimalNumber2 = (STDecimalNumber) typeStore.find_attribute_user(qNameArr[2]);
            if (sTDecimalNumber2 == null) {
                sTDecimalNumber2 = (STDecimalNumber) get_store().add_attribute_user(qNameArr[2]);
            }
            sTDecimalNumber2.set(sTDecimalNumber);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public CTNumLvl getLvlOverrideArray(int i) {
        CTNumLvl cTNumLvl;
        synchronized (monitor()) {
            check_orphaned();
            cTNumLvl = (CTNumLvl) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTNumLvl == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNumLvl;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum
    public void setLvlOverrideArray(int i, CTNumLvl cTNumLvl) {
        generatedSetterHelperImpl(cTNumLvl, PROPERTY_QNAME[1], i, (short) 2);
    }
}
