package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureFormat;
import org.openxmlformats.schemas.drawingml.x2006.chart.STPictureFormat;

/* loaded from: classes14.dex */
public class CTPictureFormatImpl extends XmlComplexContentImpl implements CTPictureFormat {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTPictureFormatImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureFormat
    public STPictureFormat.Enum getVal() {
        STPictureFormat.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STPictureFormat.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureFormat
    public void setVal(STPictureFormat.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureFormat
    public STPictureFormat xgetVal() {
        STPictureFormat sTPictureFormat;
        synchronized (monitor()) {
            check_orphaned();
            sTPictureFormat = (STPictureFormat) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTPictureFormat;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureFormat
    public void xsetVal(STPictureFormat sTPictureFormat) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPictureFormat sTPictureFormat2 = (STPictureFormat) typeStore.find_attribute_user(qNameArr[0]);
            if (sTPictureFormat2 == null) {
                sTPictureFormat2 = (STPictureFormat) get_store().add_attribute_user(qNameArr[0]);
            }
            sTPictureFormat2.set(sTPictureFormat);
        }
    }
}
