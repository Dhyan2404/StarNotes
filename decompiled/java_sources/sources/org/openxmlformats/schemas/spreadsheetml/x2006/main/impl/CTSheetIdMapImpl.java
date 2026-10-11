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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetId;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTSheetIdMapImpl;

/* loaded from: classes15.dex */
public class CTSheetIdMapImpl extends XmlComplexContentImpl implements CTSheetIdMap {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "sheetId"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTSheetIdMapImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap
    public CTSheetId addNewSheetId() {
        CTSheetId cTSheetId;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetId = (CTSheetId) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSheetId;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap
    public CTSheetId[] getSheetIdArray() {
        return (CTSheetId[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTSheetId[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap
    public List<CTSheetId> getSheetIdList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.m3b
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSheetIdMapImpl.this.getSheetIdArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.n3b
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSheetIdMapImpl.this.setSheetIdArray(((Integer) obj).intValue(), (CTSheetId) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.o3b
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSheetIdMapImpl.this.insertNewSheetId(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.p3b
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSheetIdMapImpl.this.removeSheetId(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.q3b
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSheetIdMapImpl.this.sizeOfSheetIdArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap
    public CTSheetId insertNewSheetId(int i) {
        CTSheetId cTSheetId;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetId = (CTSheetId) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTSheetId;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap
    public void removeSheetId(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap
    public void setSheetIdArray(CTSheetId[] cTSheetIdArr) {
        check_orphaned();
        arraySetterHelper(cTSheetIdArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap
    public int sizeOfSheetIdArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap
    public CTSheetId getSheetIdArray(int i) {
        CTSheetId cTSheetId;
        synchronized (monitor()) {
            check_orphaned();
            cTSheetId = (CTSheetId) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTSheetId == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSheetId;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetIdMap
    public void setSheetIdArray(int i, CTSheetId cTSheetId) {
        generatedSetterHelperImpl(cTSheetId, PROPERTY_QNAME[0], i, (short) 2);
    }
}
