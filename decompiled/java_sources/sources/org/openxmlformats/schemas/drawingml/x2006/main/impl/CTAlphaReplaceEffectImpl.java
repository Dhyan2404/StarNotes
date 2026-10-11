package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaReplaceEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.STPositiveFixedPercentage;

/* loaded from: classes14.dex */
public class CTAlphaReplaceEffectImpl extends XmlComplexContentImpl implements CTAlphaReplaceEffect {
    private static final QName[] PROPERTY_QNAME = {new QName("", "a")};
    private static final long serialVersionUID = 1;

    public CTAlphaReplaceEffectImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaReplaceEffect
    public Object getA() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaReplaceEffect
    public void setA(Object obj) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaReplaceEffect
    public STPositiveFixedPercentage xgetA() {
        STPositiveFixedPercentage sTPositiveFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            sTPositiveFixedPercentage = (STPositiveFixedPercentage) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTPositiveFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaReplaceEffect
    public void xsetA(STPositiveFixedPercentage sTPositiveFixedPercentage) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPositiveFixedPercentage sTPositiveFixedPercentage2 = (STPositiveFixedPercentage) typeStore.find_attribute_user(qNameArr[0]);
            if (sTPositiveFixedPercentage2 == null) {
                sTPositiveFixedPercentage2 = (STPositiveFixedPercentage) get_store().add_attribute_user(qNameArr[0]);
            }
            sTPositiveFixedPercentage2.set(sTPositiveFixedPercentage);
        }
    }
}
