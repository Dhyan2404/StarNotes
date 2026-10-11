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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormat;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTChartFormatsImpl;

/* loaded from: classes15.dex */
public class CTChartFormatsImpl extends XmlComplexContentImpl implements CTChartFormats {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "chartFormat"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTChartFormatsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats
    public CTChartFormat addNewChartFormat() {
        CTChartFormat cTChartFormat;
        synchronized (monitor()) {
            check_orphaned();
            cTChartFormat = (CTChartFormat) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTChartFormat;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats
    public CTChartFormat[] getChartFormatArray() {
        return (CTChartFormat[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTChartFormat[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats
    public List<CTChartFormat> getChartFormatList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t71
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTChartFormatsImpl.this.getChartFormatArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u71
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTChartFormatsImpl.this.setChartFormatArray(((Integer) obj).intValue(), (CTChartFormat) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v71
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTChartFormatsImpl.this.insertNewChartFormat(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.w71
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTChartFormatsImpl.this.removeChartFormat(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.x71
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTChartFormatsImpl.this.sizeOfChartFormatArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats
    public CTChartFormat insertNewChartFormat(int i) {
        CTChartFormat cTChartFormat;
        synchronized (monitor()) {
            check_orphaned();
            cTChartFormat = (CTChartFormat) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTChartFormat;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats
    public void removeChartFormat(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats
    public void setChartFormatArray(CTChartFormat[] cTChartFormatArr) {
        check_orphaned();
        arraySetterHelper(cTChartFormatArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats
    public int sizeOfChartFormatArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats
    public CTChartFormat getChartFormatArray(int i) {
        CTChartFormat cTChartFormat;
        synchronized (monitor()) {
            check_orphaned();
            cTChartFormat = (CTChartFormat) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTChartFormat == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTChartFormat;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTChartFormats
    public void setChartFormatArray(int i, CTChartFormat cTChartFormat) {
        generatedSetterHelperImpl(cTChartFormat, PROPERTY_QNAME[0], i, (short) 2);
    }
}
