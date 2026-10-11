package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtContentRow;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow;

/* loaded from: classes16.dex */
public class CTSdtRowImpl extends XmlComplexContentImpl implements CTSdtRow {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "sdtPr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "sdtEndPr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "sdtContent")};
    private static final long serialVersionUID = 1;

    public CTSdtRowImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow
    public CTSdtContentRow addNewSdtContent() {
        CTSdtContentRow cTSdtContentRow;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtContentRow = (CTSdtContentRow) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTSdtContentRow;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow
    public CTSdtEndPr addNewSdtEndPr() {
        CTSdtEndPr cTSdtEndPr;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtEndPr = (CTSdtEndPr) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSdtEndPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow
    public CTSdtPr addNewSdtPr() {
        CTSdtPr cTSdtPr;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtPr = (CTSdtPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSdtPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow
    public CTSdtContentRow getSdtContent() {
        CTSdtContentRow cTSdtContentRow;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtContentRow = (CTSdtContentRow) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTSdtContentRow == null) {
                cTSdtContentRow = null;
            }
        }
        return cTSdtContentRow;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow
    public CTSdtEndPr getSdtEndPr() {
        CTSdtEndPr cTSdtEndPr;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtEndPr = (CTSdtEndPr) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTSdtEndPr == null) {
                cTSdtEndPr = null;
            }
        }
        return cTSdtEndPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow
    public CTSdtPr getSdtPr() {
        CTSdtPr cTSdtPr;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtPr = (CTSdtPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSdtPr == null) {
                cTSdtPr = null;
            }
        }
        return cTSdtPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow
    public boolean isSetSdtContent() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow
    public boolean isSetSdtEndPr() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow
    public boolean isSetSdtPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow
    public void setSdtContent(CTSdtContentRow cTSdtContentRow) {
        generatedSetterHelperImpl(cTSdtContentRow, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow
    public void setSdtEndPr(CTSdtEndPr cTSdtEndPr) {
        generatedSetterHelperImpl(cTSdtEndPr, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow
    public void setSdtPr(CTSdtPr cTSdtPr) {
        generatedSetterHelperImpl(cTSdtPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow
    public void unsetSdtContent() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow
    public void unsetSdtEndPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow
    public void unsetSdtPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
