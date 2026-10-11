package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.DgmlayoutAttribute;
import com.microsoft.schemas.office.office.STDiagramLayout;
import java.math.BigInteger;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class DgmlayoutAttributeImpl extends XmlComplexContentImpl implements DgmlayoutAttribute {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "dgmlayout")};
    private static final long serialVersionUID = 1;

    public DgmlayoutAttributeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.DgmlayoutAttribute
    public BigInteger getDgmlayout() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // com.microsoft.schemas.office.office.DgmlayoutAttribute
    public boolean isSetDgmlayout() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.DgmlayoutAttribute
    public void setDgmlayout(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // com.microsoft.schemas.office.office.DgmlayoutAttribute
    public void unsetDgmlayout() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.office.DgmlayoutAttribute
    public STDiagramLayout xgetDgmlayout() {
        STDiagramLayout sTDiagramLayout;
        synchronized (monitor()) {
            check_orphaned();
            sTDiagramLayout = (STDiagramLayout) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTDiagramLayout;
    }

    @Override // com.microsoft.schemas.office.office.DgmlayoutAttribute
    public void xsetDgmlayout(STDiagramLayout sTDiagramLayout) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDiagramLayout sTDiagramLayout2 = (STDiagramLayout) typeStore.find_attribute_user(qNameArr[0]);
            if (sTDiagramLayout2 == null) {
                sTDiagramLayout2 = (STDiagramLayout) get_store().add_attribute_user(qNameArr[0]);
            }
            sTDiagramLayout2.set(sTDiagramLayout);
        }
    }
}
