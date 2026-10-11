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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTI;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTColItemsImpl;

/* loaded from: classes15.dex */
public class CTColItemsImpl extends XmlComplexContentImpl implements CTColItems {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "i"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTColItemsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems
    public CTI addNewI() {
        CTI cti;
        synchronized (monitor()) {
            check_orphaned();
            cti = (CTI) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cti;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems
    public CTI[] getIArray() {
        return (CTI[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTI[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems
    public List<CTI> getIList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qy1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColItemsImpl.this.getIArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ry1
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColItemsImpl.this.setIArray(((Integer) obj).intValue(), (CTI) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sy1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColItemsImpl.this.insertNewI(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ty1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColItemsImpl.this.removeI(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.uy1
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColItemsImpl.this.sizeOfIArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems
    public CTI insertNewI(int i) {
        CTI cti;
        synchronized (monitor()) {
            check_orphaned();
            cti = (CTI) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cti;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems
    public void removeI(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems
    public void setIArray(CTI[] ctiArr) {
        check_orphaned();
        arraySetterHelper(ctiArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems
    public int sizeOfIArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems
    public CTI getIArray(int i) {
        CTI cti;
        synchronized (monitor()) {
            check_orphaned();
            cti = (CTI) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cti == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cti;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColItems
    public void setIArray(int i, CTI cti) {
        generatedSetterHelperImpl(cti, PROPERTY_QNAME[0], i, (short) 2);
    }
}
