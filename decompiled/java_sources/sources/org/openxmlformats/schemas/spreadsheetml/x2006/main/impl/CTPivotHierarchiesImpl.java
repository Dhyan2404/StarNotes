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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchy;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTPivotHierarchiesImpl;

/* loaded from: classes15.dex */
public class CTPivotHierarchiesImpl extends XmlComplexContentImpl implements CTPivotHierarchies {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "pivotHierarchy"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTPivotHierarchiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies
    public CTPivotHierarchy addNewPivotHierarchy() {
        CTPivotHierarchy cTPivotHierarchy;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotHierarchy = (CTPivotHierarchy) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPivotHierarchy;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies
    public CTPivotHierarchy[] getPivotHierarchyArray() {
        return (CTPivotHierarchy[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPivotHierarchy[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies
    public List<CTPivotHierarchy> getPivotHierarchyList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.p97
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPivotHierarchiesImpl.this.getPivotHierarchyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.q97
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPivotHierarchiesImpl.this.setPivotHierarchyArray(((Integer) obj).intValue(), (CTPivotHierarchy) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.r97
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPivotHierarchiesImpl.this.insertNewPivotHierarchy(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.s97
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPivotHierarchiesImpl.this.removePivotHierarchy(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.t97
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPivotHierarchiesImpl.this.sizeOfPivotHierarchyArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies
    public CTPivotHierarchy insertNewPivotHierarchy(int i) {
        CTPivotHierarchy cTPivotHierarchy;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotHierarchy = (CTPivotHierarchy) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPivotHierarchy;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies
    public void removePivotHierarchy(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies
    public void setPivotHierarchyArray(CTPivotHierarchy[] cTPivotHierarchyArr) {
        check_orphaned();
        arraySetterHelper(cTPivotHierarchyArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies
    public int sizeOfPivotHierarchyArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies
    public CTPivotHierarchy getPivotHierarchyArray(int i) {
        CTPivotHierarchy cTPivotHierarchy;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotHierarchy = (CTPivotHierarchy) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTPivotHierarchy == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPivotHierarchy;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotHierarchies
    public void setPivotHierarchyArray(int i, CTPivotHierarchy cTPivotHierarchy) {
        generatedSetterHelperImpl(cTPivotHierarchy, PROPERTY_QNAME[0], i, (short) 2);
    }
}
