package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTIndexRange;
import org.openxmlformats.schemas.presentationml.x2006.main.STIndex;

/* loaded from: classes14.dex */
public class CTIndexRangeImpl extends XmlComplexContentImpl implements CTIndexRange {
    private static final QName[] PROPERTY_QNAME = {new QName("", "st"), new QName("", "end")};
    private static final long serialVersionUID = 1;

    public CTIndexRangeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTIndexRange
    public long getEnd() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTIndexRange
    public long getSt() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTIndexRange
    public void setEnd(long j) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTIndexRange
    public void setSt(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTIndexRange
    public STIndex xgetEnd() {
        STIndex sTIndex;
        synchronized (monitor()) {
            check_orphaned();
            sTIndex = (STIndex) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTIndex;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTIndexRange
    public STIndex xgetSt() {
        STIndex sTIndex;
        synchronized (monitor()) {
            check_orphaned();
            sTIndex = (STIndex) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTIndex;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTIndexRange
    public void xsetEnd(STIndex sTIndex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STIndex sTIndex2 = (STIndex) typeStore.find_attribute_user(qNameArr[1]);
            if (sTIndex2 == null) {
                sTIndex2 = (STIndex) get_store().add_attribute_user(qNameArr[1]);
            }
            sTIndex2.set(sTIndex);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTIndexRange
    public void xsetSt(STIndex sTIndex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STIndex sTIndex2 = (STIndex) typeStore.find_attribute_user(qNameArr[0]);
            if (sTIndex2 == null) {
                sTIndex2 = (STIndex) get_store().add_attribute_user(qNameArr[0]);
            }
            sTIndex2.set(sTIndex);
        }
    }
}
