package com.microsoft.schemas.office.word.x2012.wordml.impl;

import com.microsoft.schemas.office.word.x2012.wordml.CTSdtRepeatedSection;
import com.microsoft.schemas.office.word.x2012.wordml.RepeatingSectionDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class RepeatingSectionDocumentImpl extends XmlComplexContentImpl implements RepeatingSectionDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", "repeatingSection")};
    private static final long serialVersionUID = 1;

    public RepeatingSectionDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.RepeatingSectionDocument
    public CTSdtRepeatedSection addNewRepeatingSection() {
        CTSdtRepeatedSection cTSdtRepeatedSection;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtRepeatedSection = (CTSdtRepeatedSection) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSdtRepeatedSection;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.RepeatingSectionDocument
    public CTSdtRepeatedSection getRepeatingSection() {
        CTSdtRepeatedSection cTSdtRepeatedSection;
        synchronized (monitor()) {
            check_orphaned();
            cTSdtRepeatedSection = (CTSdtRepeatedSection) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSdtRepeatedSection == null) {
                cTSdtRepeatedSection = null;
            }
        }
        return cTSdtRepeatedSection;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.RepeatingSectionDocument
    public void setRepeatingSection(CTSdtRepeatedSection cTSdtRepeatedSection) {
        generatedSetterHelperImpl(cTSdtRepeatedSection, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
