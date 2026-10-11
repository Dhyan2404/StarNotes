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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCellXfsImpl;

/* loaded from: classes15.dex */
public class CTCellXfsImpl extends XmlComplexContentImpl implements CTCellXfs {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "xf"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTCellXfsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs
    public CTXf addNewXf() {
        CTXf cTXf;
        synchronized (monitor()) {
            check_orphaned();
            cTXf = (CTXf) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTXf;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs
    public CTXf[] getXfArray() {
        return (CTXf[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTXf[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs
    public List<CTXf> getXfList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.e71
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCellXfsImpl.this.getXfArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.f71
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCellXfsImpl.this.setXfArray(((Integer) obj).intValue(), (CTXf) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g71
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCellXfsImpl.this.insertNewXf(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h71
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCellXfsImpl.this.removeXf(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i71
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCellXfsImpl.this.sizeOfXfArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs
    public CTXf insertNewXf(int i) {
        CTXf cTXf;
        synchronized (monitor()) {
            check_orphaned();
            cTXf = (CTXf) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTXf;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs
    public void removeXf(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs
    public void setXfArray(CTXf[] cTXfArr) {
        check_orphaned();
        arraySetterHelper(cTXfArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs
    public int sizeOfXfArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs
    public CTXf getXfArray(int i) {
        CTXf cTXf;
        synchronized (monitor()) {
            check_orphaned();
            cTXf = (CTXf) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTXf == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTXf;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs
    public void setXfArray(int i, CTXf cTXf) {
        generatedSetterHelperImpl(cTXf, PROPERTY_QNAME[0], i, (short) 2);
    }
}
