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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuple;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTTuplesImpl;

/* loaded from: classes15.dex */
public class CTTuplesImpl extends XmlComplexContentImpl implements CTTuples {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "tpl"), new QName("", "c")};
    private static final long serialVersionUID = 1;

    public CTTuplesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples
    public CTTuple addNewTpl() {
        CTTuple cTTuple;
        synchronized (monitor()) {
            check_orphaned();
            cTTuple = (CTTuple) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTuple;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples
    public long getC() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples
    public CTTuple[] getTplArray() {
        return (CTTuple[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTTuple[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples
    public List<CTTuple> getTplList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lxc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTuplesImpl.this.getTplArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mxc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTuplesImpl.this.setTplArray(((Integer) obj).intValue(), (CTTuple) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nxc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTuplesImpl.this.insertNewTpl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.oxc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTuplesImpl.this.removeTpl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pxc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTuplesImpl.this.sizeOfTplArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples
    public CTTuple insertNewTpl(int i) {
        CTTuple cTTuple;
        synchronized (monitor()) {
            check_orphaned();
            cTTuple = (CTTuple) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTTuple;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples
    public boolean isSetC() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples
    public void removeTpl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples
    public void setC(long j) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples
    public void setTplArray(CTTuple[] cTTupleArr) {
        check_orphaned();
        arraySetterHelper(cTTupleArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples
    public int sizeOfTplArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples
    public void unsetC() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples
    public XmlUnsignedInt xgetC() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples
    public void xsetC(XmlUnsignedInt xmlUnsignedInt) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples
    public CTTuple getTplArray(int i) {
        CTTuple cTTuple;
        synchronized (monitor()) {
            check_orphaned();
            cTTuple = (CTTuple) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTTuple == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTuple;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples
    public void setTplArray(int i, CTTuple cTTuple) {
        generatedSetterHelperImpl(cTTuple, PROPERTY_QNAME[0], i, (short) 2);
    }
}
