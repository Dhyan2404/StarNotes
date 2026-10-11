package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateIntervalTime;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLTime;

/* loaded from: classes14.dex */
public class CTTLIterateIntervalTimeImpl extends XmlComplexContentImpl implements CTTLIterateIntervalTime {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTTLIterateIntervalTimeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateIntervalTime
    public Object getVal() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateIntervalTime
    public void setVal(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateIntervalTime
    public STTLTime xgetVal() {
        STTLTime sTTLTime;
        synchronized (monitor()) {
            check_orphaned();
            sTTLTime = (STTLTime) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTTLTime;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLIterateIntervalTime
    public void xsetVal(STTLTime sTTLTime) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLTime sTTLTime2 = (STTLTime) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTLTime2 == null) {
                sTTLTime2 = (STTLTime) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTLTime2.set(sTTLTime);
        }
    }
}
