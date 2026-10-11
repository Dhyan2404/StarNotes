package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrBase;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrChange;

/* loaded from: classes16.dex */
public class CTSectPrChangeImpl extends CTTrackChangeImpl implements CTSectPrChange {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "sectPr")};
    private static final long serialVersionUID = 1;

    public CTSectPrChangeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrChange
    public CTSectPrBase addNewSectPr() {
        CTSectPrBase cTSectPrBase;
        synchronized (monitor()) {
            check_orphaned();
            cTSectPrBase = (CTSectPrBase) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSectPrBase;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrChange
    public CTSectPrBase getSectPr() {
        CTSectPrBase cTSectPrBase;
        synchronized (monitor()) {
            check_orphaned();
            cTSectPrBase = (CTSectPrBase) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSectPrBase == null) {
                cTSectPrBase = null;
            }
        }
        return cTSectPrBase;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrChange
    public boolean isSetSectPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrChange
    public void setSectPr(CTSectPrBase cTSectPrBase) {
        generatedSetterHelperImpl(cTSectPrBase, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPrChange
    public void unsetSectPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
