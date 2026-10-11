package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathJc;
import org.openxmlformats.schemas.officeDocument.x2006.math.STJc;

/* loaded from: classes14.dex */
public class CTOMathJcImpl extends XmlComplexContentImpl implements CTOMathJc {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "val")};
    private static final long serialVersionUID = 1;

    public CTOMathJcImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathJc
    public STJc.Enum getVal() {
        STJc.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STJc.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathJc
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathJc
    public void setVal(STJc.Enum r6) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathJc
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathJc
    public STJc xgetVal() {
        STJc sTJc;
        synchronized (monitor()) {
            check_orphaned();
            sTJc = (STJc) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTJc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathJc
    public void xsetVal(STJc sTJc) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STJc sTJc2 = (STJc) typeStore.find_attribute_user(qNameArr[0]);
            if (sTJc2 == null) {
                sTJc2 = (STJc) get_store().add_attribute_user(qNameArr[0]);
            }
            sTJc2.set(sTJc);
        }
    }
}
