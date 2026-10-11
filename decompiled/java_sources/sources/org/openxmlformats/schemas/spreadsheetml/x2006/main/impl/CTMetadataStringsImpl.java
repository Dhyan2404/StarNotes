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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXStringElement;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTMetadataStringsImpl;

/* loaded from: classes15.dex */
public class CTMetadataStringsImpl extends XmlComplexContentImpl implements CTMetadataStrings {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "s"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTMetadataStringsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings
    public CTXStringElement addNewS() {
        CTXStringElement cTXStringElement;
        synchronized (monitor()) {
            check_orphaned();
            cTXStringElement = (CTXStringElement) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTXStringElement;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings
    public CTXStringElement[] getSArray() {
        return (CTXStringElement[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTXStringElement[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings
    public List<CTXStringElement> getSList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ym5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMetadataStringsImpl.this.getSArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zm5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMetadataStringsImpl.this.setSArray(((Integer) obj).intValue(), (CTXStringElement) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.an5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMetadataStringsImpl.this.insertNewS(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bn5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMetadataStringsImpl.this.removeS(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cn5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMetadataStringsImpl.this.sizeOfSArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings
    public CTXStringElement insertNewS(int i) {
        CTXStringElement cTXStringElement;
        synchronized (monitor()) {
            check_orphaned();
            cTXStringElement = (CTXStringElement) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTXStringElement;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings
    public void removeS(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings
    public void setSArray(CTXStringElement[] cTXStringElementArr) {
        check_orphaned();
        arraySetterHelper(cTXStringElementArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings
    public int sizeOfSArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlUnsignedInt = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlUnsignedInt == null) {
                xmlUnsignedInt = (XmlUnsignedInt) get_default_attribute_value(qNameArr[1]);
            }
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings
    public CTXStringElement getSArray(int i) {
        CTXStringElement cTXStringElement;
        synchronized (monitor()) {
            check_orphaned();
            cTXStringElement = (CTXStringElement) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTXStringElement == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTXStringElement;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings
    public void setSArray(int i, CTXStringElement cTXStringElement) {
        generatedSetterHelperImpl(cTXStringElement, PROPERTY_QNAME[0], i, (short) 2);
    }
}
