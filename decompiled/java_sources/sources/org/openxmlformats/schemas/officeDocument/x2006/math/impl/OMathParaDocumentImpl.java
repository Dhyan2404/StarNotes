package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara;
import org.openxmlformats.schemas.officeDocument.x2006.math.OMathParaDocument;

/* loaded from: classes14.dex */
public class OMathParaDocumentImpl extends XmlComplexContentImpl implements OMathParaDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "oMathPara")};
    private static final long serialVersionUID = 1;

    public OMathParaDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.OMathParaDocument
    public CTOMathPara addNewOMathPara() {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.OMathParaDocument
    public CTOMathPara getOMathPara() {
        CTOMathPara cTOMathPara;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathPara = (CTOMathPara) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTOMathPara == null) {
                cTOMathPara = null;
            }
        }
        return cTOMathPara;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.OMathParaDocument
    public void setOMathPara(CTOMathPara cTOMathPara) {
        generatedSetterHelperImpl(cTOMathPara, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
