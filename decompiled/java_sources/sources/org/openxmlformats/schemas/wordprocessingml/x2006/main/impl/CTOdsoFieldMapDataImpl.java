package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTLang;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeOdsoFMDFieldType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;

/* loaded from: classes16.dex */
public class CTOdsoFieldMapDataImpl extends XmlComplexContentImpl implements CTOdsoFieldMapData {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "type"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "name"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "mappedName"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "column"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "lid"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "dynamicAddress")};
    private static final long serialVersionUID = 1;

    public CTOdsoFieldMapDataImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public CTDecimalNumber addNewColumn() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public CTOnOff addNewDynamicAddress() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public CTLang addNewLid() {
        CTLang cTLang;
        synchronized (monitor()) {
            check_orphaned();
            cTLang = (CTLang) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTLang;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public CTString addNewMappedName() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public CTString addNewName() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public CTMailMergeOdsoFMDFieldType addNewType() {
        CTMailMergeOdsoFMDFieldType cTMailMergeOdsoFMDFieldType;
        synchronized (monitor()) {
            check_orphaned();
            cTMailMergeOdsoFMDFieldType = (CTMailMergeOdsoFMDFieldType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMailMergeOdsoFMDFieldType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public CTDecimalNumber getColumn() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTDecimalNumber == null) {
                cTDecimalNumber = null;
            }
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public CTOnOff getDynamicAddress() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public CTLang getLid() {
        CTLang cTLang;
        synchronized (monitor()) {
            check_orphaned();
            cTLang = (CTLang) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTLang == null) {
                cTLang = null;
            }
        }
        return cTLang;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public CTString getMappedName() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public CTString getName() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public CTMailMergeOdsoFMDFieldType getType() {
        CTMailMergeOdsoFMDFieldType cTMailMergeOdsoFMDFieldType;
        synchronized (monitor()) {
            check_orphaned();
            cTMailMergeOdsoFMDFieldType = (CTMailMergeOdsoFMDFieldType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTMailMergeOdsoFMDFieldType == null) {
                cTMailMergeOdsoFMDFieldType = null;
            }
        }
        return cTMailMergeOdsoFMDFieldType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public boolean isSetColumn() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public boolean isSetDynamicAddress() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public boolean isSetLid() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public boolean isSetMappedName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public boolean isSetName() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public boolean isSetType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public void setColumn(CTDecimalNumber cTDecimalNumber) {
        generatedSetterHelperImpl(cTDecimalNumber, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public void setDynamicAddress(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public void setLid(CTLang cTLang) {
        generatedSetterHelperImpl(cTLang, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public void setMappedName(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public void setName(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public void setType(CTMailMergeOdsoFMDFieldType cTMailMergeOdsoFMDFieldType) {
        generatedSetterHelperImpl(cTMailMergeOdsoFMDFieldType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public void unsetColumn() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public void unsetDynamicAddress() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public void unsetLid() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public void unsetMappedName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public void unsetName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
