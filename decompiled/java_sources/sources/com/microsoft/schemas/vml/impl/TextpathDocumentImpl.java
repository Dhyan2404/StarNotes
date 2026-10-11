package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTTextPath;
import com.microsoft.schemas.vml.TextpathDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class TextpathDocumentImpl extends XmlComplexContentImpl implements TextpathDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "textpath")};
    private static final long serialVersionUID = 1;

    public TextpathDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.TextpathDocument
    public CTTextPath addNewTextpath() {
        CTTextPath cTTextPath;
        synchronized (monitor()) {
            check_orphaned();
            cTTextPath = (CTTextPath) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTextPath;
    }

    @Override // com.microsoft.schemas.vml.TextpathDocument
    public CTTextPath getTextpath() {
        CTTextPath cTTextPath;
        synchronized (monitor()) {
            check_orphaned();
            cTTextPath = (CTTextPath) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTextPath == null) {
                cTTextPath = null;
            }
        }
        return cTTextPath;
    }

    @Override // com.microsoft.schemas.vml.TextpathDocument
    public void setTextpath(CTTextPath cTTextPath) {
        generatedSetterHelperImpl(cTTextPath, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
