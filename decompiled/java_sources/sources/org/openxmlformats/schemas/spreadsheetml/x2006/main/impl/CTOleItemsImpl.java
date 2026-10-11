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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleItem;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleItems;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTOleItemsImpl;

/* loaded from: classes15.dex */
public class CTOleItemsImpl extends XmlComplexContentImpl implements CTOleItems {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "oleItem")};
    private static final long serialVersionUID = 1;

    public CTOleItemsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleItems
    public CTOleItem addNewOleItem() {
        CTOleItem cTOleItem;
        synchronized (monitor()) {
            check_orphaned();
            cTOleItem = (CTOleItem) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOleItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleItems
    public CTOleItem[] getOleItemArray() {
        return (CTOleItem[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTOleItem[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleItems
    public List<CTOleItem> getOleItemList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.aa6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOleItemsImpl.this.getOleItemArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ba6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOleItemsImpl.this.setOleItemArray(((Integer) obj).intValue(), (CTOleItem) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ca6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOleItemsImpl.this.insertNewOleItem(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.da6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOleItemsImpl.this.removeOleItem(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ea6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOleItemsImpl.this.sizeOfOleItemArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleItems
    public CTOleItem insertNewOleItem(int i) {
        CTOleItem cTOleItem;
        synchronized (monitor()) {
            check_orphaned();
            cTOleItem = (CTOleItem) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTOleItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleItems
    public void removeOleItem(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleItems
    public void setOleItemArray(CTOleItem[] cTOleItemArr) {
        check_orphaned();
        arraySetterHelper(cTOleItemArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleItems
    public int sizeOfOleItemArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleItems
    public CTOleItem getOleItemArray(int i) {
        CTOleItem cTOleItem;
        synchronized (monitor()) {
            check_orphaned();
            cTOleItem = (CTOleItem) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTOleItem == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOleItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleItems
    public void setOleItemArray(int i, CTOleItem cTOleItem) {
        generatedSetterHelperImpl(cTOleItem, PROPERTY_QNAME[0], i, (short) 2);
    }
}
