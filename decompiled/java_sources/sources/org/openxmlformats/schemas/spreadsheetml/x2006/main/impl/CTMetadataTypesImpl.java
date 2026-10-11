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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataType;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTMetadataTypesImpl;

/* loaded from: classes15.dex */
public class CTMetadataTypesImpl extends XmlComplexContentImpl implements CTMetadataTypes {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "metadataType"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTMetadataTypesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes
    public CTMetadataType addNewMetadataType() {
        CTMetadataType cTMetadataType;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataType = (CTMetadataType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMetadataType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes
    public CTMetadataType[] getMetadataTypeArray() {
        return (CTMetadataType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTMetadataType[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes
    public List<CTMetadataType> getMetadataTypeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dn5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMetadataTypesImpl.this.getMetadataTypeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.en5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMetadataTypesImpl.this.setMetadataTypeArray(((Integer) obj).intValue(), (CTMetadataType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fn5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMetadataTypesImpl.this.insertNewMetadataType(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gn5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMetadataTypesImpl.this.removeMetadataType(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hn5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMetadataTypesImpl.this.sizeOfMetadataTypeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes
    public CTMetadataType insertNewMetadataType(int i) {
        CTMetadataType cTMetadataType;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataType = (CTMetadataType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTMetadataType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes
    public void removeMetadataType(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes
    public void setMetadataTypeArray(CTMetadataType[] cTMetadataTypeArr) {
        check_orphaned();
        arraySetterHelper(cTMetadataTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes
    public int sizeOfMetadataTypeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes
    public CTMetadataType getMetadataTypeArray(int i) {
        CTMetadataType cTMetadataType;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataType = (CTMetadataType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTMetadataType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMetadataType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes
    public void setMetadataTypeArray(int i, CTMetadataType cTMetadataType) {
        generatedSetterHelperImpl(cTMetadataType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
