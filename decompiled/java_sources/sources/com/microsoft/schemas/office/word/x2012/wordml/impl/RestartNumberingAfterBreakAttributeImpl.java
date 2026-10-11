package com.microsoft.schemas.office.word.x2012.wordml.impl;

import com.microsoft.schemas.office.word.x2012.wordml.RestartNumberingAfterBreakAttribute;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;

/* loaded from: classes7.dex */
public class RestartNumberingAfterBreakAttributeImpl extends XmlComplexContentImpl implements RestartNumberingAfterBreakAttribute {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", "restartNumberingAfterBreak")};
    private static final long serialVersionUID = 1;

    public RestartNumberingAfterBreakAttributeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.RestartNumberingAfterBreakAttribute
    public Object getRestartNumberingAfterBreak() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.RestartNumberingAfterBreakAttribute
    public boolean isSetRestartNumberingAfterBreak() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.RestartNumberingAfterBreakAttribute
    public void setRestartNumberingAfterBreak(Object obj) {
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

    @Override // com.microsoft.schemas.office.word.x2012.wordml.RestartNumberingAfterBreakAttribute
    public void unsetRestartNumberingAfterBreak() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.RestartNumberingAfterBreakAttribute
    public STOnOff xgetRestartNumberingAfterBreak() {
        STOnOff sTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            sTOnOff = (STOnOff) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTOnOff;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.RestartNumberingAfterBreakAttribute
    public void xsetRestartNumberingAfterBreak(STOnOff sTOnOff) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STOnOff sTOnOff2 = (STOnOff) typeStore.find_attribute_user(qNameArr[0]);
            if (sTOnOff2 == null) {
                sTOnOff2 = (STOnOff) get_store().add_attribute_user(qNameArr[0]);
            }
            sTOnOff2.set(sTOnOff);
        }
    }
}
