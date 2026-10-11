package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU;
import org.openxmlformats.schemas.presentationml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTHtmlPublishProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPrintProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.CTShowProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.CTWebProperties;

/* loaded from: classes14.dex */
public class CTPresentationPropertiesImpl extends XmlComplexContentImpl implements CTPresentationProperties {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "htmlPubPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "webPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "prnPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "showPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "clrMru"), new QName(XSSFRelation.NS_PRESENTATIONML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTPresentationPropertiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public CTColorMRU addNewClrMru() {
        CTColorMRU cTColorMRU;
        synchronized (monitor()) {
            check_orphaned();
            cTColorMRU = (CTColorMRU) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTColorMRU;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public CTHtmlPublishProperties addNewHtmlPubPr() {
        CTHtmlPublishProperties cTHtmlPublishProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTHtmlPublishProperties = (CTHtmlPublishProperties) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTHtmlPublishProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public CTPrintProperties addNewPrnPr() {
        CTPrintProperties cTPrintProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTPrintProperties = (CTPrintProperties) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTPrintProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public CTShowProperties addNewShowPr() {
        CTShowProperties cTShowProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTShowProperties = (CTShowProperties) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTShowProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public CTWebProperties addNewWebPr() {
        CTWebProperties cTWebProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTWebProperties = (CTWebProperties) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTWebProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public CTColorMRU getClrMru() {
        CTColorMRU cTColorMRU;
        synchronized (monitor()) {
            check_orphaned();
            cTColorMRU = (CTColorMRU) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTColorMRU == null) {
                cTColorMRU = null;
            }
        }
        return cTColorMRU;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public CTHtmlPublishProperties getHtmlPubPr() {
        CTHtmlPublishProperties cTHtmlPublishProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTHtmlPublishProperties = (CTHtmlPublishProperties) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTHtmlPublishProperties == null) {
                cTHtmlPublishProperties = null;
            }
        }
        return cTHtmlPublishProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public CTPrintProperties getPrnPr() {
        CTPrintProperties cTPrintProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTPrintProperties = (CTPrintProperties) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTPrintProperties == null) {
                cTPrintProperties = null;
            }
        }
        return cTPrintProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public CTShowProperties getShowPr() {
        CTShowProperties cTShowProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTShowProperties = (CTShowProperties) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTShowProperties == null) {
                cTShowProperties = null;
            }
        }
        return cTShowProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public CTWebProperties getWebPr() {
        CTWebProperties cTWebProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTWebProperties = (CTWebProperties) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTWebProperties == null) {
                cTWebProperties = null;
            }
        }
        return cTWebProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public boolean isSetClrMru() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public boolean isSetHtmlPubPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public boolean isSetPrnPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public boolean isSetShowPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public boolean isSetWebPr() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public void setClrMru(CTColorMRU cTColorMRU) {
        generatedSetterHelperImpl(cTColorMRU, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public void setHtmlPubPr(CTHtmlPublishProperties cTHtmlPublishProperties) {
        generatedSetterHelperImpl(cTHtmlPublishProperties, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public void setPrnPr(CTPrintProperties cTPrintProperties) {
        generatedSetterHelperImpl(cTPrintProperties, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public void setShowPr(CTShowProperties cTShowProperties) {
        generatedSetterHelperImpl(cTShowProperties, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public void setWebPr(CTWebProperties cTWebProperties) {
        generatedSetterHelperImpl(cTWebProperties, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public void unsetClrMru() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public void unsetHtmlPubPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public void unsetPrnPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public void unsetShowPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties
    public void unsetWebPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
