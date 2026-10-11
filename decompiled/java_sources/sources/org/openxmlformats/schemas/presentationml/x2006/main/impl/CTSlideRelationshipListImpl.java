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
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideRelationshipList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideRelationshipListEntry;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTSlideRelationshipListImpl;

/* loaded from: classes14.dex */
public class CTSlideRelationshipListImpl extends XmlComplexContentImpl implements CTSlideRelationshipList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "sld")};
    private static final long serialVersionUID = 1;

    public CTSlideRelationshipListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideRelationshipList
    public CTSlideRelationshipListEntry addNewSld() {
        CTSlideRelationshipListEntry cTSlideRelationshipListEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideRelationshipListEntry = (CTSlideRelationshipListEntry) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSlideRelationshipListEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideRelationshipList
    public CTSlideRelationshipListEntry[] getSldArray() {
        return (CTSlideRelationshipListEntry[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTSlideRelationshipListEntry[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideRelationshipList
    public List<CTSlideRelationshipListEntry> getSldList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tbb
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSlideRelationshipListImpl.this.getSldArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ubb
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSlideRelationshipListImpl.this.setSldArray(((Integer) obj).intValue(), (CTSlideRelationshipListEntry) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vbb
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSlideRelationshipListImpl.this.insertNewSld(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wbb
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSlideRelationshipListImpl.this.removeSld(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xbb
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSlideRelationshipListImpl.this.sizeOfSldArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideRelationshipList
    public CTSlideRelationshipListEntry insertNewSld(int i) {
        CTSlideRelationshipListEntry cTSlideRelationshipListEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideRelationshipListEntry = (CTSlideRelationshipListEntry) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTSlideRelationshipListEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideRelationshipList
    public void removeSld(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideRelationshipList
    public void setSldArray(CTSlideRelationshipListEntry[] cTSlideRelationshipListEntryArr) {
        check_orphaned();
        arraySetterHelper(cTSlideRelationshipListEntryArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideRelationshipList
    public int sizeOfSldArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideRelationshipList
    public CTSlideRelationshipListEntry getSldArray(int i) {
        CTSlideRelationshipListEntry cTSlideRelationshipListEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideRelationshipListEntry = (CTSlideRelationshipListEntry) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTSlideRelationshipListEntry == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSlideRelationshipListEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideRelationshipList
    public void setSldArray(int i, CTSlideRelationshipListEntry cTSlideRelationshipListEntry) {
        generatedSetterHelperImpl(cTSlideRelationshipListEntry, PROPERTY_QNAME[0], i, (short) 2);
    }
}
