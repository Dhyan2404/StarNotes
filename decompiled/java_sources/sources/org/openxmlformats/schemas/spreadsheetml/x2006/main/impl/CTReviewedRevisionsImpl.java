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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewed;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTReviewedRevisionsImpl;

/* loaded from: classes15.dex */
public class CTReviewedRevisionsImpl extends XmlComplexContentImpl implements CTReviewedRevisions {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "reviewed"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTReviewedRevisionsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions
    public CTReviewed addNewReviewed() {
        CTReviewed cTReviewed;
        synchronized (monitor()) {
            check_orphaned();
            cTReviewed = (CTReviewed) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTReviewed;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions
    public CTReviewed[] getReviewedArray() {
        return (CTReviewed[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTReviewed[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions
    public List<CTReviewed> getReviewedList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vr8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTReviewedRevisionsImpl.this.getReviewedArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wr8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTReviewedRevisionsImpl.this.setReviewedArray(((Integer) obj).intValue(), (CTReviewed) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xr8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTReviewedRevisionsImpl.this.insertNewReviewed(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yr8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTReviewedRevisionsImpl.this.removeReviewed(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zr8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTReviewedRevisionsImpl.this.sizeOfReviewedArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions
    public CTReviewed insertNewReviewed(int i) {
        CTReviewed cTReviewed;
        synchronized (monitor()) {
            check_orphaned();
            cTReviewed = (CTReviewed) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTReviewed;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions
    public void removeReviewed(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions
    public void setReviewedArray(CTReviewed[] cTReviewedArr) {
        check_orphaned();
        arraySetterHelper(cTReviewedArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions
    public int sizeOfReviewedArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions
    public CTReviewed getReviewedArray(int i) {
        CTReviewed cTReviewed;
        synchronized (monitor()) {
            check_orphaned();
            cTReviewed = (CTReviewed) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTReviewed == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTReviewed;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTReviewedRevisions
    public void setReviewedArray(int i, CTReviewed cTReviewed) {
        generatedSetterHelperImpl(cTReviewed, PROPERTY_QNAME[0], i, (short) 2);
    }
}
