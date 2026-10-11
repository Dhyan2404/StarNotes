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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIndex;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTDiscretePrImpl;

/* loaded from: classes15.dex */
public class CTDiscretePrImpl extends XmlComplexContentImpl implements CTDiscretePr {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "x"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTDiscretePrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr
    public CTIndex addNewX() {
        CTIndex cTIndex;
        synchronized (monitor()) {
            check_orphaned();
            cTIndex = (CTIndex) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTIndex;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr
    public CTIndex[] getXArray() {
        return (CTIndex[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTIndex[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr
    public List<CTIndex> getXList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ye3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDiscretePrImpl.this.getXArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ze3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDiscretePrImpl.this.setXArray(((Integer) obj).intValue(), (CTIndex) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.af3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDiscretePrImpl.this.insertNewX(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bf3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDiscretePrImpl.this.removeX(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cf3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDiscretePrImpl.this.sizeOfXArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr
    public CTIndex insertNewX(int i) {
        CTIndex cTIndex;
        synchronized (monitor()) {
            check_orphaned();
            cTIndex = (CTIndex) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTIndex;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr
    public void removeX(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr
    public void setXArray(CTIndex[] cTIndexArr) {
        check_orphaned();
        arraySetterHelper(cTIndexArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr
    public int sizeOfXArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr
    public CTIndex getXArray(int i) {
        CTIndex cTIndex;
        synchronized (monitor()) {
            check_orphaned();
            cTIndex = (CTIndex) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTIndex == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTIndex;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr
    public void setXArray(int i, CTIndex cTIndex) {
        generatedSetterHelperImpl(cTIndex, PROPERTY_QNAME[0], i, (short) 2);
    }
}
