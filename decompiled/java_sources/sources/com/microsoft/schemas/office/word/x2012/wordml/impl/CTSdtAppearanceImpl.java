package com.microsoft.schemas.office.word.x2012.wordml.impl;

import com.microsoft.schemas.office.word.x2012.wordml.CTSdtAppearance;
import com.microsoft.schemas.office.word.x2012.wordml.STSdtAppearance;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CTSdtAppearanceImpl extends XmlComplexContentImpl implements CTSdtAppearance {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", "val")};
    private static final long serialVersionUID = 1;

    public CTSdtAppearanceImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtAppearance
    public STSdtAppearance.Enum getVal() {
        STSdtAppearance.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STSdtAppearance.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtAppearance
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtAppearance
    public void setVal(STSdtAppearance.Enum r6) {
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

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtAppearance
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtAppearance
    public STSdtAppearance xgetVal() {
        STSdtAppearance sTSdtAppearance;
        synchronized (monitor()) {
            check_orphaned();
            sTSdtAppearance = (STSdtAppearance) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTSdtAppearance;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtAppearance
    public void xsetVal(STSdtAppearance sTSdtAppearance) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STSdtAppearance sTSdtAppearance2 = (STSdtAppearance) typeStore.find_attribute_user(qNameArr[0]);
            if (sTSdtAppearance2 == null) {
                sTSdtAppearance2 = (STSdtAppearance) get_store().add_attribute_user(qNameArr[0]);
            }
            sTSdtAppearance2.set(sTSdtAppearance);
        }
    }
}
