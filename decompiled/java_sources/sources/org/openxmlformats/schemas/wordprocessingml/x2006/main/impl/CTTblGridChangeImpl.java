package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridBase;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridChange;

/* loaded from: classes16.dex */
public class CTTblGridChangeImpl extends CTMarkupImpl implements CTTblGridChange {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "tblGrid")};
    private static final long serialVersionUID = 1;

    public CTTblGridChangeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridChange
    public CTTblGridBase addNewTblGrid() {
        CTTblGridBase cTTblGridBase;
        synchronized (monitor()) {
            check_orphaned();
            cTTblGridBase = (CTTblGridBase) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTblGridBase;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridChange
    public CTTblGridBase getTblGrid() {
        CTTblGridBase cTTblGridBase;
        synchronized (monitor()) {
            check_orphaned();
            cTTblGridBase = (CTTblGridBase) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTblGridBase == null) {
                cTTblGridBase = null;
            }
        }
        return cTTblGridBase;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridChange
    public void setTblGrid(CTTblGridBase cTTblGridBase) {
        generatedSetterHelperImpl(cTTblGridBase, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
