package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlLong;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTRatio;

/* loaded from: classes14.dex */
public class CTRatioImpl extends XmlComplexContentImpl implements CTRatio {
    private static final QName[] PROPERTY_QNAME = {new QName("", GoogleApiAvailabilityLight.f29016b), new QName("", "d")};
    private static final long serialVersionUID = 1;

    public CTRatioImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTRatio
    public long getD() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTRatio
    public long getN() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTRatio
    public void setD(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTRatio
    public void setN(long j) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTRatio
    public XmlLong xgetD() {
        XmlLong xmlLong;
        synchronized (monitor()) {
            check_orphaned();
            xmlLong = (XmlLong) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlLong;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTRatio
    public XmlLong xgetN() {
        XmlLong xmlLong;
        synchronized (monitor()) {
            check_orphaned();
            xmlLong = (XmlLong) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return xmlLong;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTRatio
    public void xsetD(XmlLong xmlLong) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlLong xmlLong2 = (XmlLong) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlLong2 == null) {
                xmlLong2 = (XmlLong) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlLong2.set(xmlLong);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTRatio
    public void xsetN(XmlLong xmlLong) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlLong xmlLong2 = (XmlLong) typeStore.find_attribute_user(qNameArr[0]);
            if (xmlLong2 == null) {
                xmlLong2 = (XmlLong) get_store().add_attribute_user(qNameArr[0]);
            }
            xmlLong2.set(xmlLong);
        }
    }
}
