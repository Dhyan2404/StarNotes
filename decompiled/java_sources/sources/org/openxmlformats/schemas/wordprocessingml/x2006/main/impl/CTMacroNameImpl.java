package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMacroName;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STMacroName;

/* loaded from: classes16.dex */
public class CTMacroNameImpl extends XmlComplexContentImpl implements CTMacroName {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTMacroNameImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMacroName
    public String getVal() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMacroName
    public void setVal(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMacroName
    public STMacroName xgetVal() {
        STMacroName sTMacroName;
        synchronized (monitor()) {
            check_orphaned();
            sTMacroName = (STMacroName) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTMacroName;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMacroName
    public void xsetVal(STMacroName sTMacroName) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STMacroName sTMacroName2 = (STMacroName) typeStore.find_attribute_user(qNameArr[0]);
            if (sTMacroName2 == null) {
                sTMacroName2 = (STMacroName) get_store().add_attribute_user(qNameArr[0]);
            }
            sTMacroName2.set(sTMacroName);
        }
    }
}
