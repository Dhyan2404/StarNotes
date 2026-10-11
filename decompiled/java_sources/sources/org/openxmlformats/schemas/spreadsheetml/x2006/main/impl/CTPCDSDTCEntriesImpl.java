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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTError;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMissing;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTNumber;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTString;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTPCDSDTCEntriesImpl;

/* loaded from: classes15.dex */
public class CTPCDSDTCEntriesImpl extends XmlComplexContentImpl implements CTPCDSDTCEntries {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "m"), new QName(XSSFRelation.NS_SPREADSHEETML, GoogleApiAvailabilityLight.f29016b), new QName(XSSFRelation.NS_SPREADSHEETML, "e"), new QName(XSSFRelation.NS_SPREADSHEETML, "s"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTPCDSDTCEntriesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public CTError addNewE() {
        CTError cTError;
        synchronized (monitor()) {
            check_orphaned();
            cTError = (CTError) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTError;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public CTMissing addNewM() {
        CTMissing cTMissing;
        synchronized (monitor()) {
            check_orphaned();
            cTMissing = (CTMissing) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMissing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public CTNumber addNewN() {
        CTNumber cTNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTNumber = (CTNumber) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTNumber;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public CTString addNewS() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public CTError[] getEArray() {
        return (CTError[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTError[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public List<CTError> getEList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.eh6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPCDSDTCEntriesImpl.this.getEArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fh6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPCDSDTCEntriesImpl.this.setEArray(((Integer) obj).intValue(), (CTError) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gh6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPCDSDTCEntriesImpl.this.insertNewE(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hh6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPCDSDTCEntriesImpl.this.removeE(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ih6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPCDSDTCEntriesImpl.this.sizeOfEArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public CTMissing[] getMArray() {
        return (CTMissing[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTMissing[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public List<CTMissing> getMList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dh6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPCDSDTCEntriesImpl.this.getMArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oh6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPCDSDTCEntriesImpl.this.setMArray(((Integer) obj).intValue(), (CTMissing) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ph6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPCDSDTCEntriesImpl.this.insertNewM(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qh6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPCDSDTCEntriesImpl.this.removeM(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rh6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPCDSDTCEntriesImpl.this.sizeOfMArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public CTNumber[] getNArray() {
        return (CTNumber[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTNumber[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public List<CTNumber> getNList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sh6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPCDSDTCEntriesImpl.this.getNArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.th6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPCDSDTCEntriesImpl.this.setNArray(((Integer) obj).intValue(), (CTNumber) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uh6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPCDSDTCEntriesImpl.this.insertNewN(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vh6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPCDSDTCEntriesImpl.this.removeN(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wh6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPCDSDTCEntriesImpl.this.sizeOfNArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public CTString[] getSArray() {
        return (CTString[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTString[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public List<CTString> getSList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jh6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPCDSDTCEntriesImpl.this.getSArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kh6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPCDSDTCEntriesImpl.this.setSArray(((Integer) obj).intValue(), (CTString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lh6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPCDSDTCEntriesImpl.this.insertNewS(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mh6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPCDSDTCEntriesImpl.this.removeS(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nh6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPCDSDTCEntriesImpl.this.sizeOfSArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public CTError insertNewE(int i) {
        CTError cTError;
        synchronized (monitor()) {
            check_orphaned();
            cTError = (CTError) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTError;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public CTMissing insertNewM(int i) {
        CTMissing cTMissing;
        synchronized (monitor()) {
            check_orphaned();
            cTMissing = (CTMissing) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTMissing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public CTNumber insertNewN(int i) {
        CTNumber cTNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTNumber = (CTNumber) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTNumber;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public CTString insertNewS(int i) {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public boolean isSetCount() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public void removeE(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public void removeM(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public void removeN(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public void removeS(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public void setCount(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public void setEArray(CTError[] cTErrorArr) {
        check_orphaned();
        arraySetterHelper(cTErrorArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public void setMArray(CTMissing[] cTMissingArr) {
        check_orphaned();
        arraySetterHelper(cTMissingArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public void setNArray(CTNumber[] cTNumberArr) {
        check_orphaned();
        arraySetterHelper(cTNumberArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public void setSArray(CTString[] cTStringArr) {
        check_orphaned();
        arraySetterHelper(cTStringArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public int sizeOfEArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public int sizeOfMArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public int sizeOfNArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public int sizeOfSArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public void xsetCount(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public CTError getEArray(int i) {
        CTError cTError;
        synchronized (monitor()) {
            check_orphaned();
            cTError = (CTError) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTError == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTError;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public CTString getSArray(int i) {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTString == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public void setEArray(int i, CTError cTError) {
        generatedSetterHelperImpl(cTError, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public void setMArray(int i, CTMissing cTMissing) {
        generatedSetterHelperImpl(cTMissing, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public void setNArray(int i, CTNumber cTNumber) {
        generatedSetterHelperImpl(cTNumber, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries
    public void setSArray(int i, CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[3], i, (short) 2);
    }
}
