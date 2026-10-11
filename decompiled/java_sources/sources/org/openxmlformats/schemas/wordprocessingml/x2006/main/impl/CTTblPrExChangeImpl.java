package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrExBase;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrExChange;

/* loaded from: classes16.dex */
public class CTTblPrExChangeImpl extends CTTrackChangeImpl implements CTTblPrExChange {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "tblPrEx")};
    private static final long serialVersionUID = 1;

    public CTTblPrExChangeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrExChange
    public CTTblPrExBase addNewTblPrEx() {
        CTTblPrExBase cTTblPrExBase;
        synchronized (monitor()) {
            check_orphaned();
            cTTblPrExBase = (CTTblPrExBase) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTblPrExBase;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrExChange
    public CTTblPrExBase getTblPrEx() {
        CTTblPrExBase cTTblPrExBase;
        synchronized (monitor()) {
            check_orphaned();
            cTTblPrExBase = (CTTblPrExBase) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTblPrExBase == null) {
                cTTblPrExBase = null;
            }
        }
        return cTTblPrExBase;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrExChange
    public void setTblPrEx(CTTblPrExBase cTTblPrExBase) {
        generatedSetterHelperImpl(cTTblPrExBase, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
