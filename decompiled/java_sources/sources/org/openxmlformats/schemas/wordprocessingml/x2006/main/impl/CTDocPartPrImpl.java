package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehaviors;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartCategory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartName;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartTypes;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTGuid;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;

/* loaded from: classes16.dex */
public class CTDocPartPrImpl extends XmlComplexContentImpl implements CTDocPartPr {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "name"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "style"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "category"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "types"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "behaviors"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "description"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "guid")};
    private static final long serialVersionUID = 1;

    public CTDocPartPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public CTDocPartBehaviors addNewBehaviors() {
        CTDocPartBehaviors cTDocPartBehaviors;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartBehaviors = (CTDocPartBehaviors) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTDocPartBehaviors;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public CTDocPartCategory addNewCategory() {
        CTDocPartCategory cTDocPartCategory;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartCategory = (CTDocPartCategory) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTDocPartCategory;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public CTString addNewDescription() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public CTGuid addNewGuid() {
        CTGuid cTGuid;
        synchronized (monitor()) {
            check_orphaned();
            cTGuid = (CTGuid) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTGuid;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public CTDocPartName addNewName() {
        CTDocPartName cTDocPartName;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartName = (CTDocPartName) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDocPartName;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public CTString addNewStyle() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public CTDocPartTypes addNewTypes() {
        CTDocPartTypes cTDocPartTypes;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartTypes = (CTDocPartTypes) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTDocPartTypes;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public CTDocPartBehaviors getBehaviors() {
        CTDocPartBehaviors cTDocPartBehaviors;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartBehaviors = (CTDocPartBehaviors) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTDocPartBehaviors == null) {
                cTDocPartBehaviors = null;
            }
        }
        return cTDocPartBehaviors;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public CTDocPartCategory getCategory() {
        CTDocPartCategory cTDocPartCategory;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartCategory = (CTDocPartCategory) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTDocPartCategory == null) {
                cTDocPartCategory = null;
            }
        }
        return cTDocPartCategory;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public CTString getDescription() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public CTGuid getGuid() {
        CTGuid cTGuid;
        synchronized (monitor()) {
            check_orphaned();
            cTGuid = (CTGuid) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTGuid == null) {
                cTGuid = null;
            }
        }
        return cTGuid;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public CTDocPartName getName() {
        CTDocPartName cTDocPartName;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartName = (CTDocPartName) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDocPartName == null) {
                cTDocPartName = null;
            }
        }
        return cTDocPartName;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public CTString getStyle() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public CTDocPartTypes getTypes() {
        CTDocPartTypes cTDocPartTypes;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartTypes = (CTDocPartTypes) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTDocPartTypes == null) {
                cTDocPartTypes = null;
            }
        }
        return cTDocPartTypes;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public boolean isSetBehaviors() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public boolean isSetCategory() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public boolean isSetDescription() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public boolean isSetGuid() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public boolean isSetStyle() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public boolean isSetTypes() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public void setBehaviors(CTDocPartBehaviors cTDocPartBehaviors) {
        generatedSetterHelperImpl(cTDocPartBehaviors, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public void setCategory(CTDocPartCategory cTDocPartCategory) {
        generatedSetterHelperImpl(cTDocPartCategory, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public void setDescription(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public void setGuid(CTGuid cTGuid) {
        generatedSetterHelperImpl(cTGuid, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public void setName(CTDocPartName cTDocPartName) {
        generatedSetterHelperImpl(cTDocPartName, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public void setStyle(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public void setTypes(CTDocPartTypes cTDocPartTypes) {
        generatedSetterHelperImpl(cTDocPartTypes, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public void unsetBehaviors() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public void unsetCategory() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public void unsetDescription() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public void unsetGuid() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public void unsetStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr
    public void unsetTypes() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }
}
