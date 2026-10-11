package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAbstractNum;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumPicBullet;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTNumberingImpl;

/* loaded from: classes16.dex */
public class CTNumberingImpl extends XmlComplexContentImpl implements CTNumbering {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "numPicBullet"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "abstractNum"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "num"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "numIdMacAtCleanup")};
    private static final long serialVersionUID = 1;

    public CTNumberingImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public CTAbstractNum addNewAbstractNum() {
        CTAbstractNum cTAbstractNum;
        synchronized (monitor()) {
            check_orphaned();
            cTAbstractNum = (CTAbstractNum) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTAbstractNum;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public CTNum addNewNum() {
        CTNum cTNum;
        synchronized (monitor()) {
            check_orphaned();
            cTNum = (CTNum) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTNum;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public CTDecimalNumber addNewNumIdMacAtCleanup() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public CTNumPicBullet addNewNumPicBullet() {
        CTNumPicBullet cTNumPicBullet;
        synchronized (monitor()) {
            check_orphaned();
            cTNumPicBullet = (CTNumPicBullet) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTNumPicBullet;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public CTAbstractNum[] getAbstractNumArray() {
        return (CTAbstractNum[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTAbstractNum[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public List<CTAbstractNum> getAbstractNumList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bp5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTNumberingImpl.this.getAbstractNumArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hp5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTNumberingImpl.this.setAbstractNumArray(((Integer) obj).intValue(), (CTAbstractNum) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ip5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTNumberingImpl.this.insertNewAbstractNum(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jp5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTNumberingImpl.this.removeAbstractNum(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kp5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTNumberingImpl.this.sizeOfAbstractNumArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public CTNum[] getNumArray() {
        return (CTNum[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTNum[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public CTDecimalNumber getNumIdMacAtCleanup() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTDecimalNumber == null) {
                cTDecimalNumber = null;
            }
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public List<CTNum> getNumList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lp5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTNumberingImpl.this.getNumArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mp5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTNumberingImpl.this.setNumArray(((Integer) obj).intValue(), (CTNum) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.np5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTNumberingImpl.this.insertNewNum(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.op5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTNumberingImpl.this.removeNum(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pp5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTNumberingImpl.this.sizeOfNumArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public CTNumPicBullet[] getNumPicBulletArray() {
        return (CTNumPicBullet[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTNumPicBullet[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public List<CTNumPicBullet> getNumPicBulletList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cp5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTNumberingImpl.this.getNumPicBulletArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dp5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTNumberingImpl.this.setNumPicBulletArray(((Integer) obj).intValue(), (CTNumPicBullet) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ep5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTNumberingImpl.this.insertNewNumPicBullet(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fp5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTNumberingImpl.this.removeNumPicBullet(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gp5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTNumberingImpl.this.sizeOfNumPicBulletArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public CTAbstractNum insertNewAbstractNum(int i) {
        CTAbstractNum cTAbstractNum;
        synchronized (monitor()) {
            check_orphaned();
            cTAbstractNum = (CTAbstractNum) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTAbstractNum;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public CTNum insertNewNum(int i) {
        CTNum cTNum;
        synchronized (monitor()) {
            check_orphaned();
            cTNum = (CTNum) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTNum;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public CTNumPicBullet insertNewNumPicBullet(int i) {
        CTNumPicBullet cTNumPicBullet;
        synchronized (monitor()) {
            check_orphaned();
            cTNumPicBullet = (CTNumPicBullet) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTNumPicBullet;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public boolean isSetNumIdMacAtCleanup() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public void removeAbstractNum(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public void removeNum(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public void removeNumPicBullet(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public void setAbstractNumArray(CTAbstractNum[] cTAbstractNumArr) {
        check_orphaned();
        arraySetterHelper(cTAbstractNumArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public void setNumArray(CTNum[] cTNumArr) {
        check_orphaned();
        arraySetterHelper(cTNumArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public void setNumIdMacAtCleanup(CTDecimalNumber cTDecimalNumber) {
        generatedSetterHelperImpl(cTDecimalNumber, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public void setNumPicBulletArray(CTNumPicBullet[] cTNumPicBulletArr) {
        check_orphaned();
        arraySetterHelper(cTNumPicBulletArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public int sizeOfAbstractNumArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public int sizeOfNumArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public int sizeOfNumPicBulletArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public void unsetNumIdMacAtCleanup() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public CTAbstractNum getAbstractNumArray(int i) {
        CTAbstractNum cTAbstractNum;
        synchronized (monitor()) {
            check_orphaned();
            cTAbstractNum = (CTAbstractNum) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTAbstractNum == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAbstractNum;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public CTNum getNumArray(int i) {
        CTNum cTNum;
        synchronized (monitor()) {
            check_orphaned();
            cTNum = (CTNum) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTNum == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNum;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public CTNumPicBullet getNumPicBulletArray(int i) {
        CTNumPicBullet cTNumPicBullet;
        synchronized (monitor()) {
            check_orphaned();
            cTNumPicBullet = (CTNumPicBullet) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTNumPicBullet == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNumPicBullet;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public void setAbstractNumArray(int i, CTAbstractNum cTAbstractNum) {
        generatedSetterHelperImpl(cTAbstractNum, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public void setNumArray(int i, CTNum cTNum) {
        generatedSetterHelperImpl(cTNum, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering
    public void setNumPicBulletArray(int i, CTNumPicBullet cTNumPicBullet) {
        generatedSetterHelperImpl(cTNumPicBullet, PROPERTY_QNAME[0], i, (short) 2);
    }
}
