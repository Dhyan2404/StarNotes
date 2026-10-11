package org.openxmlformats.schemas.presentationml.x2006.main.impl;

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
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideLayoutIdList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideLayoutIdListEntry;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTSlideLayoutIdListImpl;

/* loaded from: classes14.dex */
public class CTSlideLayoutIdListImpl extends XmlComplexContentImpl implements CTSlideLayoutIdList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "sldLayoutId")};
    private static final long serialVersionUID = 1;

    public CTSlideLayoutIdListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideLayoutIdList
    public CTSlideLayoutIdListEntry addNewSldLayoutId() {
        CTSlideLayoutIdListEntry cTSlideLayoutIdListEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideLayoutIdListEntry = (CTSlideLayoutIdListEntry) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSlideLayoutIdListEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideLayoutIdList
    public CTSlideLayoutIdListEntry[] getSldLayoutIdArray() {
        return (CTSlideLayoutIdListEntry[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTSlideLayoutIdListEntry[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideLayoutIdList
    public List<CTSlideLayoutIdListEntry> getSldLayoutIdList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jbb
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSlideLayoutIdListImpl.this.getSldLayoutIdArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kbb
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSlideLayoutIdListImpl.this.setSldLayoutIdArray(((Integer) obj).intValue(), (CTSlideLayoutIdListEntry) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lbb
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSlideLayoutIdListImpl.this.insertNewSldLayoutId(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mbb
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSlideLayoutIdListImpl.this.removeSldLayoutId(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nbb
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSlideLayoutIdListImpl.this.sizeOfSldLayoutIdArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideLayoutIdList
    public CTSlideLayoutIdListEntry insertNewSldLayoutId(int i) {
        CTSlideLayoutIdListEntry cTSlideLayoutIdListEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideLayoutIdListEntry = (CTSlideLayoutIdListEntry) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTSlideLayoutIdListEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideLayoutIdList
    public void removeSldLayoutId(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideLayoutIdList
    public void setSldLayoutIdArray(CTSlideLayoutIdListEntry[] cTSlideLayoutIdListEntryArr) {
        check_orphaned();
        arraySetterHelper(cTSlideLayoutIdListEntryArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideLayoutIdList
    public int sizeOfSldLayoutIdArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideLayoutIdList
    public CTSlideLayoutIdListEntry getSldLayoutIdArray(int i) {
        CTSlideLayoutIdListEntry cTSlideLayoutIdListEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideLayoutIdListEntry = (CTSlideLayoutIdListEntry) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTSlideLayoutIdListEntry == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSlideLayoutIdListEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideLayoutIdList
    public void setSldLayoutIdArray(int i, CTSlideLayoutIdListEntry cTSlideLayoutIdListEntry) {
        generatedSetterHelperImpl(cTSlideLayoutIdListEntry, PROPERTY_QNAME[0], i, (short) 2);
    }
}
