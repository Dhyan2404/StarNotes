package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnPos;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumFmt;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumRestart;

/* loaded from: classes16.dex */
public class CTEdnPropsImpl extends XmlComplexContentImpl implements CTEdnProps {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "pos"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "numFmt"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "numStart"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "numRestart")};
    private static final long serialVersionUID = 1;

    public CTEdnPropsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public CTNumFmt addNewNumFmt() {
        CTNumFmt cTNumFmt;
        synchronized (monitor()) {
            check_orphaned();
            cTNumFmt = (CTNumFmt) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTNumFmt;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public CTNumRestart addNewNumRestart() {
        CTNumRestart cTNumRestart;
        synchronized (monitor()) {
            check_orphaned();
            cTNumRestart = (CTNumRestart) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTNumRestart;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public CTDecimalNumber addNewNumStart() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public CTEdnPos addNewPos() {
        CTEdnPos cTEdnPos;
        synchronized (monitor()) {
            check_orphaned();
            cTEdnPos = (CTEdnPos) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEdnPos;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public CTNumFmt getNumFmt() {
        CTNumFmt cTNumFmt;
        synchronized (monitor()) {
            check_orphaned();
            cTNumFmt = (CTNumFmt) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTNumFmt == null) {
                cTNumFmt = null;
            }
        }
        return cTNumFmt;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public CTNumRestart getNumRestart() {
        CTNumRestart cTNumRestart;
        synchronized (monitor()) {
            check_orphaned();
            cTNumRestart = (CTNumRestart) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTNumRestart == null) {
                cTNumRestart = null;
            }
        }
        return cTNumRestart;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public CTDecimalNumber getNumStart() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTDecimalNumber == null) {
                cTDecimalNumber = null;
            }
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public CTEdnPos getPos() {
        CTEdnPos cTEdnPos;
        synchronized (monitor()) {
            check_orphaned();
            cTEdnPos = (CTEdnPos) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTEdnPos == null) {
                cTEdnPos = null;
            }
        }
        return cTEdnPos;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public boolean isSetNumFmt() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public boolean isSetNumRestart() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public boolean isSetNumStart() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public boolean isSetPos() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public void setNumFmt(CTNumFmt cTNumFmt) {
        generatedSetterHelperImpl(cTNumFmt, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public void setNumRestart(CTNumRestart cTNumRestart) {
        generatedSetterHelperImpl(cTNumRestart, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public void setNumStart(CTDecimalNumber cTDecimalNumber) {
        generatedSetterHelperImpl(cTDecimalNumber, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public void setPos(CTEdnPos cTEdnPos) {
        generatedSetterHelperImpl(cTEdnPos, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public void unsetNumFmt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public void unsetNumRestart() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public void unsetNumStart() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnProps
    public void unsetPos() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
