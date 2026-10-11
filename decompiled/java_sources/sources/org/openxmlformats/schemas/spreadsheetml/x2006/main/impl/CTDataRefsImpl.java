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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRef;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTDataRefsImpl;

/* loaded from: classes15.dex */
public class CTDataRefsImpl extends XmlComplexContentImpl implements CTDataRefs {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "dataRef"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTDataRefsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs
    public CTDataRef addNewDataRef() {
        CTDataRef cTDataRef;
        synchronized (monitor()) {
            check_orphaned();
            cTDataRef = (CTDataRef) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDataRef;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs
    public CTDataRef[] getDataRefArray() {
        return (CTDataRef[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTDataRef[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs
    public List<CTDataRef> getDataRefList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.x53
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDataRefsImpl.this.getDataRefArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.y53
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDataRefsImpl.this.setDataRefArray(((Integer) obj).intValue(), (CTDataRef) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.z53
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDataRefsImpl.this.insertNewDataRef(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.a63
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDataRefsImpl.this.removeDataRef(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.b63
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDataRefsImpl.this.sizeOfDataRefArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs
    public CTDataRef insertNewDataRef(int i) {
        CTDataRef cTDataRef;
        synchronized (monitor()) {
            check_orphaned();
            cTDataRef = (CTDataRef) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTDataRef;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs
    public void removeDataRef(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs
    public void setDataRefArray(CTDataRef[] cTDataRefArr) {
        check_orphaned();
        arraySetterHelper(cTDataRefArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs
    public int sizeOfDataRefArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs
    public CTDataRef getDataRefArray(int i) {
        CTDataRef cTDataRef;
        synchronized (monitor()) {
            check_orphaned();
            cTDataRef = (CTDataRef) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTDataRef == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDataRef;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataRefs
    public void setDataRefArray(int i, CTDataRef cTDataRef) {
        generatedSetterHelperImpl(cTDataRef, PROPERTY_QNAME[0], i, (short) 2);
    }
}
