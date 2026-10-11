package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import androidx.core.app.NotificationCompat;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConsolidation;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPages;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangeSets;

/* loaded from: classes15.dex */
public class CTConsolidationImpl extends XmlComplexContentImpl implements CTConsolidation {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, NotificationCompat.WearableExtender.f5053s), new QName(XSSFRelation.NS_SPREADSHEETML, "rangeSets"), new QName("", "autoPage")};
    private static final long serialVersionUID = 1;

    public CTConsolidationImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConsolidation
    public CTPages addNewPages() {
        CTPages cTPages;
        synchronized (monitor()) {
            check_orphaned();
            cTPages = (CTPages) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPages;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConsolidation
    public CTRangeSets addNewRangeSets() {
        CTRangeSets cTRangeSets;
        synchronized (monitor()) {
            check_orphaned();
            cTRangeSets = (CTRangeSets) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTRangeSets;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConsolidation
    public boolean getAutoPage() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConsolidation
    public CTPages getPages() {
        CTPages cTPages;
        synchronized (monitor()) {
            check_orphaned();
            cTPages = (CTPages) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPages == null) {
                cTPages = null;
            }
        }
        return cTPages;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConsolidation
    public CTRangeSets getRangeSets() {
        CTRangeSets cTRangeSets;
        synchronized (monitor()) {
            check_orphaned();
            cTRangeSets = (CTRangeSets) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTRangeSets == null) {
                cTRangeSets = null;
            }
        }
        return cTRangeSets;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConsolidation
    public boolean isSetAutoPage() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConsolidation
    public boolean isSetPages() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConsolidation
    public void setAutoPage(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConsolidation
    public void setPages(CTPages cTPages) {
        generatedSetterHelperImpl(cTPages, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConsolidation
    public void setRangeSets(CTRangeSets cTRangeSets) {
        generatedSetterHelperImpl(cTRangeSets, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConsolidation
    public void unsetAutoPage() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConsolidation
    public void unsetPages() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConsolidation
    public XmlBoolean xgetAutoPage() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[2]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConsolidation
    public void xsetAutoPage(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }
}
