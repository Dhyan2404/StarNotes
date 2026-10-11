package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.STShapeID;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLSubShapeId;

/* loaded from: classes14.dex */
public class CTTLSubShapeIdImpl extends XmlComplexContentImpl implements CTTLSubShapeId {
    private static final QName[] PROPERTY_QNAME = {new QName("", "spid")};
    private static final long serialVersionUID = 1;

    public CTTLSubShapeIdImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLSubShapeId
    public String getSpid() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLSubShapeId
    public void setSpid(String str) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLSubShapeId
    public STShapeID xgetSpid() {
        STShapeID sTShapeID;
        synchronized (monitor()) {
            check_orphaned();
            sTShapeID = (STShapeID) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTShapeID;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLSubShapeId
    public void xsetSpid(STShapeID sTShapeID) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STShapeID sTShapeID2 = (STShapeID) typeStore.find_attribute_user(qNameArr[0]);
            if (sTShapeID2 == null) {
                sTShapeID2 = (STShapeID) get_store().add_attribute_user(qNameArr[0]);
            }
            sTShapeID2.set(sTShapeID);
        }
    }
}
