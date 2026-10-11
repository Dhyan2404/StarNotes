package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTriggerTimeNodeID;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLTimeNodeID;

/* loaded from: classes14.dex */
public class CTTLTriggerTimeNodeIDImpl extends XmlComplexContentImpl implements CTTLTriggerTimeNodeID {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTTLTriggerTimeNodeIDImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTriggerTimeNodeID
    public long getVal() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTriggerTimeNodeID
    public void setVal(long j) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTriggerTimeNodeID
    public STTLTimeNodeID xgetVal() {
        STTLTimeNodeID sTTLTimeNodeID;
        synchronized (monitor()) {
            check_orphaned();
            sTTLTimeNodeID = (STTLTimeNodeID) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTTLTimeNodeID;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTriggerTimeNodeID
    public void xsetVal(STTLTimeNodeID sTTLTimeNodeID) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLTimeNodeID sTTLTimeNodeID2 = (STTLTimeNodeID) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTLTimeNodeID2 == null) {
                sTTLTimeNodeID2 = (STTLTimeNodeID) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTLTimeNodeID2.set(sTTLTimeNodeID);
        }
    }
}
