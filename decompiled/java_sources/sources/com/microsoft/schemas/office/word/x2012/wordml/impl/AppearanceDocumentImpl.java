package com.microsoft.schemas.office.word.x2012.wordml.impl;

import com.microsoft.schemas.office.word.x2012.wordml.AppearanceDocument;
import com.microsoft.schemas.office.word.x2012.wordml.CTSdtAppearance;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class AppearanceDocumentImpl extends XmlComplexContentImpl implements AppearanceDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", "appearance")};
    private static final long serialVersionUID = 1;

    public AppearanceDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.AppearanceDocument
    public CTSdtAppearance addNewAppearance() {
        CTSdtAppearance cTSdtAppearance;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtAppearance = (CTSdtAppearance) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSdtAppearance;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.AppearanceDocument
    public CTSdtAppearance getAppearance() {
        CTSdtAppearance cTSdtAppearance;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtAppearance = (CTSdtAppearance) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSdtAppearance == null) {
                cTSdtAppearance = null;
            }
        }
        return cTSdtAppearance;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.AppearanceDocument
    public void setAppearance(CTSdtAppearance cTSdtAppearance) {
        generatedSetterHelperImpl(cTSdtAppearance, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
