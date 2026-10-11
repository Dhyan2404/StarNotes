package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBoolean;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTExternalData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPivotSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPrintSettings;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTProtection;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTRelId;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTStyle;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTTextLanguageID;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorMapping;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody;

/* loaded from: classes14.dex */
public class CTChartSpaceImpl extends XmlComplexContentImpl implements CTChartSpace {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, "date1904"), new QName(XSSFRelation.NS_CHART, "lang"), new QName(XSSFRelation.NS_CHART, "roundedCorners"), new QName(XSSFRelation.NS_CHART, "style"), new QName(XSSFRelation.NS_CHART, "clrMapOvr"), new QName(XSSFRelation.NS_CHART, "pivotSource"), new QName(XSSFRelation.NS_CHART, "protection"), new QName(XSSFRelation.NS_CHART, "chart"), new QName(XSSFRelation.NS_CHART, "spPr"), new QName(XSSFRelation.NS_CHART, "txPr"), new QName(XSSFRelation.NS_CHART, "externalData"), new QName(XSSFRelation.NS_CHART, "printSettings"), new QName(XSSFRelation.NS_CHART, "userShapes"), new QName(XSSFRelation.NS_CHART, "extLst")};
    private static final long serialVersionUID = 1;

    public CTChartSpaceImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTChart addNewChart() {
        CTChart cTChart;
        synchronized (monitor()) {
            check_orphaned();
            cTChart = (CTChart) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTColorMapping addNewClrMapOvr() {
        CTColorMapping cTColorMapping;
        synchronized (monitor()) {
            check_orphaned();
            cTColorMapping = (CTColorMapping) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTColorMapping;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTBoolean addNewDate1904() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTExternalData addNewExternalData() {
        CTExternalData cTExternalData;
        synchronized (monitor()) {
            check_orphaned();
            cTExternalData = (CTExternalData) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTExternalData;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTTextLanguageID addNewLang() {
        CTTextLanguageID cTTextLanguageID;
        synchronized (monitor()) {
            check_orphaned();
            cTTextLanguageID = (CTTextLanguageID) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTextLanguageID;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTPivotSource addNewPivotSource() {
        CTPivotSource cTPivotSource;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotSource = (CTPivotSource) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTPivotSource;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTPrintSettings addNewPrintSettings() {
        CTPrintSettings cTPrintSettings;
        synchronized (monitor()) {
            check_orphaned();
            cTPrintSettings = (CTPrintSettings) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTPrintSettings;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTProtection addNewProtection() {
        CTProtection cTProtection;
        synchronized (monitor()) {
            check_orphaned();
            cTProtection = (CTProtection) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTProtection;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTBoolean addNewRoundedCorners() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTShapeProperties addNewSpPr() {
        CTShapeProperties cTShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeProperties = (CTShapeProperties) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTShapeProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTStyle addNewStyle() {
        CTStyle cTStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTStyle = (CTStyle) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTTextBody addNewTxPr() {
        CTTextBody cTTextBody;
        synchronized (monitor()) {
            check_orphaned();
            cTTextBody = (CTTextBody) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTTextBody;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTRelId addNewUserShapes() {
        CTRelId cTRelId;
        synchronized (monitor()) {
            check_orphaned();
            cTRelId = (CTRelId) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTRelId;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTChart getChart() {
        CTChart cTChart;
        synchronized (monitor()) {
            check_orphaned();
            cTChart = (CTChart) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTChart == null) {
                cTChart = null;
            }
        }
        return cTChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTColorMapping getClrMapOvr() {
        CTColorMapping cTColorMapping;
        synchronized (monitor()) {
            check_orphaned();
            cTColorMapping = (CTColorMapping) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTColorMapping == null) {
                cTColorMapping = null;
            }
        }
        return cTColorMapping;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTBoolean getDate1904() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTBoolean == null) {
                cTBoolean = null;
            }
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[13], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTExternalData getExternalData() {
        CTExternalData cTExternalData;
        synchronized (monitor()) {
            check_orphaned();
            cTExternalData = (CTExternalData) get_store().find_element_user(PROPERTY_QNAME[10], 0);
            if (cTExternalData == null) {
                cTExternalData = null;
            }
        }
        return cTExternalData;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTTextLanguageID getLang() {
        CTTextLanguageID cTTextLanguageID;
        synchronized (monitor()) {
            check_orphaned();
            cTTextLanguageID = (CTTextLanguageID) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTextLanguageID == null) {
                cTTextLanguageID = null;
            }
        }
        return cTTextLanguageID;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTPivotSource getPivotSource() {
        CTPivotSource cTPivotSource;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotSource = (CTPivotSource) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTPivotSource == null) {
                cTPivotSource = null;
            }
        }
        return cTPivotSource;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTPrintSettings getPrintSettings() {
        CTPrintSettings cTPrintSettings;
        synchronized (monitor()) {
            check_orphaned();
            cTPrintSettings = (CTPrintSettings) get_store().find_element_user(PROPERTY_QNAME[11], 0);
            if (cTPrintSettings == null) {
                cTPrintSettings = null;
            }
        }
        return cTPrintSettings;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTProtection getProtection() {
        CTProtection cTProtection;
        synchronized (monitor()) {
            check_orphaned();
            cTProtection = (CTProtection) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTProtection == null) {
                cTProtection = null;
            }
        }
        return cTProtection;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTBoolean getRoundedCorners() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTBoolean == null) {
                cTBoolean = null;
            }
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTShapeProperties getSpPr() {
        CTShapeProperties cTShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeProperties = (CTShapeProperties) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTShapeProperties == null) {
                cTShapeProperties = null;
            }
        }
        return cTShapeProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTStyle getStyle() {
        CTStyle cTStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTStyle = (CTStyle) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTStyle == null) {
                cTStyle = null;
            }
        }
        return cTStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTTextBody getTxPr() {
        CTTextBody cTTextBody;
        synchronized (monitor()) {
            check_orphaned();
            cTTextBody = (CTTextBody) get_store().find_element_user(PROPERTY_QNAME[9], 0);
            if (cTTextBody == null) {
                cTTextBody = null;
            }
        }
        return cTTextBody;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public CTRelId getUserShapes() {
        CTRelId cTRelId;
        synchronized (monitor()) {
            check_orphaned();
            cTRelId = (CTRelId) get_store().find_element_user(PROPERTY_QNAME[12], 0);
            if (cTRelId == null) {
                cTRelId = null;
            }
        }
        return cTRelId;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public boolean isSetClrMapOvr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public boolean isSetDate1904() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[13]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public boolean isSetExternalData() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[10]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public boolean isSetLang() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public boolean isSetPivotSource() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public boolean isSetPrintSettings() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[11]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public boolean isSetProtection() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public boolean isSetRoundedCorners() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public boolean isSetSpPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public boolean isSetStyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public boolean isSetTxPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[9]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public boolean isSetUserShapes() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[12]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void setChart(CTChart cTChart) {
        generatedSetterHelperImpl(cTChart, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void setClrMapOvr(CTColorMapping cTColorMapping) {
        generatedSetterHelperImpl(cTColorMapping, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void setDate1904(CTBoolean cTBoolean) {
        generatedSetterHelperImpl(cTBoolean, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[13], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void setExternalData(CTExternalData cTExternalData) {
        generatedSetterHelperImpl(cTExternalData, PROPERTY_QNAME[10], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void setLang(CTTextLanguageID cTTextLanguageID) {
        generatedSetterHelperImpl(cTTextLanguageID, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void setPivotSource(CTPivotSource cTPivotSource) {
        generatedSetterHelperImpl(cTPivotSource, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void setPrintSettings(CTPrintSettings cTPrintSettings) {
        generatedSetterHelperImpl(cTPrintSettings, PROPERTY_QNAME[11], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void setProtection(CTProtection cTProtection) {
        generatedSetterHelperImpl(cTProtection, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void setRoundedCorners(CTBoolean cTBoolean) {
        generatedSetterHelperImpl(cTBoolean, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void setSpPr(CTShapeProperties cTShapeProperties) {
        generatedSetterHelperImpl(cTShapeProperties, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void setStyle(CTStyle cTStyle) {
        generatedSetterHelperImpl(cTStyle, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void setTxPr(CTTextBody cTTextBody) {
        generatedSetterHelperImpl(cTTextBody, PROPERTY_QNAME[9], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void setUserShapes(CTRelId cTRelId) {
        generatedSetterHelperImpl(cTRelId, PROPERTY_QNAME[12], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void unsetClrMapOvr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void unsetDate1904() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void unsetExternalData() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void unsetLang() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void unsetPivotSource() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void unsetPrintSettings() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void unsetProtection() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void unsetRoundedCorners() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void unsetSpPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void unsetStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void unsetTxPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace
    public void unsetUserShapes() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], 0);
        }
    }
}
