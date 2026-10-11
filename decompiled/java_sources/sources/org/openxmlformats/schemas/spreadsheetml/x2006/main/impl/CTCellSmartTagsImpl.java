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
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTag;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTags;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellRef;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCellSmartTagsImpl;

/* loaded from: classes15.dex */
public class CTCellSmartTagsImpl extends XmlComplexContentImpl implements CTCellSmartTags {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "cellSmartTag"), new QName("", "r")};
    private static final long serialVersionUID = 1;

    public CTCellSmartTagsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTags
    public CTCellSmartTag addNewCellSmartTag() {
        CTCellSmartTag cTCellSmartTag;
        synchronized (monitor()) {
            check_orphaned();
            cTCellSmartTag = (CTCellSmartTag) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCellSmartTag;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTags
    public CTCellSmartTag[] getCellSmartTagArray() {
        return (CTCellSmartTag[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCellSmartTag[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTags
    public List<CTCellSmartTag> getCellSmartTagList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.k61
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCellSmartTagsImpl.this.getCellSmartTagArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.l61
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCellSmartTagsImpl.this.setCellSmartTagArray(((Integer) obj).intValue(), (CTCellSmartTag) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.m61
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCellSmartTagsImpl.this.insertNewCellSmartTag(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.n61
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCellSmartTagsImpl.this.removeCellSmartTag(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.o61
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCellSmartTagsImpl.this.sizeOfCellSmartTagArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTags
    public String getR() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTags
    public CTCellSmartTag insertNewCellSmartTag(int i) {
        CTCellSmartTag cTCellSmartTag;
        synchronized (monitor()) {
            check_orphaned();
            cTCellSmartTag = (CTCellSmartTag) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCellSmartTag;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTags
    public void removeCellSmartTag(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTags
    public void setCellSmartTagArray(CTCellSmartTag[] cTCellSmartTagArr) {
        check_orphaned();
        arraySetterHelper(cTCellSmartTagArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTags
    public void setR(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTags
    public int sizeOfCellSmartTagArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTags
    public STCellRef xgetR() {
        STCellRef sTCellRef;
        synchronized (monitor()) {
            check_orphaned();
            sTCellRef = (STCellRef) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTCellRef;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTags
    public void xsetR(STCellRef sTCellRef) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STCellRef sTCellRef2 = (STCellRef) typeStore.find_attribute_user(qNameArr[1]);
            if (sTCellRef2 == null) {
                sTCellRef2 = (STCellRef) get_store().add_attribute_user(qNameArr[1]);
            }
            sTCellRef2.set(sTCellRef);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTags
    public CTCellSmartTag getCellSmartTagArray(int i) {
        CTCellSmartTag cTCellSmartTag;
        synchronized (monitor()) {
            check_orphaned();
            cTCellSmartTag = (CTCellSmartTag) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCellSmartTag == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCellSmartTag;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTags
    public void setCellSmartTagArray(int i, CTCellSmartTag cTCellSmartTag) {
        generatedSetterHelperImpl(cTCellSmartTag, PROPERTY_QNAME[0], i, (short) 2);
    }
}
