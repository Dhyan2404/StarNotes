package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorFilter;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDynamicFilter;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIconFilter;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTop10;

/* loaded from: classes15.dex */
public class CTFilterColumnImpl extends XmlComplexContentImpl implements CTFilterColumn {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "filters"), new QName(XSSFRelation.NS_SPREADSHEETML, "top10"), new QName(XSSFRelation.NS_SPREADSHEETML, "customFilters"), new QName(XSSFRelation.NS_SPREADSHEETML, "dynamicFilter"), new QName(XSSFRelation.NS_SPREADSHEETML, "colorFilter"), new QName(XSSFRelation.NS_SPREADSHEETML, "iconFilter"), new QName(XSSFRelation.NS_SPREADSHEETML, "extLst"), new QName("", "colId"), new QName("", "hiddenButton"), new QName("", "showButton")};
    private static final long serialVersionUID = 1;

    public CTFilterColumnImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public CTColorFilter addNewColorFilter() {
        CTColorFilter cTColorFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTColorFilter = (CTColorFilter) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTColorFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public CTCustomFilters addNewCustomFilters() {
        CTCustomFilters cTCustomFilters;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomFilters = (CTCustomFilters) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTCustomFilters;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public CTDynamicFilter addNewDynamicFilter() {
        CTDynamicFilter cTDynamicFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTDynamicFilter = (CTDynamicFilter) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTDynamicFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public CTFilters addNewFilters() {
        CTFilters cTFilters;
        synchronized (monitor()) {
            check_orphaned();
            cTFilters = (CTFilters) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFilters;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public CTIconFilter addNewIconFilter() {
        CTIconFilter cTIconFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTIconFilter = (CTIconFilter) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTIconFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public CTTop10 addNewTop10() {
        CTTop10 cTTop10;
        synchronized (monitor()) {
            check_orphaned();
            cTTop10 = (CTTop10) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTop10;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public long getColId() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public CTColorFilter getColorFilter() {
        CTColorFilter cTColorFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTColorFilter = (CTColorFilter) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTColorFilter == null) {
                cTColorFilter = null;
            }
        }
        return cTColorFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public CTCustomFilters getCustomFilters() {
        CTCustomFilters cTCustomFilters;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomFilters = (CTCustomFilters) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTCustomFilters == null) {
                cTCustomFilters = null;
            }
        }
        return cTCustomFilters;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public CTDynamicFilter getDynamicFilter() {
        CTDynamicFilter cTDynamicFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTDynamicFilter = (CTDynamicFilter) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTDynamicFilter == null) {
                cTDynamicFilter = null;
            }
        }
        return cTDynamicFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public CTFilters getFilters() {
        CTFilters cTFilters;
        synchronized (monitor()) {
            check_orphaned();
            cTFilters = (CTFilters) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTFilters == null) {
                cTFilters = null;
            }
        }
        return cTFilters;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public boolean getHiddenButton() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[8]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public CTIconFilter getIconFilter() {
        CTIconFilter cTIconFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTIconFilter = (CTIconFilter) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTIconFilter == null) {
                cTIconFilter = null;
            }
        }
        return cTIconFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public boolean getShowButton() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[9]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public CTTop10 getTop10() {
        CTTop10 cTTop10;
        synchronized (monitor()) {
            check_orphaned();
            cTTop10 = (CTTop10) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTop10 == null) {
                cTTop10 = null;
            }
        }
        return cTTop10;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public boolean isSetColorFilter() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public boolean isSetCustomFilters() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public boolean isSetDynamicFilter() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public boolean isSetFilters() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public boolean isSetHiddenButton() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public boolean isSetIconFilter() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public boolean isSetShowButton() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public boolean isSetTop10() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void setColId(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void setColorFilter(CTColorFilter cTColorFilter) {
        generatedSetterHelperImpl(cTColorFilter, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void setCustomFilters(CTCustomFilters cTCustomFilters) {
        generatedSetterHelperImpl(cTCustomFilters, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void setDynamicFilter(CTDynamicFilter cTDynamicFilter) {
        generatedSetterHelperImpl(cTDynamicFilter, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void setFilters(CTFilters cTFilters) {
        generatedSetterHelperImpl(cTFilters, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void setHiddenButton(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void setIconFilter(CTIconFilter cTIconFilter) {
        generatedSetterHelperImpl(cTIconFilter, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void setShowButton(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void setTop10(CTTop10 cTTop10) {
        generatedSetterHelperImpl(cTTop10, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void unsetColorFilter() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void unsetCustomFilters() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void unsetDynamicFilter() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void unsetFilters() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void unsetHiddenButton() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void unsetIconFilter() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void unsetShowButton() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void unsetTop10() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public XmlUnsignedInt xgetColId() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public XmlBoolean xgetHiddenButton() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[8]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[8]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public XmlBoolean xgetShowButton() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[9]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void xsetColId(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[7]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void xsetHiddenButton(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[8]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[8]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn
    public void xsetShowButton(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[9]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }
}
