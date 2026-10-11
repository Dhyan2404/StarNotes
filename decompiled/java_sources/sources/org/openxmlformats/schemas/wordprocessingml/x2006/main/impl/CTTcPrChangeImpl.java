package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTcPrChange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTcPrInner;

/* loaded from: classes16.dex */
public class CTTcPrChangeImpl extends CTTrackChangeImpl implements CTTcPrChange {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "tcPr")};
    private static final long serialVersionUID = 1;

    public CTTcPrChangeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTcPrChange
    public CTTcPrInner addNewTcPr() {
        CTTcPrInner cTTcPrInner;
        synchronized (monitor()) {
            check_orphaned();
            cTTcPrInner = (CTTcPrInner) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTcPrInner;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTcPrChange
    public CTTcPrInner getTcPr() {
        CTTcPrInner cTTcPrInner;
        synchronized (monitor()) {
            check_orphaned();
            cTTcPrInner = (CTTcPrInner) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTcPrInner == null) {
                cTTcPrInner = null;
            }
        }
        return cTTcPrInner;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTcPrChange
    public void setTcPr(CTTcPrInner cTTcPrInner) {
        generatedSetterHelperImpl(cTTcPrInner, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
