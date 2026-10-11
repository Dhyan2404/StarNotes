package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartCategory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartGallery;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;

/* loaded from: classes16.dex */
public class CTDocPartCategoryImpl extends XmlComplexContentImpl implements CTDocPartCategory {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "name"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "gallery")};
    private static final long serialVersionUID = 1;

    public CTDocPartCategoryImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartCategory
    public CTDocPartGallery addNewGallery() {
        CTDocPartGallery cTDocPartGallery;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartGallery = (CTDocPartGallery) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTDocPartGallery;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartCategory
    public CTString addNewName() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartCategory
    public CTDocPartGallery getGallery() {
        CTDocPartGallery cTDocPartGallery;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartGallery = (CTDocPartGallery) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTDocPartGallery == null) {
                cTDocPartGallery = null;
            }
        }
        return cTDocPartGallery;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartCategory
    public CTString getName() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartCategory
    public void setGallery(CTDocPartGallery cTDocPartGallery) {
        generatedSetterHelperImpl(cTDocPartGallery, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartCategory
    public void setName(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
