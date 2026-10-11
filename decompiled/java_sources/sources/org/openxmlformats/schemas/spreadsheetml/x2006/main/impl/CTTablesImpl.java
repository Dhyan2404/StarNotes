package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIndex;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableMissing;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXStringElement;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTTablesImpl;

/* loaded from: classes15.dex */
public class CTTablesImpl extends XmlComplexContentImpl implements CTTables {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "m"), new QName(XSSFRelation.NS_SPREADSHEETML, "s"), new QName(XSSFRelation.NS_SPREADSHEETML, "x"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTTablesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public CTTableMissing addNewM() {
        CTTableMissing cTTableMissing;
        synchronized (monitor()) {
            check_orphaned();
            cTTableMissing = (CTTableMissing) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTableMissing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public CTXStringElement addNewS() {
        CTXStringElement cTXStringElement;
        synchronized (monitor()) {
            check_orphaned();
            cTXStringElement = (CTXStringElement) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTXStringElement;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public CTIndex addNewX() {
        CTIndex cTIndex;
        synchronized (monitor()) {
            check_orphaned();
            cTIndex = (CTIndex) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTIndex;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public CTTableMissing[] getMArray() {
        return (CTTableMissing[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTTableMissing[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public List<CTTableMissing> getMList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.pec
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTablesImpl.this.getMArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vec
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTablesImpl.this.setMArray(((Integer) obj).intValue(), (CTTableMissing) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wec
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTablesImpl.this.insertNewM(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xec
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTablesImpl.this.removeM(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yec
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTablesImpl.this.sizeOfMArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public CTXStringElement[] getSArray() {
        return (CTXStringElement[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTXStringElement[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public List<CTXStringElement> getSList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zec
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTablesImpl.this.getSArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.afc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTablesImpl.this.setSArray(((Integer) obj).intValue(), (CTXStringElement) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bfc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTablesImpl.this.insertNewS(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cfc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTablesImpl.this.removeS(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dfc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTablesImpl.this.sizeOfSArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public CTIndex[] getXArray() {
        return (CTIndex[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTIndex[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public List<CTIndex> getXList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qec
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTablesImpl.this.getXArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rec
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTablesImpl.this.setXArray(((Integer) obj).intValue(), (CTIndex) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sec
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTablesImpl.this.insertNewX(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tec
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTablesImpl.this.removeX(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.uec
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTablesImpl.this.sizeOfXArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public CTTableMissing insertNewM(int i) {
        CTTableMissing cTTableMissing;
        synchronized (monitor()) {
            check_orphaned();
            cTTableMissing = (CTTableMissing) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTTableMissing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public CTXStringElement insertNewS(int i) {
        CTXStringElement cTXStringElement;
        synchronized (monitor()) {
            check_orphaned();
            cTXStringElement = (CTXStringElement) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTXStringElement;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public CTIndex insertNewX(int i) {
        CTIndex cTIndex;
        synchronized (monitor()) {
            check_orphaned();
            cTIndex = (CTIndex) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTIndex;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public boolean isSetCount() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public void removeM(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public void removeS(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public void removeX(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public void setCount(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public void setMArray(CTTableMissing[] cTTableMissingArr) {
        check_orphaned();
        arraySetterHelper(cTTableMissingArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public void setSArray(CTXStringElement[] cTXStringElementArr) {
        check_orphaned();
        arraySetterHelper(cTXStringElementArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public void setXArray(CTIndex[] cTIndexArr) {
        check_orphaned();
        arraySetterHelper(cTIndexArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public int sizeOfMArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public int sizeOfSArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public int sizeOfXArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public void xsetCount(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public CTTableMissing getMArray(int i) {
        CTTableMissing cTTableMissing;
        synchronized (monitor()) {
            check_orphaned();
            cTTableMissing = (CTTableMissing) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTTableMissing == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTableMissing;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public CTXStringElement getSArray(int i) {
        CTXStringElement cTXStringElement;
        synchronized (monitor()) {
            check_orphaned();
            cTXStringElement = (CTXStringElement) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTXStringElement == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTXStringElement;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public CTIndex getXArray(int i) {
        CTIndex cTIndex;
        synchronized (monitor()) {
            check_orphaned();
            cTIndex = (CTIndex) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTIndex == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTIndex;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public void setMArray(int i, CTTableMissing cTTableMissing) {
        generatedSetterHelperImpl(cTTableMissing, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public void setSArray(int i, CTXStringElement cTXStringElement) {
        generatedSetterHelperImpl(cTXStringElement, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTables
    public void setXArray(int i, CTIndex cTIndex) {
        generatedSetterHelperImpl(cTIndex, PROPERTY_QNAME[2], i, (short) 2);
    }
}
