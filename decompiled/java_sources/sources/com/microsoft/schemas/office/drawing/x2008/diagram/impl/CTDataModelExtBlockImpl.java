package com.microsoft.schemas.office.drawing.x2008.diagram.impl;

import com.microsoft.schemas.office.drawing.x2008.diagram.CTDataModelExtBlock;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CTDataModelExtBlockImpl extends XmlComplexContentImpl implements CTDataModelExtBlock {
    private static final QName[] PROPERTY_QNAME = {new QName("", "relId"), new QName("", "minVer")};
    private static final long serialVersionUID = 1;

    public CTDataModelExtBlockImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.CTDataModelExtBlock
    public String getMinVer() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.CTDataModelExtBlock
    public String getRelId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.CTDataModelExtBlock
    public boolean isSetMinVer() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                z = false;
            }
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.CTDataModelExtBlock
    public boolean isSetRelId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.CTDataModelExtBlock
    public void setMinVer(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.CTDataModelExtBlock
    public void setRelId(String str) {
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

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.CTDataModelExtBlock
    public void unsetMinVer() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.CTDataModelExtBlock
    public void unsetRelId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.CTDataModelExtBlock
    public XmlAnyURI xgetMinVer() {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlAnyURI;
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.CTDataModelExtBlock
    public XmlString xgetRelId() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.CTDataModelExtBlock
    public void xsetMinVer(XmlAnyURI xmlAnyURI) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlAnyURI xmlAnyURI2 = (XmlAnyURI) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlAnyURI2 == null) {
                xmlAnyURI2 = (XmlAnyURI) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlAnyURI2.set(xmlAnyURI);
        }
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.CTDataModelExtBlock
    public void xsetRelId(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[0]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[0]);
            }
            xmlString2.set(xmlString);
        }
    }
}
