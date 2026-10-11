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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyle;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCellStylesImpl;

/* loaded from: classes15.dex */
public class CTCellStylesImpl extends XmlComplexContentImpl implements CTCellStyles {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "cellStyle"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTCellStylesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles
    public CTCellStyle addNewCellStyle() {
        CTCellStyle cTCellStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTCellStyle = (CTCellStyle) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCellStyle;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles
    public CTCellStyle[] getCellStyleArray() {
        return (CTCellStyle[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCellStyle[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles
    public List<CTCellStyle> getCellStyleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.u61
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCellStylesImpl.this.getCellStyleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.v61
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCellStylesImpl.this.setCellStyleArray(((Integer) obj).intValue(), (CTCellStyle) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.w61
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCellStylesImpl.this.insertNewCellStyle(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.x61
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCellStylesImpl.this.removeCellStyle(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.y61
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCellStylesImpl.this.sizeOfCellStyleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles
    public CTCellStyle insertNewCellStyle(int i) {
        CTCellStyle cTCellStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTCellStyle = (CTCellStyle) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCellStyle;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles
    public void removeCellStyle(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles
    public void setCellStyleArray(CTCellStyle[] cTCellStyleArr) {
        check_orphaned();
        arraySetterHelper(cTCellStyleArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles
    public int sizeOfCellStyleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles
    public CTCellStyle getCellStyleArray(int i) {
        CTCellStyle cTCellStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTCellStyle = (CTCellStyle) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCellStyle == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCellStyle;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyles
    public void setCellStyleArray(int i, CTCellStyle cTCellStyle) {
        generatedSetterHelperImpl(cTCellStyle, PROPERTY_QNAME[0], i, (short) 2);
    }
}
