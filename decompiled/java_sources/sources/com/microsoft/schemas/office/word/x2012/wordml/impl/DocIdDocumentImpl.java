package com.microsoft.schemas.office.word.x2012.wordml.impl;

import com.microsoft.schemas.office.word.x2012.wordml.CTGuid;
import com.microsoft.schemas.office.word.x2012.wordml.DocIdDocument;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class DocIdDocumentImpl extends XmlComplexContentImpl implements DocIdDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", EditorConstants.ARGS_DOC_ID)};
    private static final long serialVersionUID = 1;

    public DocIdDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.DocIdDocument
    public CTGuid addNewDocId() {
        CTGuid cTGuid;
        synchronized (monitor()) {
            check_orphaned();
            cTGuid = (CTGuid) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGuid;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.DocIdDocument
    public CTGuid getDocId() {
        CTGuid cTGuid;
        synchronized (monitor()) {
            check_orphaned();
            cTGuid = (CTGuid) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTGuid == null) {
                cTGuid = null;
            }
        }
        return cTGuid;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.DocIdDocument
    public void setDocId(CTGuid cTGuid) {
        generatedSetterHelperImpl(cTGuid, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
