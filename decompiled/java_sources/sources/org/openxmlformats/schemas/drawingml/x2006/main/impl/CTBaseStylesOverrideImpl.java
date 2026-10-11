package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorScheme;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFontScheme;
import org.openxmlformats.schemas.drawingml.x2006.main.CTStyleMatrix;

/* loaded from: classes14.dex */
public class CTBaseStylesOverrideImpl extends XmlComplexContentImpl implements CTBaseStylesOverride {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "clrScheme"), new QName(XSSFRelation.NS_DRAWINGML, "fontScheme"), new QName(XSSFRelation.NS_DRAWINGML, "fmtScheme")};
    private static final long serialVersionUID = 1;

    public CTBaseStylesOverrideImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride
    public CTColorScheme addNewClrScheme() {
        CTColorScheme cTColorScheme;
        synchronized (monitor()) {
            check_orphaned();
            cTColorScheme = (CTColorScheme) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTColorScheme;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride
    public CTStyleMatrix addNewFmtScheme() {
        CTStyleMatrix cTStyleMatrix;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleMatrix = (CTStyleMatrix) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTStyleMatrix;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride
    public CTFontScheme addNewFontScheme() {
        CTFontScheme cTFontScheme;
        synchronized (monitor()) {
            check_orphaned();
            cTFontScheme = (CTFontScheme) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTFontScheme;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride
    public CTColorScheme getClrScheme() {
        CTColorScheme cTColorScheme;
        synchronized (monitor()) {
            check_orphaned();
            cTColorScheme = (CTColorScheme) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTColorScheme == null) {
                cTColorScheme = null;
            }
        }
        return cTColorScheme;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride
    public CTStyleMatrix getFmtScheme() {
        CTStyleMatrix cTStyleMatrix;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleMatrix = (CTStyleMatrix) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTStyleMatrix == null) {
                cTStyleMatrix = null;
            }
        }
        return cTStyleMatrix;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride
    public CTFontScheme getFontScheme() {
        CTFontScheme cTFontScheme;
        synchronized (monitor()) {
            check_orphaned();
            cTFontScheme = (CTFontScheme) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTFontScheme == null) {
                cTFontScheme = null;
            }
        }
        return cTFontScheme;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride
    public boolean isSetClrScheme() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride
    public boolean isSetFmtScheme() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride
    public boolean isSetFontScheme() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride
    public void setClrScheme(CTColorScheme cTColorScheme) {
        generatedSetterHelperImpl(cTColorScheme, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride
    public void setFmtScheme(CTStyleMatrix cTStyleMatrix) {
        generatedSetterHelperImpl(cTStyleMatrix, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride
    public void setFontScheme(CTFontScheme cTFontScheme) {
        generatedSetterHelperImpl(cTFontScheme, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride
    public void unsetClrScheme() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride
    public void unsetFmtScheme() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride
    public void unsetFontScheme() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
