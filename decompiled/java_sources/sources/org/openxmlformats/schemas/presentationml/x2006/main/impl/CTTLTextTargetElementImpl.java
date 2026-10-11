package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTIndexRange;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTextTargetElement;

/* loaded from: classes14.dex */
public class CTTLTextTargetElementImpl extends XmlComplexContentImpl implements CTTLTextTargetElement {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "charRg"), new QName(XSSFRelation.NS_PRESENTATIONML, "pRg")};
    private static final long serialVersionUID = 1;

    public CTTLTextTargetElementImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTextTargetElement
    public CTIndexRange addNewCharRg() {
        CTIndexRange cTIndexRange;
        synchronized (monitor()) {
            check_orphaned();
            cTIndexRange = (CTIndexRange) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTIndexRange;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTextTargetElement
    public CTIndexRange addNewPRg() {
        CTIndexRange cTIndexRange;
        synchronized (monitor()) {
            check_orphaned();
            cTIndexRange = (CTIndexRange) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTIndexRange;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTextTargetElement
    public CTIndexRange getCharRg() {
        CTIndexRange cTIndexRange;
        synchronized (monitor()) {
            check_orphaned();
            cTIndexRange = (CTIndexRange) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTIndexRange == null) {
                cTIndexRange = null;
            }
        }
        return cTIndexRange;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTextTargetElement
    public CTIndexRange getPRg() {
        CTIndexRange cTIndexRange;
        synchronized (monitor()) {
            check_orphaned();
            cTIndexRange = (CTIndexRange) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTIndexRange == null) {
                cTIndexRange = null;
            }
        }
        return cTIndexRange;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTextTargetElement
    public boolean isSetCharRg() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTextTargetElement
    public boolean isSetPRg() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTextTargetElement
    public void setCharRg(CTIndexRange cTIndexRange) {
        generatedSetterHelperImpl(cTIndexRange, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTextTargetElement
    public void setPRg(CTIndexRange cTIndexRange) {
        generatedSetterHelperImpl(cTIndexRange, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTextTargetElement
    public void unsetCharRg() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTextTargetElement
    public void unsetPRg() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
