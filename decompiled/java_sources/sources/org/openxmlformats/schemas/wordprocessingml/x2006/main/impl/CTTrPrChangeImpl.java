package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrBase;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrChange;

/* loaded from: classes16.dex */
public class CTTrPrChangeImpl extends CTTrackChangeImpl implements CTTrPrChange {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "trPr")};
    private static final long serialVersionUID = 1;

    public CTTrPrChangeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrChange
    public CTTrPrBase addNewTrPr() {
        CTTrPrBase cTTrPrBase;
        synchronized (monitor()) {
            check_orphaned();
            cTTrPrBase = (CTTrPrBase) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTrPrBase;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrChange
    public CTTrPrBase getTrPr() {
        CTTrPrBase cTTrPrBase;
        synchronized (monitor()) {
            check_orphaned();
            cTTrPrBase = (CTTrPrBase) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTrPrBase == null) {
                cTTrPrBase = null;
            }
        }
        return cTTrPrBase;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPrChange
    public void setTrPr(CTTrPrBase cTTrPrBase) {
        generatedSetterHelperImpl(cTTrPrBase, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
