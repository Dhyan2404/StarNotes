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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReference;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTPivotAreaReferencesImpl;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes15.dex */
public class CTPivotAreaReferencesImpl extends XmlComplexContentImpl implements CTPivotAreaReferences {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, Name.REFER), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTPivotAreaReferencesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences
    public CTPivotAreaReference addNewReference() {
        CTPivotAreaReference cTPivotAreaReference;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotAreaReference = (CTPivotAreaReference) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPivotAreaReference;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences
    public CTPivotAreaReference[] getReferenceArray() {
        return (CTPivotAreaReference[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPivotAreaReference[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences
    public List<CTPivotAreaReference> getReferenceList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.g87
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPivotAreaReferencesImpl.this.getReferenceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.h87
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPivotAreaReferencesImpl.this.setReferenceArray(((Integer) obj).intValue(), (CTPivotAreaReference) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.i87
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPivotAreaReferencesImpl.this.insertNewReference(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.j87
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPivotAreaReferencesImpl.this.removeReference(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.k87
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPivotAreaReferencesImpl.this.sizeOfReferenceArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences
    public CTPivotAreaReference insertNewReference(int i) {
        CTPivotAreaReference cTPivotAreaReference;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotAreaReference = (CTPivotAreaReference) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPivotAreaReference;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences
    public void removeReference(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences
    public void setReferenceArray(CTPivotAreaReference[] cTPivotAreaReferenceArr) {
        check_orphaned();
        arraySetterHelper(cTPivotAreaReferenceArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences
    public int sizeOfReferenceArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences
    public CTPivotAreaReference getReferenceArray(int i) {
        CTPivotAreaReference cTPivotAreaReference;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotAreaReference = (CTPivotAreaReference) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTPivotAreaReference == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPivotAreaReference;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotAreaReferences
    public void setReferenceArray(int i, CTPivotAreaReference cTPivotAreaReference) {
        generatedSetterHelperImpl(cTPivotAreaReference, PROPERTY_QNAME[0], i, (short) 2);
    }
}
