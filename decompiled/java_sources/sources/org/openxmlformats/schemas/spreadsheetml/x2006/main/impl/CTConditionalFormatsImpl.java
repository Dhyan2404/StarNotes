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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormat;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTConditionalFormatsImpl;

/* loaded from: classes15.dex */
public class CTConditionalFormatsImpl extends XmlComplexContentImpl implements CTConditionalFormats {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "conditionalFormat"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTConditionalFormatsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats
    public CTConditionalFormat addNewConditionalFormat() {
        CTConditionalFormat cTConditionalFormat;
        synchronized (monitor()) {
            check_orphaned();
            cTConditionalFormat = (CTConditionalFormat) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTConditionalFormat;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats
    public CTConditionalFormat[] getConditionalFormatArray() {
        return (CTConditionalFormat[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTConditionalFormat[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats
    public List<CTConditionalFormat> getConditionalFormatList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ea2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTConditionalFormatsImpl.this.getConditionalFormatArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fa2
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTConditionalFormatsImpl.this.setConditionalFormatArray(((Integer) obj).intValue(), (CTConditionalFormat) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ga2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTConditionalFormatsImpl.this.insertNewConditionalFormat(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ha2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTConditionalFormatsImpl.this.removeConditionalFormat(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ia2
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTConditionalFormatsImpl.this.sizeOfConditionalFormatArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats
    public CTConditionalFormat insertNewConditionalFormat(int i) {
        CTConditionalFormat cTConditionalFormat;
        synchronized (monitor()) {
            check_orphaned();
            cTConditionalFormat = (CTConditionalFormat) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTConditionalFormat;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats
    public void removeConditionalFormat(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats
    public void setConditionalFormatArray(CTConditionalFormat[] cTConditionalFormatArr) {
        check_orphaned();
        arraySetterHelper(cTConditionalFormatArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats
    public int sizeOfConditionalFormatArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats
    public CTConditionalFormat getConditionalFormatArray(int i) {
        CTConditionalFormat cTConditionalFormat;
        synchronized (monitor()) {
            check_orphaned();
            cTConditionalFormat = (CTConditionalFormat) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTConditionalFormat == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTConditionalFormat;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConditionalFormats
    public void setConditionalFormatArray(int i, CTConditionalFormat cTConditionalFormat) {
        generatedSetterHelperImpl(cTConditionalFormat, PROPERTY_QNAME[0], i, (short) 2);
    }
}
