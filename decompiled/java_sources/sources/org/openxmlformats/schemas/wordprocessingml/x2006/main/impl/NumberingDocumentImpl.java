package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.sun.org.apache.xml.internal.utils.res.XResourceBundle;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.NumberingDocument;

/* loaded from: classes16.dex */
public class NumberingDocumentImpl extends XmlComplexContentImpl implements NumberingDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, XResourceBundle.LANG_NUMBERING)};
    private static final long serialVersionUID = 1;

    public NumberingDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.NumberingDocument
    public CTNumbering addNewNumbering() {
        CTNumbering cTNumbering;
        synchronized (monitor()) {
            check_orphaned();
            cTNumbering = (CTNumbering) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTNumbering;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.NumberingDocument
    public CTNumbering getNumbering() {
        CTNumbering cTNumbering;
        synchronized (monitor()) {
            check_orphaned();
            cTNumbering = (CTNumbering) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTNumbering == null) {
                cTNumbering = null;
            }
        }
        return cTNumbering;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.NumberingDocument
    public void setNumbering(CTNumbering cTNumbering) {
        generatedSetterHelperImpl(cTNumbering, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
