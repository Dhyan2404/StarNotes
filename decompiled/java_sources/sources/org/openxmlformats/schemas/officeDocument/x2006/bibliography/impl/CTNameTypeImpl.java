package org.openxmlformats.schemas.officeDocument.x2006.bibliography.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameListType;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameType;

/* loaded from: classes14.dex */
public class CTNameTypeImpl extends XmlComplexContentImpl implements CTNameType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "NameList")};
    private static final long serialVersionUID = 1;

    public CTNameTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameType
    public CTNameListType addNewNameList() {
        CTNameListType cTNameListType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameListType = (CTNameListType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTNameListType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameType
    public CTNameListType getNameList() {
        CTNameListType cTNameListType;
        synchronized (monitor()) {
            check_orphaned();
            cTNameListType = (CTNameListType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTNameListType == null) {
                cTNameListType = null;
            }
        }
        return cTNameListType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTNameType
    public void setNameList(CTNameListType cTNameListType) {
        generatedSetterHelperImpl(cTNameListType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
