package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTTextbox;
import com.microsoft.schemas.vml.TextboxDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class TextboxDocumentImpl extends XmlComplexContentImpl implements TextboxDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "textbox")};
    private static final long serialVersionUID = 1;

    public TextboxDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.TextboxDocument
    public CTTextbox addNewTextbox() {
        CTTextbox cTTextbox;
        synchronized (monitor()) {
            check_orphaned();
            cTTextbox = (CTTextbox) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTextbox;
    }

    @Override // com.microsoft.schemas.vml.TextboxDocument
    public CTTextbox getTextbox() {
        CTTextbox cTTextbox;
        synchronized (monitor()) {
            check_orphaned();
            cTTextbox = (CTTextbox) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTextbox == null) {
                cTTextbox = null;
            }
        }
        return cTTextbox;
    }

    @Override // com.microsoft.schemas.vml.TextboxDocument
    public void setTextbox(CTTextbox cTTextbox) {
        generatedSetterHelperImpl(cTTextbox, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
