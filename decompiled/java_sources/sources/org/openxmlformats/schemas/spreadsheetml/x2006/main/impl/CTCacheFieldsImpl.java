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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheField;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCacheFieldsImpl;

/* loaded from: classes15.dex */
public class CTCacheFieldsImpl extends XmlComplexContentImpl implements CTCacheFields {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "cacheField"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTCacheFieldsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields
    public CTCacheField addNewCacheField() {
        CTCacheField cTCacheField;
        synchronized (monitor()) {
            check_orphaned();
            cTCacheField = (CTCacheField) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCacheField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields
    public CTCacheField[] getCacheFieldArray() {
        return (CTCacheField[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCacheField[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields
    public List<CTCacheField> getCacheFieldList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.w41
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCacheFieldsImpl.this.getCacheFieldArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.x41
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCacheFieldsImpl.this.setCacheFieldArray(((Integer) obj).intValue(), (CTCacheField) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.y41
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCacheFieldsImpl.this.insertNewCacheField(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.z41
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCacheFieldsImpl.this.removeCacheField(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.a51
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCacheFieldsImpl.this.sizeOfCacheFieldArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields
    public CTCacheField insertNewCacheField(int i) {
        CTCacheField cTCacheField;
        synchronized (monitor()) {
            check_orphaned();
            cTCacheField = (CTCacheField) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCacheField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields
    public void removeCacheField(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields
    public void setCacheFieldArray(CTCacheField[] cTCacheFieldArr) {
        check_orphaned();
        arraySetterHelper(cTCacheFieldArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields
    public int sizeOfCacheFieldArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields
    public CTCacheField getCacheFieldArray(int i) {
        CTCacheField cTCacheField;
        synchronized (monitor()) {
            check_orphaned();
            cTCacheField = (CTCacheField) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCacheField == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCacheField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheFields
    public void setCacheFieldArray(int i, CTCacheField cTCacheField) {
        generatedSetterHelperImpl(cTCacheField, PROPERTY_QNAME[0], i, (short) 2);
    }
}
