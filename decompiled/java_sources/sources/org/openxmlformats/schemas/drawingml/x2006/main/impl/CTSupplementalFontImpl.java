package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSupplementalFont;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextTypeface;

/* loaded from: classes14.dex */
public class CTSupplementalFontImpl extends XmlComplexContentImpl implements CTSupplementalFont {
    private static final QName[] PROPERTY_QNAME = {new QName("", Constants.ELEMNAME_SCRIPT_STRING), new QName("", "typeface")};
    private static final long serialVersionUID = 1;

    public CTSupplementalFontImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSupplementalFont
    public String getScript() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSupplementalFont
    public String getTypeface() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSupplementalFont
    public void setScript(String str) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSupplementalFont
    public void setTypeface(String str) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSupplementalFont
    public XmlString xgetScript() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSupplementalFont
    public STTextTypeface xgetTypeface() {
        STTextTypeface sTTextTypeface;
        synchronized (monitor()) {
            check_orphaned();
            sTTextTypeface = (STTextTypeface) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTTextTypeface;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSupplementalFont
    public void xsetScript(XmlString xmlString) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSupplementalFont
    public void xsetTypeface(STTextTypeface sTTextTypeface) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTextTypeface sTTextTypeface2 = (STTextTypeface) typeStore.find_attribute_user(qNameArr[1]);
            if (sTTextTypeface2 == null) {
                sTTextTypeface2 = (STTextTypeface) get_store().add_attribute_user(qNameArr[1]);
            }
            sTTextTypeface2.set(sTTextTypeface);
        }
    }
}
