package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTDiagram;
import com.microsoft.schemas.office.office.DiagramDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class DiagramDocumentImpl extends XmlComplexContentImpl implements DiagramDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "diagram")};
    private static final long serialVersionUID = 1;

    public DiagramDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.DiagramDocument
    public CTDiagram addNewDiagram() {
        CTDiagram cTDiagram;
        synchronized (monitor()) {
            check_orphaned();
            cTDiagram = (CTDiagram) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDiagram;
    }

    @Override // com.microsoft.schemas.office.office.DiagramDocument
    public CTDiagram getDiagram() {
        CTDiagram cTDiagram;
        synchronized (monitor()) {
            check_orphaned();
            cTDiagram = (CTDiagram) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDiagram == null) {
                cTDiagram = null;
            }
        }
        return cTDiagram;
    }

    @Override // com.microsoft.schemas.office.office.DiagramDocument
    public void setDiagram(CTDiagram cTDiagram) {
        generatedSetterHelperImpl(cTDiagram, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
