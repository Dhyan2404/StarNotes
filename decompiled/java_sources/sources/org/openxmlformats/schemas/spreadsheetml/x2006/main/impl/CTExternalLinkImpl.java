package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeLink;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalBook;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleLink;

/* loaded from: classes15.dex */
public class CTExternalLinkImpl extends XmlComplexContentImpl implements CTExternalLink {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "externalBook"), new QName(XSSFRelation.NS_SPREADSHEETML, "ddeLink"), new QName(XSSFRelation.NS_SPREADSHEETML, "oleLink"), new QName(XSSFRelation.NS_SPREADSHEETML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTExternalLinkImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public CTDdeLink addNewDdeLink() {
        CTDdeLink cTDdeLink;
        synchronized (monitor()) {
            check_orphaned();
            cTDdeLink = (CTDdeLink) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTDdeLink;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public CTExternalBook addNewExternalBook() {
        CTExternalBook cTExternalBook;
        synchronized (monitor()) {
            check_orphaned();
            cTExternalBook = (CTExternalBook) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTExternalBook;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public CTOleLink addNewOleLink() {
        CTOleLink cTOleLink;
        synchronized (monitor()) {
            check_orphaned();
            cTOleLink = (CTOleLink) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTOleLink;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public CTDdeLink getDdeLink() {
        CTDdeLink cTDdeLink;
        synchronized (monitor()) {
            check_orphaned();
            cTDdeLink = (CTDdeLink) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTDdeLink == null) {
                cTDdeLink = null;
            }
        }
        return cTDdeLink;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public CTExternalBook getExternalBook() {
        CTExternalBook cTExternalBook;
        synchronized (monitor()) {
            check_orphaned();
            cTExternalBook = (CTExternalBook) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTExternalBook == null) {
                cTExternalBook = null;
            }
        }
        return cTExternalBook;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public CTOleLink getOleLink() {
        CTOleLink cTOleLink;
        synchronized (monitor()) {
            check_orphaned();
            cTOleLink = (CTOleLink) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTOleLink == null) {
                cTOleLink = null;
            }
        }
        return cTOleLink;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public boolean isSetDdeLink() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public boolean isSetExternalBook() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public boolean isSetOleLink() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public void setDdeLink(CTDdeLink cTDdeLink) {
        generatedSetterHelperImpl(cTDdeLink, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public void setExternalBook(CTExternalBook cTExternalBook) {
        generatedSetterHelperImpl(cTExternalBook, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public void setOleLink(CTOleLink cTOleLink) {
        generatedSetterHelperImpl(cTOleLink, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public void unsetDdeLink() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public void unsetExternalBook() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink
    public void unsetOleLink() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }
}
