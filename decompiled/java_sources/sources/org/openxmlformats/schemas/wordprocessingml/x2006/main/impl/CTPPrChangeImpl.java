package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrBase;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrChange;

/* loaded from: classes16.dex */
public class CTPPrChangeImpl extends CTTrackChangeImpl implements CTPPrChange {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "pPr")};
    private static final long serialVersionUID = 1;

    public CTPPrChangeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrChange
    public CTPPrBase addNewPPr() {
        CTPPrBase cTPPrBase;
        synchronized (monitor()) {
            check_orphaned();
            cTPPrBase = (CTPPrBase) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPPrBase;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrChange
    public CTPPrBase getPPr() {
        CTPPrBase cTPPrBase;
        synchronized (monitor()) {
            check_orphaned();
            cTPPrBase = (CTPPrBase) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPPrBase == null) {
                cTPPrBase = null;
            }
        }
        return cTPPrBase;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrChange
    public void setPPr(CTPPrBase cTPPrBase) {
        generatedSetterHelperImpl(cTPPrBase, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
