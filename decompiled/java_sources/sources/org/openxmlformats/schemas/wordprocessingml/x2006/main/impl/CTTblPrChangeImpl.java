package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrBase;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrChange;

/* loaded from: classes16.dex */
public class CTTblPrChangeImpl extends CTTrackChangeImpl implements CTTblPrChange {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "tblPr")};
    private static final long serialVersionUID = 1;

    public CTTblPrChangeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrChange
    public CTTblPrBase addNewTblPr() {
        CTTblPrBase cTTblPrBase;
        synchronized (monitor()) {
            check_orphaned();
            cTTblPrBase = (CTTblPrBase) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTblPrBase;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrChange
    public CTTblPrBase getTblPr() {
        CTTblPrBase cTTblPrBase;
        synchronized (monitor()) {
            check_orphaned();
            cTTblPrBase = (CTTblPrBase) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTblPrBase == null) {
                cTTblPrBase = null;
            }
        }
        return cTTblPrBase;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrChange
    public void setTblPr(CTTblPrBase cTTblPrBase) {
        generatedSetterHelperImpl(cTTblPrBase, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
