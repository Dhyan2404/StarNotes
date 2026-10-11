package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTFormulas;
import com.microsoft.schemas.vml.FormulasDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class FormulasDocumentImpl extends XmlComplexContentImpl implements FormulasDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "formulas")};
    private static final long serialVersionUID = 1;

    public FormulasDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.FormulasDocument
    public CTFormulas addNewFormulas() {
        CTFormulas cTFormulas;
        synchronized (monitor()) {
            check_orphaned();
            cTFormulas = (CTFormulas) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFormulas;
    }

    @Override // com.microsoft.schemas.vml.FormulasDocument
    public CTFormulas getFormulas() {
        CTFormulas cTFormulas;
        synchronized (monitor()) {
            check_orphaned();
            cTFormulas = (CTFormulas) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTFormulas == null) {
                cTFormulas = null;
            }
        }
        return cTFormulas;
    }

    @Override // com.microsoft.schemas.vml.FormulasDocument
    public void setFormulas(CTFormulas cTFormulas) {
        generatedSetterHelperImpl(cTFormulas, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
