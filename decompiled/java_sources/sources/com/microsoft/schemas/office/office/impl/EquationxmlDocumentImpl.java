package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTEquationXml;
import com.microsoft.schemas.office.office.EquationxmlDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class EquationxmlDocumentImpl extends XmlComplexContentImpl implements EquationxmlDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "equationxml")};
    private static final long serialVersionUID = 1;

    public EquationxmlDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.EquationxmlDocument
    public CTEquationXml addNewEquationxml() {
        CTEquationXml cTEquationXml;
        synchronized (monitor()) {
            check_orphaned();
            cTEquationXml = (CTEquationXml) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEquationXml;
    }

    @Override // com.microsoft.schemas.office.office.EquationxmlDocument
    public CTEquationXml getEquationxml() {
        CTEquationXml cTEquationXml;
        synchronized (monitor()) {
            check_orphaned();
            cTEquationXml = (CTEquationXml) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTEquationXml == null) {
                cTEquationXml = null;
            }
        }
        return cTEquationXml;
    }

    @Override // com.microsoft.schemas.office.office.EquationxmlDocument
    public void setEquationxml(CTEquationXml cTEquationXml) {
        generatedSetterHelperImpl(cTEquationXml, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
