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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTablePart;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTTablePartsImpl;

/* loaded from: classes15.dex */
public class CTTablePartsImpl extends XmlComplexContentImpl implements CTTableParts {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "tablePart"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTTablePartsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts
    public CTTablePart addNewTablePart() {
        CTTablePart cTTablePart;
        synchronized (monitor()) {
            check_orphaned();
            cTTablePart = (CTTablePart) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTablePart;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts
    public CTTablePart[] getTablePartArray() {
        return (CTTablePart[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTTablePart[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts
    public List<CTTablePart> getTablePartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qdc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTablePartsImpl.this.getTablePartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rdc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTablePartsImpl.this.setTablePartArray(((Integer) obj).intValue(), (CTTablePart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sdc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTablePartsImpl.this.insertNewTablePart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tdc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTablePartsImpl.this.removeTablePart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.udc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTablePartsImpl.this.sizeOfTablePartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts
    public CTTablePart insertNewTablePart(int i) {
        CTTablePart cTTablePart;
        synchronized (monitor()) {
            check_orphaned();
            cTTablePart = (CTTablePart) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTTablePart;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts
    public void removeTablePart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts
    public void setTablePartArray(CTTablePart[] cTTablePartArr) {
        check_orphaned();
        arraySetterHelper(cTTablePartArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts
    public int sizeOfTablePartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts
    public CTTablePart getTablePartArray(int i) {
        CTTablePart cTTablePart;
        synchronized (monitor()) {
            check_orphaned();
            cTTablePart = (CTTablePart) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTTablePart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTablePart;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts
    public void setTablePartArray(int i, CTTablePart cTTablePart) {
        generatedSetterHelperImpl(cTTablePart, PROPERTY_QNAME[0], i, (short) 2);
    }
}
