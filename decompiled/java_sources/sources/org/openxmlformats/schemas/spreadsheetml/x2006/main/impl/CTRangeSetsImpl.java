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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTRangeSetsImpl;

/* loaded from: classes15.dex */
public class CTRangeSetsImpl extends XmlComplexContentImpl implements CTRangeSets {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "rangeSet"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTRangeSetsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets
    public CTRangeSet addNewRangeSet() {
        CTRangeSet cTRangeSet;
        synchronized (monitor()) {
            check_orphaned();
            cTRangeSet = (CTRangeSet) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRangeSet;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets
    public CTRangeSet[] getRangeSetArray() {
        return (CTRangeSet[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTRangeSet[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets
    public List<CTRangeSet> getRangeSetList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cl8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRangeSetsImpl.this.getRangeSetArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dl8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRangeSetsImpl.this.setRangeSetArray(((Integer) obj).intValue(), (CTRangeSet) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.el8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRangeSetsImpl.this.insertNewRangeSet(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fl8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRangeSetsImpl.this.removeRangeSet(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gl8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRangeSetsImpl.this.sizeOfRangeSetArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets
    public CTRangeSet insertNewRangeSet(int i) {
        CTRangeSet cTRangeSet;
        synchronized (monitor()) {
            check_orphaned();
            cTRangeSet = (CTRangeSet) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTRangeSet;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets
    public boolean isSetCount() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets
    public void removeRangeSet(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets
    public void setCount(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets
    public void setRangeSetArray(CTRangeSet[] cTRangeSetArr) {
        check_orphaned();
        arraySetterHelper(cTRangeSetArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets
    public int sizeOfRangeSetArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets
    public void xsetCount(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets
    public CTRangeSet getRangeSetArray(int i) {
        CTRangeSet cTRangeSet;
        synchronized (monitor()) {
            check_orphaned();
            cTRangeSet = (CTRangeSet) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTRangeSet == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRangeSet;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets
    public void setRangeSetArray(int i, CTRangeSet cTRangeSet) {
        generatedSetterHelperImpl(cTRangeSet, PROPERTY_QNAME[0], i, (short) 2);
    }
}
