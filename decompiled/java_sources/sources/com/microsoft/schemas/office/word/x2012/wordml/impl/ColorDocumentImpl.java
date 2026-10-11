package com.microsoft.schemas.office.word.x2012.wordml.impl;

import com.microsoft.schemas.office.word.x2012.wordml.ColorDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColor;

/* loaded from: classes7.dex */
public class ColorDocumentImpl extends XmlComplexContentImpl implements ColorDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", "color")};
    private static final long serialVersionUID = 1;

    public ColorDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.ColorDocument
    public CTColor addNewColor() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTColor;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.ColorDocument
    public CTColor getColor() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTColor == null) {
                cTColor = null;
            }
        }
        return cTColor;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.ColorDocument
    public void setColor(CTColor cTColor) {
        generatedSetterHelperImpl(cTColor, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
