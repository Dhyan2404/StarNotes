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
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTagPr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCellSmartTagImpl;

/* loaded from: classes15.dex */
public class CTCellSmartTagImpl extends XmlComplexContentImpl implements CTCellSmartTag {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "cellSmartTagPr"), new QName("", "type"), new QName("", "deleted"), new QName("", "xmlBased")};
    private static final long serialVersionUID = 1;

    public CTCellSmartTagImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public CTCellSmartTagPr addNewCellSmartTagPr() {
        CTCellSmartTagPr cTCellSmartTagPr;
        synchronized (monitor()) {
            check_orphaned();
            cTCellSmartTagPr = (CTCellSmartTagPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCellSmartTagPr;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public CTCellSmartTagPr[] getCellSmartTagPrArray() {
        return (CTCellSmartTagPr[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCellSmartTagPr[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public List<CTCellSmartTagPr> getCellSmartTagPrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.f61
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCellSmartTagImpl.this.getCellSmartTagPrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.g61
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCellSmartTagImpl.this.setCellSmartTagPrArray(((Integer) obj).intValue(), (CTCellSmartTagPr) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.h61
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCellSmartTagImpl.this.insertNewCellSmartTagPr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.i61
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCellSmartTagImpl.this.removeCellSmartTagPr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.j61
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCellSmartTagImpl.this.sizeOfCellSmartTagPrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public boolean getDeleted() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public long getType() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public boolean getXmlBased() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[3]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public CTCellSmartTagPr insertNewCellSmartTagPr(int i) {
        CTCellSmartTagPr cTCellSmartTagPr;
        synchronized (monitor()) {
            check_orphaned();
            cTCellSmartTagPr = (CTCellSmartTagPr) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCellSmartTagPr;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public boolean isSetDeleted() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public boolean isSetXmlBased() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public void removeCellSmartTagPr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public void setCellSmartTagPrArray(CTCellSmartTagPr[] cTCellSmartTagPrArr) {
        check_orphaned();
        arraySetterHelper(cTCellSmartTagPrArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public void setDeleted(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public void setType(long j) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public void setXmlBased(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public int sizeOfCellSmartTagPrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public void unsetDeleted() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public void unsetXmlBased() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public XmlBoolean xgetDeleted() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[2]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public XmlUnsignedInt xgetType() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public XmlBoolean xgetXmlBased() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[3]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public void xsetDeleted(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public void xsetType(XmlUnsignedInt xmlUnsignedInt) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public void xsetXmlBased(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public CTCellSmartTagPr getCellSmartTagPrArray(int i) {
        CTCellSmartTagPr cTCellSmartTagPr;
        synchronized (monitor()) {
            check_orphaned();
            cTCellSmartTagPr = (CTCellSmartTagPr) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCellSmartTagPr == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCellSmartTagPr;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag
    public void setCellSmartTagPrArray(int i, CTCellSmartTagPr cTCellSmartTagPr) {
        generatedSetterHelperImpl(cTCellSmartTagPr, PROPERTY_QNAME[0], i, (short) 2);
    }
}
