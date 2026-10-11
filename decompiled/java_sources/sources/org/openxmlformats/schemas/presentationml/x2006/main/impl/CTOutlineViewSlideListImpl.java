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
import org.openxmlformats.schemas.presentationml.x2006.main.CTOutlineViewSlideEntry;
import org.openxmlformats.schemas.presentationml.x2006.main.CTOutlineViewSlideList;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTOutlineViewSlideListImpl;

/* loaded from: classes14.dex */
public class CTOutlineViewSlideListImpl extends XmlComplexContentImpl implements CTOutlineViewSlideList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "sld")};
    private static final long serialVersionUID = 1;

    public CTOutlineViewSlideListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOutlineViewSlideList
    public CTOutlineViewSlideEntry addNewSld() {
        CTOutlineViewSlideEntry cTOutlineViewSlideEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTOutlineViewSlideEntry = (CTOutlineViewSlideEntry) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOutlineViewSlideEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOutlineViewSlideList
    public CTOutlineViewSlideEntry[] getSldArray() {
        return (CTOutlineViewSlideEntry[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTOutlineViewSlideEntry[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOutlineViewSlideList
    public List<CTOutlineViewSlideEntry> getSldList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dc6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOutlineViewSlideListImpl.this.getSldArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ec6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOutlineViewSlideListImpl.this.setSldArray(((Integer) obj).intValue(), (CTOutlineViewSlideEntry) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fc6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOutlineViewSlideListImpl.this.insertNewSld(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gc6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOutlineViewSlideListImpl.this.removeSld(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hc6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOutlineViewSlideListImpl.this.sizeOfSldArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOutlineViewSlideList
    public CTOutlineViewSlideEntry insertNewSld(int i) {
        CTOutlineViewSlideEntry cTOutlineViewSlideEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTOutlineViewSlideEntry = (CTOutlineViewSlideEntry) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTOutlineViewSlideEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOutlineViewSlideList
    public void removeSld(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOutlineViewSlideList
    public void setSldArray(CTOutlineViewSlideEntry[] cTOutlineViewSlideEntryArr) {
        check_orphaned();
        arraySetterHelper(cTOutlineViewSlideEntryArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOutlineViewSlideList
    public int sizeOfSldArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOutlineViewSlideList
    public CTOutlineViewSlideEntry getSldArray(int i) {
        CTOutlineViewSlideEntry cTOutlineViewSlideEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTOutlineViewSlideEntry = (CTOutlineViewSlideEntry) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTOutlineViewSlideEntry == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOutlineViewSlideEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOutlineViewSlideList
    public void setSldArray(int i, CTOutlineViewSlideEntry cTOutlineViewSlideEntry) {
        generatedSetterHelperImpl(cTOutlineViewSlideEntry, PROPERTY_QNAME[0], i, (short) 2);
    }
}
