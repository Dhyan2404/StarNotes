package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPatternFill;

/* loaded from: classes15.dex */
public class CTFillImpl extends XmlComplexContentImpl implements CTFill {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "patternFill"), new QName(XSSFRelation.NS_SPREADSHEETML, "gradientFill")};
    private static final long serialVersionUID = 1;

    public CTFillImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill
    public CTGradientFill addNewGradientFill() {
        CTGradientFill cTGradientFill;
        synchronized (monitor()) {
            check_orphaned();
            cTGradientFill = (CTGradientFill) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTGradientFill;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill
    public CTPatternFill addNewPatternFill() {
        CTPatternFill cTPatternFill;
        synchronized (monitor()) {
            check_orphaned();
            cTPatternFill = (CTPatternFill) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPatternFill;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill
    public CTGradientFill getGradientFill() {
        CTGradientFill cTGradientFill;
        synchronized (monitor()) {
            check_orphaned();
            cTGradientFill = (CTGradientFill) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTGradientFill == null) {
                cTGradientFill = null;
            }
        }
        return cTGradientFill;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill
    public CTPatternFill getPatternFill() {
        CTPatternFill cTPatternFill;
        synchronized (monitor()) {
            check_orphaned();
            cTPatternFill = (CTPatternFill) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPatternFill == null) {
                cTPatternFill = null;
            }
        }
        return cTPatternFill;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill
    public boolean isSetGradientFill() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill
    public boolean isSetPatternFill() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill
    public void setGradientFill(CTGradientFill cTGradientFill) {
        generatedSetterHelperImpl(cTGradientFill, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill
    public void setPatternFill(CTPatternFill cTPatternFill) {
        generatedSetterHelperImpl(cTPatternFill, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill
    public void unsetGradientFill() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill
    public void unsetPatternFill() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
