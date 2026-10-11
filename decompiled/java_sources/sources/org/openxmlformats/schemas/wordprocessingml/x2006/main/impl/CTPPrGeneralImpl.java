package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrChange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrGeneral;

/* loaded from: classes16.dex */
public class CTPPrGeneralImpl extends CTPPrBaseImpl implements CTPPrGeneral {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "pPrChange")};
    private static final long serialVersionUID = 1;

    public CTPPrGeneralImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrGeneral
    public CTPPrChange addNewPPrChange() {
        CTPPrChange cTPPrChange;
        synchronized (monitor()) {
            check_orphaned();
            cTPPrChange = (CTPPrChange) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPPrChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrGeneral
    public CTPPrChange getPPrChange() {
        CTPPrChange cTPPrChange;
        synchronized (monitor()) {
            check_orphaned();
            cTPPrChange = (CTPPrChange) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPPrChange == null) {
                cTPPrChange = null;
            }
        }
        return cTPPrChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrGeneral
    public boolean isSetPPrChange() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrGeneral
    public void setPPrChange(CTPPrChange cTPPrChange) {
        generatedSetterHelperImpl(cTPPrChange, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrGeneral
    public void unsetPPrChange() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
