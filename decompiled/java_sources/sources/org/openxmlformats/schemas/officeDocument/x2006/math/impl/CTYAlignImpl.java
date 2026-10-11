package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTYAlign;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STYAlign;

/* loaded from: classes14.dex */
public class CTYAlignImpl extends XmlComplexContentImpl implements CTYAlign {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "val")};
    private static final long serialVersionUID = 1;

    public CTYAlignImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTYAlign
    public STYAlign.Enum getVal() {
        STYAlign.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STYAlign.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTYAlign
    public void setVal(STYAlign.Enum r6) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTYAlign
    public STYAlign xgetVal() {
        STYAlign sTYAlign;
        synchronized (monitor()) {
            check_orphaned();
            sTYAlign = (STYAlign) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTYAlign;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTYAlign
    public void xsetVal(STYAlign sTYAlign) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STYAlign sTYAlign2 = (STYAlign) typeStore.find_attribute_user(qNameArr[0]);
            if (sTYAlign2 == null) {
                sTYAlign2 = (STYAlign) get_store().add_attribute_user(qNameArr[0]);
            }
            sTYAlign2.set(sTYAlign);
        }
    }
}
