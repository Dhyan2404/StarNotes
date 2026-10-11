package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTMathPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.MathPrDocument;

/* loaded from: classes14.dex */
public class MathPrDocumentImpl extends XmlComplexContentImpl implements MathPrDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "mathPr")};
    private static final long serialVersionUID = 1;

    public MathPrDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.MathPrDocument
    public CTMathPr addNewMathPr() {
        CTMathPr cTMathPr;
        synchronized (monitor()) {
            check_orphaned();
            cTMathPr = (CTMathPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMathPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.MathPrDocument
    public CTMathPr getMathPr() {
        CTMathPr cTMathPr;
        synchronized (monitor()) {
            check_orphaned();
            cTMathPr = (CTMathPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTMathPr == null) {
                cTMathPr = null;
            }
        }
        return cTMathPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.MathPrDocument
    public void setMathPr(CTMathPr cTMathPr) {
        generatedSetterHelperImpl(cTMathPr, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
