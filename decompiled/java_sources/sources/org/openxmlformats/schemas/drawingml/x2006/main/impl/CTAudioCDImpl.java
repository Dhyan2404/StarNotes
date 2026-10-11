package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAudioCD;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAudioCDTime;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public class CTAudioCDImpl extends XmlComplexContentImpl implements CTAudioCD {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "st"), new QName(XSSFRelation.NS_DRAWINGML, "end"), new QName(XSSFRelation.NS_DRAWINGML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTAudioCDImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAudioCD
    public CTAudioCDTime addNewEnd() {
        CTAudioCDTime cTAudioCDTime;
        synchronized (monitor()) {
            check_orphaned();
            cTAudioCDTime = (CTAudioCDTime) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTAudioCDTime;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAudioCD
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAudioCD
    public CTAudioCDTime addNewSt() {
        CTAudioCDTime cTAudioCDTime;
        synchronized (monitor()) {
            check_orphaned();
            cTAudioCDTime = (CTAudioCDTime) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAudioCDTime;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAudioCD
    public CTAudioCDTime getEnd() {
        CTAudioCDTime cTAudioCDTime;
        synchronized (monitor()) {
            check_orphaned();
            cTAudioCDTime = (CTAudioCDTime) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTAudioCDTime == null) {
                cTAudioCDTime = null;
            }
        }
        return cTAudioCDTime;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAudioCD
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAudioCD
    public CTAudioCDTime getSt() {
        CTAudioCDTime cTAudioCDTime;
        synchronized (monitor()) {
            check_orphaned();
            cTAudioCDTime = (CTAudioCDTime) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTAudioCDTime == null) {
                cTAudioCDTime = null;
            }
        }
        return cTAudioCDTime;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAudioCD
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAudioCD
    public void setEnd(CTAudioCDTime cTAudioCDTime) {
        generatedSetterHelperImpl(cTAudioCDTime, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAudioCD
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAudioCD
    public void setSt(CTAudioCDTime cTAudioCDTime) {
        generatedSetterHelperImpl(cTAudioCDTime, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAudioCD
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }
}
