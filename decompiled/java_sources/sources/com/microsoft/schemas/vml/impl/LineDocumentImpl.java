package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTLine;
import com.microsoft.schemas.vml.LineDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class LineDocumentImpl extends XmlComplexContentImpl implements LineDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "line")};
    private static final long serialVersionUID = 1;

    public LineDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.LineDocument
    public CTLine addNewLine() {
        CTLine cTLine;
        synchronized (monitor()) {
            check_orphaned();
            cTLine = (CTLine) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTLine;
    }

    @Override // com.microsoft.schemas.vml.LineDocument
    public CTLine getLine() {
        CTLine cTLine;
        synchronized (monitor()) {
            check_orphaned();
            cTLine = (CTLine) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTLine == null) {
                cTLine = null;
            }
        }
        return cTLine;
    }

    @Override // com.microsoft.schemas.vml.LineDocument
    public void setLine(CTLine cTLine) {
        generatedSetterHelperImpl(cTLine, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
