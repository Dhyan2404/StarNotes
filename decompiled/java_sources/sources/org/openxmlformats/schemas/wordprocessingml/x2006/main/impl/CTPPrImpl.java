package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrChange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPr;

/* loaded from: classes16.dex */
public class CTPPrImpl extends CTPPrBaseImpl implements CTPPr {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "rPr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "sectPr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "pPrChange")};
    private static final long serialVersionUID = 1;

    public CTPPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr
    public CTPPrChange addNewPPrChange() {
        CTPPrChange cTPPrChange;
        synchronized (monitor()) {
            check_orphaned();
            cTPPrChange = (CTPPrChange) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTPPrChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr
    public CTParaRPr addNewRPr() {
        CTParaRPr cTParaRPr;
        synchronized (monitor()) {
            check_orphaned();
            cTParaRPr = (CTParaRPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTParaRPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr
    public CTSectPr addNewSectPr() {
        CTSectPr cTSectPr;
        synchronized (monitor()) {
            check_orphaned();
            cTSectPr = (CTSectPr) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSectPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr
    public CTPPrChange getPPrChange() {
        CTPPrChange cTPPrChange;
        synchronized (monitor()) {
            check_orphaned();
            cTPPrChange = (CTPPrChange) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTPPrChange == null) {
                cTPPrChange = null;
            }
        }
        return cTPPrChange;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr
    public CTParaRPr getRPr() {
        CTParaRPr cTParaRPr;
        synchronized (monitor()) {
            check_orphaned();
            cTParaRPr = (CTParaRPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTParaRPr == null) {
                cTParaRPr = null;
            }
        }
        return cTParaRPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr
    public CTSectPr getSectPr() {
        CTSectPr cTSectPr;
        synchronized (monitor()) {
            check_orphaned();
            cTSectPr = (CTSectPr) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTSectPr == null) {
                cTSectPr = null;
            }
        }
        return cTSectPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr
    public boolean isSetPPrChange() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr
    public boolean isSetRPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr
    public boolean isSetSectPr() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr
    public void setPPrChange(CTPPrChange cTPPrChange) {
        generatedSetterHelperImpl(cTPPrChange, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr
    public void setRPr(CTParaRPr cTParaRPr) {
        generatedSetterHelperImpl(cTParaRPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr
    public void setSectPr(CTSectPr cTSectPr) {
        generatedSetterHelperImpl(cTSectPr, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr
    public void unsetPPrChange() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr
    public void unsetRPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr
    public void unsetSectPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
