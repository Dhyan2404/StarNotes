package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTSetsImpl;

/* loaded from: classes15.dex */
public class CTSetsImpl extends XmlComplexContentImpl implements CTSets {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, ExtensionNamespaceContext.EXSLT_SET_PREFIX), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTSetsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets
    public CTSet addNewSet() {
        CTSet cTSet;
        synchronized (monitor()) {
            check_orphaned();
            cTSet = (CTSet) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSet;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets
    public CTSet[] getSetArray() {
        return (CTSet[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTSet[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets
    public List<CTSet> getSetList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yra
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSetsImpl.this.getSetArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zra
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSetsImpl.this.setSetArray(((Integer) obj).intValue(), (CTSet) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.asa
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSetsImpl.this.insertNewSet(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bsa
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSetsImpl.this.removeSet(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.csa
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSetsImpl.this.sizeOfSetArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets
    public CTSet insertNewSet(int i) {
        CTSet cTSet;
        synchronized (monitor()) {
            check_orphaned();
            cTSet = (CTSet) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTSet;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets
    public void removeSet(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets
    public void setSetArray(CTSet[] cTSetArr) {
        check_orphaned();
        arraySetterHelper(cTSetArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets
    public int sizeOfSetArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets
    public CTSet getSetArray(int i) {
        CTSet cTSet;
        synchronized (monitor()) {
            check_orphaned();
            cTSet = (CTSet) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTSet == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSet;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets
    public void setSetArray(int i, CTSet cTSet) {
        generatedSetterHelperImpl(cTSet, PROPERTY_QNAME[0], i, (short) 2);
    }
}
