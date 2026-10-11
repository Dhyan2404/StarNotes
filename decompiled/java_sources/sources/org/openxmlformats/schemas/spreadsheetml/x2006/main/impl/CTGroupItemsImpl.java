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
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBoolean;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateTime;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTError;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMissing;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTNumber;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTString;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTGroupItemsImpl;

/* loaded from: classes15.dex */
public class CTGroupItemsImpl extends XmlComplexContentImpl implements CTGroupItems {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "m"), new QName(XSSFRelation.NS_SPREADSHEETML, GoogleApiAvailabilityLight.f29016b), new QName(XSSFRelation.NS_SPREADSHEETML, "b"), new QName(XSSFRelation.NS_SPREADSHEETML, "e"), new QName(XSSFRelation.NS_SPREADSHEETML, "s"), new QName(XSSFRelation.NS_SPREADSHEETML, "d"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTGroupItemsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTBoolean addNewB() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTDateTime addNewD() {
        CTDateTime cTDateTime;
        synchronized (monitor()) {
            check_orphaned();
            cTDateTime = (CTDateTime) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTDateTime;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTError addNewE() {
        CTError cTError;
        synchronized (monitor()) {
            check_orphaned();
            cTError = (CTError) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTError;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTMissing addNewM() {
        CTMissing cTMissing;
        synchronized (monitor()) {
            check_orphaned();
            cTMissing = (CTMissing) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMissing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTNumber addNewN() {
        CTNumber cTNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTNumber = (CTNumber) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTNumber;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTString addNewS() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTBoolean[] getBArray() {
        return (CTBoolean[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTBoolean[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public List<CTBoolean> getBList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lg4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupItemsImpl.this.getBArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wg4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupItemsImpl.this.setBArray(((Integer) obj).intValue(), (CTBoolean) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hh4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupItemsImpl.this.insertNewB(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ih4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupItemsImpl.this.removeB(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jh4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupItemsImpl.this.sizeOfBArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTDateTime[] getDArray() {
        return (CTDateTime[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTDateTime[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public List<CTDateTime> getDList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mg4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupItemsImpl.this.getDArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ng4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupItemsImpl.this.setDArray(((Integer) obj).intValue(), (CTDateTime) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.og4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupItemsImpl.this.insertNewD(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pg4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupItemsImpl.this.removeD(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qg4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupItemsImpl.this.sizeOfDArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTError[] getEArray() {
        return (CTError[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTError[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public List<CTError> getEList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ch4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupItemsImpl.this.getEArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dh4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupItemsImpl.this.setEArray(((Integer) obj).intValue(), (CTError) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.eh4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupItemsImpl.this.insertNewE(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fh4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupItemsImpl.this.removeE(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gh4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupItemsImpl.this.sizeOfEArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTMissing[] getMArray() {
        return (CTMissing[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTMissing[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public List<CTMissing> getMList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rg4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupItemsImpl.this.getMArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sg4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupItemsImpl.this.setMArray(((Integer) obj).intValue(), (CTMissing) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tg4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupItemsImpl.this.insertNewM(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ug4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupItemsImpl.this.removeM(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vg4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupItemsImpl.this.sizeOfMArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTNumber[] getNArray() {
        return (CTNumber[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTNumber[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public List<CTNumber> getNList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xg4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupItemsImpl.this.getNArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yg4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupItemsImpl.this.setNArray(((Integer) obj).intValue(), (CTNumber) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zg4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupItemsImpl.this.insertNewN(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ah4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupItemsImpl.this.removeN(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bh4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupItemsImpl.this.sizeOfNArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTString[] getSArray() {
        return (CTString[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTString[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public List<CTString> getSList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.kh4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupItemsImpl.this.getSArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lh4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupItemsImpl.this.setSArray(((Integer) obj).intValue(), (CTString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.mh4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupItemsImpl.this.insertNewS(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.nh4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupItemsImpl.this.removeS(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.oh4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupItemsImpl.this.sizeOfSArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTBoolean insertNewB(int i) {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTDateTime insertNewD(int i) {
        CTDateTime cTDateTime;
        synchronized (monitor()) {
            check_orphaned();
            cTDateTime = (CTDateTime) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTDateTime;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTError insertNewE(int i) {
        CTError cTError;
        synchronized (monitor()) {
            check_orphaned();
            cTError = (CTError) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTError;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTMissing insertNewM(int i) {
        CTMissing cTMissing;
        synchronized (monitor()) {
            check_orphaned();
            cTMissing = (CTMissing) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTMissing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTNumber insertNewN(int i) {
        CTNumber cTNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTNumber = (CTNumber) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTNumber;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public CTString insertNewS(int i) {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public boolean isSetCount() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void removeB(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void removeD(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void removeE(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void removeM(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void removeN(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void removeS(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void setBArray(CTBoolean[] cTBooleanArr) {
        check_orphaned();
        arraySetterHelper(cTBooleanArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void setCount(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void setDArray(CTDateTime[] cTDateTimeArr) {
        check_orphaned();
        arraySetterHelper(cTDateTimeArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void setEArray(CTError[] cTErrorArr) {
        check_orphaned();
        arraySetterHelper(cTErrorArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void setMArray(CTMissing[] cTMissingArr) {
        check_orphaned();
        arraySetterHelper(cTMissingArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void setNArray(CTNumber[] cTNumberArr) {
        check_orphaned();
        arraySetterHelper(cTNumberArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void setSArray(CTString[] cTStringArr) {
        check_orphaned();
        arraySetterHelper(cTStringArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public int sizeOfBArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public int sizeOfDArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public int sizeOfEArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public int sizeOfMArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public int sizeOfNArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public int sizeOfSArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void xsetCount(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[6]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void setBArray(int i, CTBoolean cTBoolean) {
        generatedSetterHelperImpl(cTBoolean, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void setDArray(int i, CTDateTime cTDateTime) {
        generatedSetterHelperImpl(cTDateTime, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void setEArray(int i, CTError cTError) {
        generatedSetterHelperImpl(cTError, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void setMArray(int i, CTMissing cTMissing) {
        generatedSetterHelperImpl(cTMissing, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void setNArray(int i, CTNumber cTNumber) {
        generatedSetterHelperImpl(cTNumber, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems
    public void setSArray(int i, CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[4], i, (short) 2);
    }
}
