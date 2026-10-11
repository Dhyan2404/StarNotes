package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.google.android.gms.actions.SearchIntents;
import com.google.firebase.analytics.FirebaseAnalytics;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDataType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDest;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDocType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRel;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;

/* loaded from: classes16.dex */
public class CTMailMergeImpl extends XmlComplexContentImpl implements CTMailMerge {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "mainDocumentType"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "linkToQuery"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "dataType"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "connectString"), new QName(XSSFRelation.NS_WORDPROCESSINGML, SearchIntents.EXTRA_QUERY), new QName(XSSFRelation.NS_WORDPROCESSINGML, "dataSource"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "headerSource"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "doNotSuppressBlankLines"), new QName(XSSFRelation.NS_WORDPROCESSINGML, FirebaseAnalytics.Param.DESTINATION), new QName(XSSFRelation.NS_WORDPROCESSINGML, "addressFieldName"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "mailSubject"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "mailAsAttachment"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "viewMergedData"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "activeRecord"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "checkErrors"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "odso")};
    private static final long serialVersionUID = 1;

    public CTMailMergeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTDecimalNumber addNewActiveRecord() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTString addNewAddressFieldName() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTDecimalNumber addNewCheckErrors() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTString addNewConnectString() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTRel addNewDataSource() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTMailMergeDataType addNewDataType() {
        CTMailMergeDataType cTMailMergeDataType;
        synchronized (monitor()) {
            check_orphaned();
            cTMailMergeDataType = (CTMailMergeDataType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTMailMergeDataType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTMailMergeDest addNewDestination() {
        CTMailMergeDest cTMailMergeDest;
        synchronized (monitor()) {
            check_orphaned();
            cTMailMergeDest = (CTMailMergeDest) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTMailMergeDest;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTOnOff addNewDoNotSuppressBlankLines() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTRel addNewHeaderSource() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTOnOff addNewLinkToQuery() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTOnOff addNewMailAsAttachment() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTString addNewMailSubject() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTMailMergeDocType addNewMainDocumentType() {
        CTMailMergeDocType cTMailMergeDocType;
        synchronized (monitor()) {
            check_orphaned();
            cTMailMergeDocType = (CTMailMergeDocType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMailMergeDocType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTOdso addNewOdso() {
        CTOdso cTOdso;
        synchronized (monitor()) {
            check_orphaned();
            cTOdso = (CTOdso) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTOdso;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTString addNewQuery() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTOnOff addNewViewMergedData() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTDecimalNumber getActiveRecord() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().find_element_user(PROPERTY_QNAME[13], 0);
            if (cTDecimalNumber == null) {
                cTDecimalNumber = null;
            }
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTString getAddressFieldName() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[9], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTDecimalNumber getCheckErrors() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().find_element_user(PROPERTY_QNAME[14], 0);
            if (cTDecimalNumber == null) {
                cTDecimalNumber = null;
            }
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTString getConnectString() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTRel getDataSource() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTRel == null) {
                cTRel = null;
            }
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTMailMergeDataType getDataType() {
        CTMailMergeDataType cTMailMergeDataType;
        synchronized (monitor()) {
            check_orphaned();
            cTMailMergeDataType = (CTMailMergeDataType) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTMailMergeDataType == null) {
                cTMailMergeDataType = null;
            }
        }
        return cTMailMergeDataType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTMailMergeDest getDestination() {
        CTMailMergeDest cTMailMergeDest;
        synchronized (monitor()) {
            check_orphaned();
            cTMailMergeDest = (CTMailMergeDest) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTMailMergeDest == null) {
                cTMailMergeDest = null;
            }
        }
        return cTMailMergeDest;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTOnOff getDoNotSuppressBlankLines() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTRel getHeaderSource() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTRel == null) {
                cTRel = null;
            }
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTOnOff getLinkToQuery() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTOnOff getMailAsAttachment() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[11], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTString getMailSubject() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[10], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTMailMergeDocType getMainDocumentType() {
        CTMailMergeDocType cTMailMergeDocType;
        synchronized (monitor()) {
            check_orphaned();
            cTMailMergeDocType = (CTMailMergeDocType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTMailMergeDocType == null) {
                cTMailMergeDocType = null;
            }
        }
        return cTMailMergeDocType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTOdso getOdso() {
        CTOdso cTOdso;
        synchronized (monitor()) {
            check_orphaned();
            cTOdso = (CTOdso) get_store().find_element_user(PROPERTY_QNAME[15], 0);
            if (cTOdso == null) {
                cTOdso = null;
            }
        }
        return cTOdso;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTString getQuery() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public CTOnOff getViewMergedData() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[12], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public boolean isSetActiveRecord() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[13]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public boolean isSetAddressFieldName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[9]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public boolean isSetCheckErrors() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[14]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public boolean isSetConnectString() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public boolean isSetDataSource() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public boolean isSetDestination() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public boolean isSetDoNotSuppressBlankLines() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public boolean isSetHeaderSource() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public boolean isSetLinkToQuery() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public boolean isSetMailAsAttachment() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[11]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public boolean isSetMailSubject() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[10]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public boolean isSetOdso() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[15]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public boolean isSetQuery() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public boolean isSetViewMergedData() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[12]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setActiveRecord(CTDecimalNumber cTDecimalNumber) {
        generatedSetterHelperImpl(cTDecimalNumber, PROPERTY_QNAME[13], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setAddressFieldName(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[9], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setCheckErrors(CTDecimalNumber cTDecimalNumber) {
        generatedSetterHelperImpl(cTDecimalNumber, PROPERTY_QNAME[14], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setConnectString(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setDataSource(CTRel cTRel) {
        generatedSetterHelperImpl(cTRel, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setDataType(CTMailMergeDataType cTMailMergeDataType) {
        generatedSetterHelperImpl(cTMailMergeDataType, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setDestination(CTMailMergeDest cTMailMergeDest) {
        generatedSetterHelperImpl(cTMailMergeDest, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setDoNotSuppressBlankLines(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setHeaderSource(CTRel cTRel) {
        generatedSetterHelperImpl(cTRel, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setLinkToQuery(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setMailAsAttachment(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[11], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setMailSubject(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[10], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setMainDocumentType(CTMailMergeDocType cTMailMergeDocType) {
        generatedSetterHelperImpl(cTMailMergeDocType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setOdso(CTOdso cTOdso) {
        generatedSetterHelperImpl(cTOdso, PROPERTY_QNAME[15], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setQuery(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void setViewMergedData(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[12], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void unsetActiveRecord() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void unsetAddressFieldName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void unsetCheckErrors() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void unsetConnectString() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void unsetDataSource() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void unsetDestination() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void unsetDoNotSuppressBlankLines() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void unsetHeaderSource() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void unsetLinkToQuery() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void unsetMailAsAttachment() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void unsetMailSubject() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void unsetOdso() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void unsetQuery() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMerge
    public void unsetViewMergedData() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], 0);
        }
    }
}
