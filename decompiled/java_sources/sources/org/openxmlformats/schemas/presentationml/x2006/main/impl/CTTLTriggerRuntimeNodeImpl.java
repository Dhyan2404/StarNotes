package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTriggerRuntimeNode;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLTriggerRuntimeNode;

/* loaded from: classes14.dex */
public class CTTLTriggerRuntimeNodeImpl extends XmlComplexContentImpl implements CTTLTriggerRuntimeNode {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTTLTriggerRuntimeNodeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTriggerRuntimeNode
    public STTLTriggerRuntimeNode.Enum getVal() {
        STTLTriggerRuntimeNode.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STTLTriggerRuntimeNode.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTriggerRuntimeNode
    public void setVal(STTLTriggerRuntimeNode.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTriggerRuntimeNode
    public STTLTriggerRuntimeNode xgetVal() {
        STTLTriggerRuntimeNode sTTLTriggerRuntimeNode;
        synchronized (monitor()) {
            check_orphaned();
            sTTLTriggerRuntimeNode = (STTLTriggerRuntimeNode) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTTLTriggerRuntimeNode;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTriggerRuntimeNode
    public void xsetVal(STTLTriggerRuntimeNode sTTLTriggerRuntimeNode) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLTriggerRuntimeNode sTTLTriggerRuntimeNode2 = (STTLTriggerRuntimeNode) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTLTriggerRuntimeNode2 == null) {
                sTTLTriggerRuntimeNode2 = (STTLTriggerRuntimeNode) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTLTriggerRuntimeNode2.set(sTTLTriggerRuntimeNode);
        }
    }
}
