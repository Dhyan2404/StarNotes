package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdj;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STIndex1;

/* loaded from: classes14.dex */
public class CTAdjImpl extends XmlComplexContentImpl implements CTAdj {
    private static final QName[] PROPERTY_QNAME = {new QName("", "idx"), new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTAdjImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdj
    public long getIdx() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdj
    public double getVal() {
        double doubleValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            doubleValue = simpleValue == null ? 0.0d : simpleValue.getDoubleValue();
        }
        return doubleValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdj
    public void setIdx(long j) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdj
    public void setVal(double d) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setDoubleValue(d);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdj
    public STIndex1 xgetIdx() {
        STIndex1 sTIndex1;
        synchronized (monitor()) {
            check_orphaned();
            sTIndex1 = (STIndex1) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTIndex1;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdj
    public XmlDouble xgetVal() {
        XmlDouble xmlDouble;
        synchronized (monitor()) {
            check_orphaned();
            xmlDouble = (XmlDouble) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlDouble;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdj
    public void xsetIdx(STIndex1 sTIndex1) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STIndex1 sTIndex12 = (STIndex1) typeStore.find_attribute_user(qNameArr[0]);
            if (sTIndex12 == null) {
                sTIndex12 = (STIndex1) get_store().add_attribute_user(qNameArr[0]);
            }
            sTIndex12.set(sTIndex1);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdj
    public void xsetVal(XmlDouble xmlDouble) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDouble xmlDouble2 = (XmlDouble) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlDouble2 == null) {
                xmlDouble2 = (XmlDouble) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlDouble2.set(xmlDouble);
        }
    }
}
