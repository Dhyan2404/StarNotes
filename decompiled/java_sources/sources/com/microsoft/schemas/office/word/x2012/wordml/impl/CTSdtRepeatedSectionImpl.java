package com.microsoft.schemas.office.word.x2012.wordml.impl;

import com.microsoft.schemas.office.word.x2012.wordml.CTSdtRepeatedSection;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;

/* loaded from: classes7.dex */
public class CTSdtRepeatedSectionImpl extends XmlComplexContentImpl implements CTSdtRepeatedSection {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", "sectionTitle"), new QName("http://schemas.microsoft.com/office/word/2012/wordml", "doNotAllowInsertDeleteSection")};
    private static final long serialVersionUID = 1;

    public CTSdtRepeatedSectionImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtRepeatedSection
    public CTOnOff addNewDoNotAllowInsertDeleteSection() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOnOff;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtRepeatedSection
    public CTString addNewSectionTitle() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTString;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtRepeatedSection
    public CTOnOff getDoNotAllowInsertDeleteSection() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtRepeatedSection
    public CTString getSectionTitle() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtRepeatedSection
    public boolean isSetDoNotAllowInsertDeleteSection() {
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

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtRepeatedSection
    public boolean isSetSectionTitle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtRepeatedSection
    public void setDoNotAllowInsertDeleteSection(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtRepeatedSection
    public void setSectionTitle(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtRepeatedSection
    public void unsetDoNotAllowInsertDeleteSection() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CTSdtRepeatedSection
    public void unsetSectionTitle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
