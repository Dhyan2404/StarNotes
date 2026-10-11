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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchy;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCacheHierarchiesImpl;

/* loaded from: classes15.dex */
public class CTCacheHierarchiesImpl extends XmlComplexContentImpl implements CTCacheHierarchies {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "cacheHierarchy"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTCacheHierarchiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies
    public CTCacheHierarchy addNewCacheHierarchy() {
        CTCacheHierarchy cTCacheHierarchy;
        synchronized (monitor()) {
            check_orphaned();
            cTCacheHierarchy = (CTCacheHierarchy) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCacheHierarchy;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies
    public CTCacheHierarchy[] getCacheHierarchyArray() {
        return (CTCacheHierarchy[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCacheHierarchy[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies
    public List<CTCacheHierarchy> getCacheHierarchyList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.b51
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCacheHierarchiesImpl.this.getCacheHierarchyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.c51
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCacheHierarchiesImpl.this.setCacheHierarchyArray(((Integer) obj).intValue(), (CTCacheHierarchy) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.d51
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCacheHierarchiesImpl.this.insertNewCacheHierarchy(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.e51
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCacheHierarchiesImpl.this.removeCacheHierarchy(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.f51
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCacheHierarchiesImpl.this.sizeOfCacheHierarchyArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies
    public CTCacheHierarchy insertNewCacheHierarchy(int i) {
        CTCacheHierarchy cTCacheHierarchy;
        synchronized (monitor()) {
            check_orphaned();
            cTCacheHierarchy = (CTCacheHierarchy) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCacheHierarchy;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies
    public void removeCacheHierarchy(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies
    public void setCacheHierarchyArray(CTCacheHierarchy[] cTCacheHierarchyArr) {
        check_orphaned();
        arraySetterHelper(cTCacheHierarchyArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies
    public int sizeOfCacheHierarchyArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies
    public CTCacheHierarchy getCacheHierarchyArray(int i) {
        CTCacheHierarchy cTCacheHierarchy;
        synchronized (monitor()) {
            check_orphaned();
            cTCacheHierarchy = (CTCacheHierarchy) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCacheHierarchy == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCacheHierarchy;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheHierarchies
    public void setCacheHierarchyArray(int i, CTCacheHierarchy cTCacheHierarchy) {
        generatedSetterHelperImpl(cTCacheHierarchy, PROPERTY_QNAME[0], i, (short) 2);
    }
}
