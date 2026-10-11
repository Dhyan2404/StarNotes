package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.OleAttribute;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank;

/* loaded from: classes7.dex */
public class OleAttributeImpl extends XmlComplexContentImpl implements OleAttribute {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "ole")};
    private static final long serialVersionUID = 1;

    public OleAttributeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.OleAttribute
    public STTrueFalseBlank.Enum getOle() {
        STTrueFalseBlank.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STTrueFalseBlank.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.OleAttribute
    public boolean isSetOle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.OleAttribute
    public void setOle(STTrueFalseBlank.Enum r6) {
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

    @Override // com.microsoft.schemas.office.office.OleAttribute
    public void unsetOle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.office.OleAttribute
    public STTrueFalseBlank xgetOle() {
        STTrueFalseBlank sTTrueFalseBlank;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalseBlank = (STTrueFalseBlank) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTTrueFalseBlank;
    }

    @Override // com.microsoft.schemas.office.office.OleAttribute
    public void xsetOle(STTrueFalseBlank sTTrueFalseBlank) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalseBlank sTTrueFalseBlank2 = (STTrueFalseBlank) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTrueFalseBlank2 == null) {
                sTTrueFalseBlank2 = (STTrueFalseBlank) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTrueFalseBlank2.set(sTTrueFalseBlank);
        }
    }
}
