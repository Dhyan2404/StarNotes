package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormat;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTFormatsImpl;

/* loaded from: classes15.dex */
public class CTFormatsImpl extends XmlComplexContentImpl implements CTFormats {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, Constants.ATTRNAME_FORMAT), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTFormatsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats
    public CTFormat addNewFormat() {
        CTFormat cTFormat;
        synchronized (monitor()) {
            check_orphaned();
            cTFormat = (CTFormat) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFormat;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats
    public CTFormat[] getFormatArray() {
        return (CTFormat[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTFormat[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats
    public List<CTFormat> getFormatList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.a24
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFormatsImpl.this.getFormatArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b24
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFormatsImpl.this.setFormatArray(((Integer) obj).intValue(), (CTFormat) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.c24
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFormatsImpl.this.insertNewFormat(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d24
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFormatsImpl.this.removeFormat(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.e24
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFormatsImpl.this.sizeOfFormatArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats
    public CTFormat insertNewFormat(int i) {
        CTFormat cTFormat;
        synchronized (monitor()) {
            check_orphaned();
            cTFormat = (CTFormat) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTFormat;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats
    public void removeFormat(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats
    public void setFormatArray(CTFormat[] cTFormatArr) {
        check_orphaned();
        arraySetterHelper(cTFormatArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats
    public int sizeOfFormatArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats
    public CTFormat getFormatArray(int i) {
        CTFormat cTFormat;
        synchronized (monitor()) {
            check_orphaned();
            cTFormat = (CTFormat) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTFormat == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFormat;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFormats
    public void setFormatArray(int i, CTFormat cTFormat) {
        generatedSetterHelperImpl(cTFormat, PROPERTY_QNAME[0], i, (short) 2);
    }
}
