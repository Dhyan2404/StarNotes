package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.google.android.gms.actions.SearchIntents;
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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQuery;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTQueryCacheImpl;

/* loaded from: classes15.dex */
public class CTQueryCacheImpl extends XmlComplexContentImpl implements CTQueryCache {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, SearchIntents.EXTRA_QUERY), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTQueryCacheImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache
    public CTQuery addNewQuery() {
        CTQuery cTQuery;
        synchronized (monitor()) {
            check_orphaned();
            cTQuery = (CTQuery) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTQuery;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache
    public CTQuery[] getQueryArray() {
        return (CTQuery[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTQuery[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache
    public List<CTQuery> getQueryList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zo7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTQueryCacheImpl.this.getQueryArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ap7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTQueryCacheImpl.this.setQueryArray(((Integer) obj).intValue(), (CTQuery) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bp7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTQueryCacheImpl.this.insertNewQuery(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cp7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTQueryCacheImpl.this.removeQuery(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dp7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTQueryCacheImpl.this.sizeOfQueryArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache
    public CTQuery insertNewQuery(int i) {
        CTQuery cTQuery;
        synchronized (monitor()) {
            check_orphaned();
            cTQuery = (CTQuery) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTQuery;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache
    public void removeQuery(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache
    public void setQueryArray(CTQuery[] cTQueryArr) {
        check_orphaned();
        arraySetterHelper(cTQueryArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache
    public int sizeOfQueryArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache
    public CTQuery getQueryArray(int i) {
        CTQuery cTQuery;
        synchronized (monitor()) {
            check_orphaned();
            cTQuery = (CTQuery) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTQuery == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTQuery;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache
    public void setQueryArray(int i, CTQuery cTQuery) {
        generatedSetterHelperImpl(cTQuery, PROPERTY_QNAME[0], i, (short) 2);
    }
}
