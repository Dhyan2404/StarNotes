package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBoolean;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateTime;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTError;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIndex;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMissing;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTNumber;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTString;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTRecordImpl;

/* loaded from: classes15.dex */
public class CTRecordImpl extends XmlComplexContentImpl implements CTRecord {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "m"), new QName(XSSFRelation.NS_SPREADSHEETML, GoogleApiAvailabilityLight.f29016b), new QName(XSSFRelation.NS_SPREADSHEETML, "b"), new QName(XSSFRelation.NS_SPREADSHEETML, "e"), new QName(XSSFRelation.NS_SPREADSHEETML, "s"), new QName(XSSFRelation.NS_SPREADSHEETML, "d"), new QName(XSSFRelation.NS_SPREADSHEETML, "x")};
    private static final long serialVersionUID = 1;

    public CTRecordImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTBoolean addNewB() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTDateTime addNewD() {
        CTDateTime cTDateTime;
        synchronized (monitor()) {
            check_orphaned();
            cTDateTime = (CTDateTime) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTDateTime;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTError addNewE() {
        CTError cTError;
        synchronized (monitor()) {
            check_orphaned();
            cTError = (CTError) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTError;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTMissing addNewM() {
        CTMissing cTMissing;
        synchronized (monitor()) {
            check_orphaned();
            cTMissing = (CTMissing) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMissing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTNumber addNewN() {
        CTNumber cTNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTNumber = (CTNumber) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTNumber;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTString addNewS() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTIndex addNewX() {
        CTIndex cTIndex;
        synchronized (monitor()) {
            check_orphaned();
            cTIndex = (CTIndex) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTIndex;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTBoolean[] getBArray() {
        return (CTBoolean[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTBoolean[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public List<CTBoolean> getBList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dm8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecordImpl.this.getBArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.em8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRecordImpl.this.setBArray(((Integer) obj).intValue(), (CTBoolean) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fm8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecordImpl.this.insertNewB(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gm8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRecordImpl.this.removeB(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hm8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRecordImpl.this.sizeOfBArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTDateTime[] getDArray() {
        return (CTDateTime[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTDateTime[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public List<CTDateTime> getDList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nl8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecordImpl.this.getDArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ol8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRecordImpl.this.setDArray(((Integer) obj).intValue(), (CTDateTime) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pl8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecordImpl.this.insertNewD(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ql8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRecordImpl.this.removeD(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rl8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRecordImpl.this.sizeOfDArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTError[] getEArray() {
        return (CTError[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTError[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public List<CTError> getEList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qm8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecordImpl.this.getEArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rm8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRecordImpl.this.setEArray(((Integer) obj).intValue(), (CTError) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sm8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecordImpl.this.insertNewE(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tm8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRecordImpl.this.removeE(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.um8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRecordImpl.this.sizeOfEArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTMissing[] getMArray() {
        return (CTMissing[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTMissing[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public List<CTMissing> getMList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sl8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecordImpl.this.getMArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tl8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRecordImpl.this.setMArray(((Integer) obj).intValue(), (CTMissing) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ul8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecordImpl.this.insertNewM(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vl8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRecordImpl.this.removeM(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wl8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRecordImpl.this.sizeOfMArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTNumber[] getNArray() {
        return (CTNumber[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTNumber[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public List<CTNumber> getNList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jm8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecordImpl.this.getNArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.km8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRecordImpl.this.setNArray(((Integer) obj).intValue(), (CTNumber) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lm8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecordImpl.this.insertNewN(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mm8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRecordImpl.this.removeN(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nm8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRecordImpl.this.sizeOfNArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTString[] getSArray() {
        return (CTString[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTString[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public List<CTString> getSList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ml8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecordImpl.this.getSArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xl8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRecordImpl.this.setSArray(((Integer) obj).intValue(), (CTString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.im8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecordImpl.this.insertNewS(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.om8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRecordImpl.this.removeS(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pm8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRecordImpl.this.sizeOfSArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTIndex[] getXArray() {
        return (CTIndex[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTIndex[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public List<CTIndex> getXList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yl8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecordImpl.this.getXArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zl8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRecordImpl.this.setXArray(((Integer) obj).intValue(), (CTIndex) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.am8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecordImpl.this.insertNewX(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bm8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRecordImpl.this.removeX(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cm8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRecordImpl.this.sizeOfXArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTBoolean insertNewB(int i) {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTDateTime insertNewD(int i) {
        CTDateTime cTDateTime;
        synchronized (monitor()) {
            check_orphaned();
            cTDateTime = (CTDateTime) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTDateTime;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTError insertNewE(int i) {
        CTError cTError;
        synchronized (monitor()) {
            check_orphaned();
            cTError = (CTError) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTError;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTMissing insertNewM(int i) {
        CTMissing cTMissing;
        synchronized (monitor()) {
            check_orphaned();
            cTMissing = (CTMissing) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTMissing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTNumber insertNewN(int i) {
        CTNumber cTNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTNumber = (CTNumber) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTNumber;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTString insertNewS(int i) {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTIndex insertNewX(int i) {
        CTIndex cTIndex;
        synchronized (monitor()) {
            check_orphaned();
            cTIndex = (CTIndex) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTIndex;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void removeB(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void removeD(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void removeE(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void removeM(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void removeN(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void removeS(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void removeX(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void setBArray(CTBoolean[] cTBooleanArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void setDArray(CTDateTime[] cTDateTimeArr) {
        check_orphaned();
        arraySetterHelper(cTDateTimeArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void setEArray(CTError[] cTErrorArr) {
        check_orphaned();
        arraySetterHelper(cTErrorArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void setMArray(CTMissing[] cTMissingArr) {
        check_orphaned();
        arraySetterHelper(cTMissingArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void setNArray(CTNumber[] cTNumberArr) {
        check_orphaned();
        arraySetterHelper(cTNumberArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void setSArray(CTString[] cTStringArr) {
        check_orphaned();
        arraySetterHelper(cTStringArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void setXArray(CTIndex[] cTIndexArr) {
        check_orphaned();
        arraySetterHelper(cTIndexArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public int sizeOfBArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public int sizeOfDArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public int sizeOfEArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public int sizeOfMArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public int sizeOfNArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public int sizeOfSArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public int sizeOfXArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTBoolean getBArray(int i) {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTBoolean == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTDateTime getDArray(int i) {
        CTDateTime cTDateTime;
        synchronized (monitor()) {
            check_orphaned();
            cTDateTime = (CTDateTime) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTDateTime == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDateTime;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTError getEArray(int i) {
        CTError cTError;
        synchronized (monitor()) {
            check_orphaned();
            cTError = (CTError) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTError == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTError;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTMissing getMArray(int i) {
        CTMissing cTMissing;
        synchronized (monitor()) {
            check_orphaned();
            cTMissing = (CTMissing) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTMissing == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMissing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTNumber getNArray(int i) {
        CTNumber cTNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTNumber = (CTNumber) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTNumber == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNumber;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTString getSArray(int i) {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTString == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public CTIndex getXArray(int i) {
        CTIndex cTIndex;
        synchronized (monitor()) {
            check_orphaned();
            cTIndex = (CTIndex) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTIndex == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTIndex;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void setBArray(int i, CTBoolean cTBoolean) {
        generatedSetterHelperImpl(cTBoolean, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void setDArray(int i, CTDateTime cTDateTime) {
        generatedSetterHelperImpl(cTDateTime, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void setEArray(int i, CTError cTError) {
        generatedSetterHelperImpl(cTError, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void setMArray(int i, CTMissing cTMissing) {
        generatedSetterHelperImpl(cTMissing, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void setNArray(int i, CTNumber cTNumber) {
        generatedSetterHelperImpl(cTNumber, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void setSArray(int i, CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRecord
    public void setXArray(int i, CTIndex cTIndex) {
        generatedSetterHelperImpl(cTIndex, PROPERTY_QNAME[6], i, (short) 2);
    }
}
