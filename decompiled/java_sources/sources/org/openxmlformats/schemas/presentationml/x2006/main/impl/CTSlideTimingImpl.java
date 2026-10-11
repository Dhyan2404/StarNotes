package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTExtensionListModify;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTimeNodeList;

/* loaded from: classes14.dex */
public class CTSlideTimingImpl extends XmlComplexContentImpl implements CTSlideTiming {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "tnLst"), new QName(XSSFRelation.NS_PRESENTATIONML, "bldLst"), new QName(XSSFRelation.NS_PRESENTATIONML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTSlideTimingImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming
    public CTBuildList addNewBldLst() {
        CTBuildList cTBuildList;
        synchronized (monitor()) {
            check_orphaned();
            cTBuildList = (CTBuildList) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTBuildList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming
    public CTExtensionListModify addNewExtLst() {
        CTExtensionListModify cTExtensionListModify;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionListModify = (CTExtensionListModify) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTExtensionListModify;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming
    public CTTimeNodeList addNewTnLst() {
        CTTimeNodeList cTTimeNodeList;
        synchronized (monitor()) {
            check_orphaned();
            cTTimeNodeList = (CTTimeNodeList) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTimeNodeList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming
    public CTBuildList getBldLst() {
        CTBuildList cTBuildList;
        synchronized (monitor()) {
            check_orphaned();
            cTBuildList = (CTBuildList) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTBuildList == null) {
                cTBuildList = null;
            }
        }
        return cTBuildList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming
    public CTExtensionListModify getExtLst() {
        CTExtensionListModify cTExtensionListModify;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionListModify = (CTExtensionListModify) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTExtensionListModify == null) {
                cTExtensionListModify = null;
            }
        }
        return cTExtensionListModify;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming
    public CTTimeNodeList getTnLst() {
        CTTimeNodeList cTTimeNodeList;
        synchronized (monitor()) {
            check_orphaned();
            cTTimeNodeList = (CTTimeNodeList) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTimeNodeList == null) {
                cTTimeNodeList = null;
            }
        }
        return cTTimeNodeList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming
    public boolean isSetBldLst() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming
    public boolean isSetTnLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming
    public void setBldLst(CTBuildList cTBuildList) {
        generatedSetterHelperImpl(cTBuildList, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming
    public void setExtLst(CTExtensionListModify cTExtensionListModify) {
        generatedSetterHelperImpl(cTExtensionListModify, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming
    public void setTnLst(CTTimeNodeList cTTimeNodeList) {
        generatedSetterHelperImpl(cTTimeNodeList, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming
    public void unsetBldLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTiming
    public void unsetTnLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
