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
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMasterIdList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMasterIdListEntry;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTSlideMasterIdListImpl;

/* loaded from: classes14.dex */
public class CTSlideMasterIdListImpl extends XmlComplexContentImpl implements CTSlideMasterIdList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "sldMasterId")};
    private static final long serialVersionUID = 1;

    public CTSlideMasterIdListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMasterIdList
    public CTSlideMasterIdListEntry addNewSldMasterId() {
        CTSlideMasterIdListEntry cTSlideMasterIdListEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideMasterIdListEntry = (CTSlideMasterIdListEntry) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSlideMasterIdListEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMasterIdList
    public CTSlideMasterIdListEntry[] getSldMasterIdArray() {
        return (CTSlideMasterIdListEntry[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTSlideMasterIdListEntry[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMasterIdList
    public List<CTSlideMasterIdListEntry> getSldMasterIdList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.obb
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSlideMasterIdListImpl.this.getSldMasterIdArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pbb
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSlideMasterIdListImpl.this.setSldMasterIdArray(((Integer) obj).intValue(), (CTSlideMasterIdListEntry) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qbb
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSlideMasterIdListImpl.this.insertNewSldMasterId(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rbb
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSlideMasterIdListImpl.this.removeSldMasterId(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sbb
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSlideMasterIdListImpl.this.sizeOfSldMasterIdArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMasterIdList
    public CTSlideMasterIdListEntry insertNewSldMasterId(int i) {
        CTSlideMasterIdListEntry cTSlideMasterIdListEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideMasterIdListEntry = (CTSlideMasterIdListEntry) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTSlideMasterIdListEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMasterIdList
    public void removeSldMasterId(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMasterIdList
    public void setSldMasterIdArray(CTSlideMasterIdListEntry[] cTSlideMasterIdListEntryArr) {
        check_orphaned();
        arraySetterHelper(cTSlideMasterIdListEntryArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMasterIdList
    public int sizeOfSldMasterIdArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMasterIdList
    public CTSlideMasterIdListEntry getSldMasterIdArray(int i) {
        CTSlideMasterIdListEntry cTSlideMasterIdListEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideMasterIdListEntry = (CTSlideMasterIdListEntry) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTSlideMasterIdListEntry == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSlideMasterIdListEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMasterIdList
    public void setSldMasterIdArray(int i, CTSlideMasterIdListEntry cTSlideMasterIdListEntry) {
        generatedSetterHelperImpl(cTSlideMasterIdListEntry, PROPERTY_QNAME[0], i, (short) 2);
    }
}
