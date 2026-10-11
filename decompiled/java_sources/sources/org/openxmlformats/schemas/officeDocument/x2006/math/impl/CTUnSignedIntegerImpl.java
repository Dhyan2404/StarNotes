package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTUnSignedInteger;
import org.openxmlformats.schemas.officeDocument.x2006.math.STUnSignedInteger;

/* loaded from: classes14.dex */
public class CTUnSignedIntegerImpl extends XmlComplexContentImpl implements CTUnSignedInteger {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "val")};
    private static final long serialVersionUID = 1;

    public CTUnSignedIntegerImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTUnSignedInteger
    public long getVal() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTUnSignedInteger
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTUnSignedInteger
    public STUnSignedInteger xgetVal() {
        STUnSignedInteger sTUnSignedInteger;
        synchronized (monitor()) {
            check_orphaned();
            sTUnSignedInteger = (STUnSignedInteger) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTUnSignedInteger;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTUnSignedInteger
    public void xsetVal(STUnSignedInteger sTUnSignedInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STUnSignedInteger sTUnSignedInteger2 = (STUnSignedInteger) typeStore.find_attribute_user(qNameArr[0]);
            if (sTUnSignedInteger2 == null) {
                sTUnSignedInteger2 = (STUnSignedInteger) get_store().add_attribute_user(qNameArr[0]);
            }
            sTUnSignedInteger2.set(sTUnSignedInteger);
        }
    }
}
