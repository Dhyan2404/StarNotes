package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrEx;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrExChange;

/* loaded from: classes16.dex */
public class CTTblPrExImpl extends CTTblPrExBaseImpl implements CTTblPrEx {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "tblPrExChange")};
    private static final long serialVersionUID = 1;

    public CTTblPrExImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrEx
    public CTTblPrExChange addNewTblPrExChange() {
        CTTblPrExChange cTTblPrExChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTblPrExChange = (CTTblPrExChange) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTblPrExChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrEx
    public CTTblPrExChange getTblPrExChange() {
        CTTblPrExChange cTTblPrExChange;
        synchronized (monitor()) {
            check_orphaned();
            cTTblPrExChange = (CTTblPrExChange) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTblPrExChange == null) {
                cTTblPrExChange = null;
            }
        }
        return cTTblPrExChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrEx
    public boolean isSetTblPrExChange() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrEx
    public void setTblPrExChange(CTTblPrExChange cTTblPrExChange) {
        generatedSetterHelperImpl(cTTblPrExChange, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrEx
    public void unsetTblPrExChange() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
