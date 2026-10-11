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
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideIdList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideIdListEntry;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTSlideIdListImpl;

/* loaded from: classes14.dex */
public class CTSlideIdListImpl extends XmlComplexContentImpl implements CTSlideIdList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "sldId")};
    private static final long serialVersionUID = 1;

    public CTSlideIdListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideIdList
    public CTSlideIdListEntry addNewSldId() {
        CTSlideIdListEntry cTSlideIdListEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideIdListEntry = (CTSlideIdListEntry) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSlideIdListEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideIdList
    public CTSlideIdListEntry[] getSldIdArray() {
        return (CTSlideIdListEntry[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTSlideIdListEntry[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideIdList
    public List<CTSlideIdListEntry> getSldIdList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ebb
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSlideIdListImpl.this.getSldIdArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fbb
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSlideIdListImpl.this.setSldIdArray(((Integer) obj).intValue(), (CTSlideIdListEntry) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gbb
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSlideIdListImpl.this.insertNewSldId(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hbb
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSlideIdListImpl.this.removeSldId(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ibb
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSlideIdListImpl.this.sizeOfSldIdArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideIdList
    public CTSlideIdListEntry insertNewSldId(int i) {
        CTSlideIdListEntry cTSlideIdListEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideIdListEntry = (CTSlideIdListEntry) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTSlideIdListEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideIdList
    public void removeSldId(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideIdList
    public void setSldIdArray(CTSlideIdListEntry[] cTSlideIdListEntryArr) {
        check_orphaned();
        arraySetterHelper(cTSlideIdListEntryArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideIdList
    public int sizeOfSldIdArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideIdList
    public CTSlideIdListEntry getSldIdArray(int i) {
        CTSlideIdListEntry cTSlideIdListEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideIdListEntry = (CTSlideIdListEntry) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTSlideIdListEntry == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSlideIdListEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideIdList
    public void setSldIdArray(int i, CTSlideIdListEntry cTSlideIdListEntry) {
        generatedSetterHelperImpl(cTSlideIdListEntry, PROPERTY_QNAME[0], i, (short) 2);
    }
}
