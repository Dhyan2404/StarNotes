package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorMapping;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorScheme;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeAndMapping;

/* loaded from: classes14.dex */
public class CTColorSchemeAndMappingImpl extends XmlComplexContentImpl implements CTColorSchemeAndMapping {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "clrScheme"), new QName(XSSFRelation.NS_DRAWINGML, "clrMap")};
    private static final long serialVersionUID = 1;

    public CTColorSchemeAndMappingImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeAndMapping
    public CTColorMapping addNewClrMap() {
        CTColorMapping cTColorMapping;
        synchronized (monitor()) {
            check_orphaned();
            cTColorMapping = (CTColorMapping) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTColorMapping;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeAndMapping
    public CTColorScheme addNewClrScheme() {
        CTColorScheme cTColorScheme;
        synchronized (monitor()) {
            check_orphaned();
            cTColorScheme = (CTColorScheme) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTColorScheme;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeAndMapping
    public CTColorMapping getClrMap() {
        CTColorMapping cTColorMapping;
        synchronized (monitor()) {
            check_orphaned();
            cTColorMapping = (CTColorMapping) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTColorMapping == null) {
                cTColorMapping = null;
            }
        }
        return cTColorMapping;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeAndMapping
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeAndMapping
    public boolean isSetClrMap() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeAndMapping
    public void setClrMap(CTColorMapping cTColorMapping) {
        generatedSetterHelperImpl(cTColorMapping, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeAndMapping
    public void setClrScheme(CTColorScheme cTColorScheme) {
        generatedSetterHelperImpl(cTColorScheme, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeAndMapping
    public void unsetClrMap() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
