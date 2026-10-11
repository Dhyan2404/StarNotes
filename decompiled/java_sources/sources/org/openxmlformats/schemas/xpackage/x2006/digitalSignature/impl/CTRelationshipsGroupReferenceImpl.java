package org.openxmlformats.schemas.xpackage.x2006.digitalSignature.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.impl.values.JavaStringHolderEx;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.openxmlformats.schemas.xpackage.x2006.digitalSignature.CTRelationshipsGroupReference;

/* loaded from: classes16.dex */
public class CTRelationshipsGroupReferenceImpl extends JavaStringHolderEx implements CTRelationshipsGroupReference {
    private static final QName[] PROPERTY_QNAME = {new QName("", "SourceType")};
    private static final long serialVersionUID = 1;

    public CTRelationshipsGroupReferenceImpl(SchemaType schemaType) {
        super(schemaType, true);
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.digitalSignature.CTRelationshipsGroupReference
    public String getSourceType() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.digitalSignature.CTRelationshipsGroupReference
    public void setSourceType(String str) {
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

    @Override // org.openxmlformats.schemas.xpackage.x2006.digitalSignature.CTRelationshipsGroupReference
    public XmlAnyURI xgetSourceType() {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return xmlAnyURI;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.digitalSignature.CTRelationshipsGroupReference
    public void xsetSourceType(XmlAnyURI xmlAnyURI) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlAnyURI xmlAnyURI2 = (XmlAnyURI) typeStore.find_attribute_user(qNameArr[0]);
            if (xmlAnyURI2 == null) {
                xmlAnyURI2 = (XmlAnyURI) get_store().add_attribute_user(qNameArr[0]);
            }
            xmlAnyURI2.set(xmlAnyURI);
        }
    }

    public CTRelationshipsGroupReferenceImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
