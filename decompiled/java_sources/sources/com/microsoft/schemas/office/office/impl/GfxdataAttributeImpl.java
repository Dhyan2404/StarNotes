package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.GfxdataAttribute;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class GfxdataAttributeImpl extends XmlComplexContentImpl implements GfxdataAttribute {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "gfxdata")};
    private static final long serialVersionUID = 1;

    public GfxdataAttributeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.GfxdataAttribute
    public byte[] getGfxdata() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // com.microsoft.schemas.office.office.GfxdataAttribute
    public boolean isSetGfxdata() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.GfxdataAttribute
    public void setGfxdata(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // com.microsoft.schemas.office.office.GfxdataAttribute
    public void unsetGfxdata() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.office.GfxdataAttribute
    public XmlBase64Binary xgetGfxdata() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return xmlBase64Binary;
    }

    @Override // com.microsoft.schemas.office.office.GfxdataAttribute
    public void xsetGfxdata(XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) typeStore.find_attribute_user(qNameArr[0]);
            if (xmlBase64Binary2 == null) {
                xmlBase64Binary2 = (XmlBase64Binary) get_store().add_attribute_user(qNameArr[0]);
            }
            xmlBase64Binary2.set(xmlBase64Binary);
        }
    }
}
