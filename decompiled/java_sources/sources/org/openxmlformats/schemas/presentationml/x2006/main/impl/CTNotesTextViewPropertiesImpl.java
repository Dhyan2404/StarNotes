package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTCommonViewProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTNotesTextViewProperties;

/* loaded from: classes14.dex */
public class CTNotesTextViewPropertiesImpl extends XmlComplexContentImpl implements CTNotesTextViewProperties {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cViewPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTNotesTextViewPropertiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNotesTextViewProperties
    public CTCommonViewProperties addNewCViewPr() {
        CTCommonViewProperties cTCommonViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTCommonViewProperties = (CTCommonViewProperties) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCommonViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNotesTextViewProperties
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNotesTextViewProperties
    public CTCommonViewProperties getCViewPr() {
        CTCommonViewProperties cTCommonViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTCommonViewProperties = (CTCommonViewProperties) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTCommonViewProperties == null) {
                cTCommonViewProperties = null;
            }
        }
        return cTCommonViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNotesTextViewProperties
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNotesTextViewProperties
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNotesTextViewProperties
    public void setCViewPr(CTCommonViewProperties cTCommonViewProperties) {
        generatedSetterHelperImpl(cTCommonViewProperties, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNotesTextViewProperties
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTNotesTextViewProperties
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
