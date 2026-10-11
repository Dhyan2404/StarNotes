package com.microsoft.schemas.office.word.impl;

import com.microsoft.schemas.office.word.CTWrap;
import com.microsoft.schemas.office.word.WrapDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class WrapDocumentImpl extends XmlComplexContentImpl implements WrapDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:word", "wrap")};
    private static final long serialVersionUID = 1;

    public WrapDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.WrapDocument
    public CTWrap addNewWrap() {
        CTWrap cTWrap;
        synchronized (monitor()) {
            check_orphaned();
            cTWrap = (CTWrap) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTWrap;
    }

    @Override // com.microsoft.schemas.office.word.WrapDocument
    public CTWrap getWrap() {
        CTWrap cTWrap;
        synchronized (monitor()) {
            check_orphaned();
            cTWrap = (CTWrap) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTWrap == null) {
                cTWrap = null;
            }
        }
        return cTWrap;
    }

    @Override // com.microsoft.schemas.office.word.WrapDocument
    public void setWrap(CTWrap cTWrap) {
        generatedSetterHelperImpl(cTWrap, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
