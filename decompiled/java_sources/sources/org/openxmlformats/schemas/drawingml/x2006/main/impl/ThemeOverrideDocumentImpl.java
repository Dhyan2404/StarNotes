package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStylesOverride;
import org.openxmlformats.schemas.drawingml.x2006.main.ThemeOverrideDocument;

/* loaded from: classes14.dex */
public class ThemeOverrideDocumentImpl extends XmlComplexContentImpl implements ThemeOverrideDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "themeOverride")};
    private static final long serialVersionUID = 1;

    public ThemeOverrideDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.ThemeOverrideDocument
    public CTBaseStylesOverride addNewThemeOverride() {
        CTBaseStylesOverride cTBaseStylesOverride;
        synchronized (monitor()) {
            check_orphaned();
            cTBaseStylesOverride = (CTBaseStylesOverride) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBaseStylesOverride;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.ThemeOverrideDocument
    public CTBaseStylesOverride getThemeOverride() {
        CTBaseStylesOverride cTBaseStylesOverride;
        synchronized (monitor()) {
            check_orphaned();
            cTBaseStylesOverride = (CTBaseStylesOverride) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTBaseStylesOverride == null) {
                cTBaseStylesOverride = null;
            }
        }
        return cTBaseStylesOverride;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.ThemeOverrideDocument
    public void setThemeOverride(CTBaseStylesOverride cTBaseStylesOverride) {
        generatedSetterHelperImpl(cTBaseStylesOverride, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
