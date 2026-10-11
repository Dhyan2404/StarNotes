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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperty;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTMemberPropertiesImpl;

/* loaded from: classes15.dex */
public class CTMemberPropertiesImpl extends XmlComplexContentImpl implements CTMemberProperties {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "mp"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTMemberPropertiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties
    public CTMemberProperty addNewMp() {
        CTMemberProperty cTMemberProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTMemberProperty = (CTMemberProperty) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMemberProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties
    public CTMemberProperty[] getMpArray() {
        return (CTMemberProperty[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTMemberProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties
    public List<CTMemberProperty> getMpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ul5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMemberPropertiesImpl.this.getMpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vl5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMemberPropertiesImpl.this.setMpArray(((Integer) obj).intValue(), (CTMemberProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wl5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMemberPropertiesImpl.this.insertNewMp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xl5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMemberPropertiesImpl.this.removeMp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yl5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMemberPropertiesImpl.this.sizeOfMpArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties
    public CTMemberProperty insertNewMp(int i) {
        CTMemberProperty cTMemberProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTMemberProperty = (CTMemberProperty) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTMemberProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties
    public void removeMp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties
    public void setMpArray(CTMemberProperty[] cTMemberPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTMemberPropertyArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties
    public int sizeOfMpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties
    public CTMemberProperty getMpArray(int i) {
        CTMemberProperty cTMemberProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTMemberProperty = (CTMemberProperty) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTMemberProperty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMemberProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMemberProperties
    public void setMpArray(int i, CTMemberProperty cTMemberProperty) {
        generatedSetterHelperImpl(cTMemberProperty, PROPERTY_QNAME[0], i, (short) 2);
    }
}
