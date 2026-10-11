package com.microsoft.schemas.office.word.x2012.wordml.impl;

import com.microsoft.schemas.office.word.x2012.wordml.FootnoteColumnsDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber;

/* loaded from: classes7.dex */
public class FootnoteColumnsDocumentImpl extends XmlComplexContentImpl implements FootnoteColumnsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", "footnoteColumns")};
    private static final long serialVersionUID = 1;

    public FootnoteColumnsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.FootnoteColumnsDocument
    public CTDecimalNumber addNewFootnoteColumns() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDecimalNumber;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.FootnoteColumnsDocument
    public CTDecimalNumber getFootnoteColumns() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDecimalNumber == null) {
                cTDecimalNumber = null;
            }
        }
        return cTDecimalNumber;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.FootnoteColumnsDocument
    public void setFootnoteColumns(CTDecimalNumber cTDecimalNumber) {
        generatedSetterHelperImpl(cTDecimalNumber, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
