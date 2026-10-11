package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTLineProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTStyleMatrixReference;
import org.openxmlformats.schemas.drawingml.x2006.main.CTThemeableLineStyle;

/* loaded from: classes14.dex */
public class CTThemeableLineStyleImpl extends XmlComplexContentImpl implements CTThemeableLineStyle {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "ln"), new QName(XSSFRelation.NS_DRAWINGML, "lnRef")};
    private static final long serialVersionUID = 1;

    public CTThemeableLineStyleImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTThemeableLineStyle
    public CTLineProperties addNewLn() {
        CTLineProperties cTLineProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTLineProperties = (CTLineProperties) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTLineProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTThemeableLineStyle
    public CTStyleMatrixReference addNewLnRef() {
        CTStyleMatrixReference cTStyleMatrixReference;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleMatrixReference = (CTStyleMatrixReference) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTStyleMatrixReference;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTThemeableLineStyle
    public CTLineProperties getLn() {
        CTLineProperties cTLineProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTLineProperties = (CTLineProperties) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTLineProperties == null) {
                cTLineProperties = null;
            }
        }
        return cTLineProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTThemeableLineStyle
    public CTStyleMatrixReference getLnRef() {
        CTStyleMatrixReference cTStyleMatrixReference;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleMatrixReference = (CTStyleMatrixReference) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTStyleMatrixReference == null) {
                cTStyleMatrixReference = null;
            }
        }
        return cTStyleMatrixReference;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTThemeableLineStyle
    public boolean isSetLn() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTThemeableLineStyle
    public boolean isSetLnRef() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTThemeableLineStyle
    public void setLn(CTLineProperties cTLineProperties) {
        generatedSetterHelperImpl(cTLineProperties, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTThemeableLineStyle
    public void setLnRef(CTStyleMatrixReference cTStyleMatrixReference) {
        generatedSetterHelperImpl(cTStyleMatrixReference, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTThemeableLineStyle
    public void unsetLn() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTThemeableLineStyle
    public void unsetLnRef() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
