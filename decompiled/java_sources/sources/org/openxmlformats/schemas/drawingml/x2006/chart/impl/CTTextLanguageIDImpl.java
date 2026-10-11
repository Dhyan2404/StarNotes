package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTTextLanguageID;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STLang;

/* loaded from: classes14.dex */
public class CTTextLanguageIDImpl extends XmlComplexContentImpl implements CTTextLanguageID {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTTextLanguageIDImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTTextLanguageID
    public String getVal() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTTextLanguageID
    public void setVal(String str) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTTextLanguageID
    public STLang xgetVal() {
        STLang sTLang;
        synchronized (monitor()) {
            check_orphaned();
            sTLang = (STLang) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTLang;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTTextLanguageID
    public void xsetVal(STLang sTLang) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STLang sTLang2 = (STLang) typeStore.find_attribute_user(qNameArr[0]);
            if (sTLang2 == null) {
                sTLang2 = (STLang) get_store().add_attribute_user(qNameArr[0]);
            }
            sTLang2.set(sTLang);
        }
    }
}
