package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTRatio;
import org.openxmlformats.schemas.drawingml.x2006.main.CTScale2D;

/* loaded from: classes14.dex */
public class CTScale2DImpl extends XmlComplexContentImpl implements CTScale2D {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "sx"), new QName(XSSFRelation.NS_DRAWINGML, "sy")};
    private static final long serialVersionUID = 1;

    public CTScale2DImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScale2D
    public CTRatio addNewSx() {
        CTRatio cTRatio;
        synchronized (monitor()) {
            check_orphaned();
            cTRatio = (CTRatio) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRatio;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScale2D
    public CTRatio addNewSy() {
        CTRatio cTRatio;
        synchronized (monitor()) {
            check_orphaned();
            cTRatio = (CTRatio) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTRatio;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScale2D
    public CTRatio getSx() {
        CTRatio cTRatio;
        synchronized (monitor()) {
            check_orphaned();
            cTRatio = (CTRatio) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRatio == null) {
                cTRatio = null;
            }
        }
        return cTRatio;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScale2D
    public CTRatio getSy() {
        CTRatio cTRatio;
        synchronized (monitor()) {
            check_orphaned();
            cTRatio = (CTRatio) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTRatio == null) {
                cTRatio = null;
            }
        }
        return cTRatio;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScale2D
    public void setSx(CTRatio cTRatio) {
        generatedSetterHelperImpl(cTRatio, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScale2D
    public void setSy(CTRatio cTRatio) {
        generatedSetterHelperImpl(cTRatio, PROPERTY_QNAME[1], 0, (short) 1);
    }
}
