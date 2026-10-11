package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTCommonSlideViewProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideViewProperties;

/* loaded from: classes14.dex */
public class CTSlideViewPropertiesImpl extends XmlComplexContentImpl implements CTSlideViewProperties {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cSldViewPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTSlideViewPropertiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideViewProperties
    public CTCommonSlideViewProperties addNewCSldViewPr() {
        CTCommonSlideViewProperties cTCommonSlideViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTCommonSlideViewProperties = (CTCommonSlideViewProperties) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCommonSlideViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideViewProperties
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideViewProperties
    public CTCommonSlideViewProperties getCSldViewPr() {
        CTCommonSlideViewProperties cTCommonSlideViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTCommonSlideViewProperties = (CTCommonSlideViewProperties) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTCommonSlideViewProperties == null) {
                cTCommonSlideViewProperties = null;
            }
        }
        return cTCommonSlideViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideViewProperties
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideViewProperties
    public boolean isSetExtLst() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideViewProperties
    public void setCSldViewPr(CTCommonSlideViewProperties cTCommonSlideViewProperties) {
        generatedSetterHelperImpl(cTCommonSlideViewProperties, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideViewProperties
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideViewProperties
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
