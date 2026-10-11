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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormat;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTServerFormatsImpl;

/* loaded from: classes15.dex */
public class CTServerFormatsImpl extends XmlComplexContentImpl implements CTServerFormats {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "serverFormat"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTServerFormatsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats
    public CTServerFormat addNewServerFormat() {
        CTServerFormat cTServerFormat;
        synchronized (monitor()) {
            check_orphaned();
            cTServerFormat = (CTServerFormat) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTServerFormat;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats
    public CTServerFormat[] getServerFormatArray() {
        return (CTServerFormat[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTServerFormat[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats
    public List<CTServerFormat> getServerFormatList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ora
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTServerFormatsImpl.this.getServerFormatArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pra
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTServerFormatsImpl.this.setServerFormatArray(((Integer) obj).intValue(), (CTServerFormat) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qra
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTServerFormatsImpl.this.insertNewServerFormat(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rra
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTServerFormatsImpl.this.removeServerFormat(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sra
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTServerFormatsImpl.this.sizeOfServerFormatArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats
    public CTServerFormat insertNewServerFormat(int i) {
        CTServerFormat cTServerFormat;
        synchronized (monitor()) {
            check_orphaned();
            cTServerFormat = (CTServerFormat) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTServerFormat;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats
    public void removeServerFormat(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats
    public void setServerFormatArray(CTServerFormat[] cTServerFormatArr) {
        check_orphaned();
        arraySetterHelper(cTServerFormatArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats
    public int sizeOfServerFormatArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats
    public CTServerFormat getServerFormatArray(int i) {
        CTServerFormat cTServerFormat;
        synchronized (monitor()) {
            check_orphaned();
            cTServerFormat = (CTServerFormat) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTServerFormat == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTServerFormat;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats
    public void setServerFormatArray(int i, CTServerFormat cTServerFormat) {
        generatedSetterHelperImpl(cTServerFormat, PROPERTY_QNAME[0], i, (short) 2);
    }
}
