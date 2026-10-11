package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTTopBot;
import org.openxmlformats.schemas.officeDocument.x2006.math.STTopBot;

/* loaded from: classes14.dex */
public class CTTopBotImpl extends XmlComplexContentImpl implements CTTopBot {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "val")};
    private static final long serialVersionUID = 1;

    public CTTopBotImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTTopBot
    public STTopBot.Enum getVal() {
        STTopBot.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STTopBot.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTTopBot
    public void setVal(STTopBot.Enum r6) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTTopBot
    public STTopBot xgetVal() {
        STTopBot sTTopBot;
        synchronized (monitor()) {
            check_orphaned();
            sTTopBot = (STTopBot) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTTopBot;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTTopBot
    public void xsetVal(STTopBot sTTopBot) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTopBot sTTopBot2 = (STTopBot) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTopBot2 == null) {
                sTTopBot2 = (STTopBot) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTopBot2.set(sTTopBot);
        }
    }
}
