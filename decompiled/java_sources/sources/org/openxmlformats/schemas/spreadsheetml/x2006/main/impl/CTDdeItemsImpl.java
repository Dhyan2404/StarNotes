package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeItem;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeItems;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTDdeItemsImpl;

/* loaded from: classes15.dex */
public class CTDdeItemsImpl extends XmlComplexContentImpl implements CTDdeItems {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "ddeItem")};
    private static final long serialVersionUID = 1;

    public CTDdeItemsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeItems
    public CTDdeItem addNewDdeItem() {
        CTDdeItem cTDdeItem;
        synchronized (monitor()) {
            check_orphaned();
            cTDdeItem = (CTDdeItem) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDdeItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeItems
    public CTDdeItem[] getDdeItemArray() {
        return (CTDdeItem[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTDdeItem[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeItems
    public List<CTDdeItem> getDdeItemList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.r63
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDdeItemsImpl.this.getDdeItemArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.s63
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDdeItemsImpl.this.setDdeItemArray(((Integer) obj).intValue(), (CTDdeItem) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.t63
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDdeItemsImpl.this.insertNewDdeItem(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.u63
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDdeItemsImpl.this.removeDdeItem(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.v63
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDdeItemsImpl.this.sizeOfDdeItemArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeItems
    public CTDdeItem insertNewDdeItem(int i) {
        CTDdeItem cTDdeItem;
        synchronized (monitor()) {
            check_orphaned();
            cTDdeItem = (CTDdeItem) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTDdeItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeItems
    public void removeDdeItem(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeItems
    public void setDdeItemArray(CTDdeItem[] cTDdeItemArr) {
        check_orphaned();
        arraySetterHelper(cTDdeItemArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeItems
    public int sizeOfDdeItemArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeItems
    public CTDdeItem getDdeItemArray(int i) {
        CTDdeItem cTDdeItem;
        synchronized (monitor()) {
            check_orphaned();
            cTDdeItem = (CTDdeItem) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTDdeItem == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDdeItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeItems
    public void setDdeItemArray(int i, CTDdeItem cTDdeItem) {
        generatedSetterHelperImpl(cTDdeItem, PROPERTY_QNAME[0], i, (short) 2);
    }
}
