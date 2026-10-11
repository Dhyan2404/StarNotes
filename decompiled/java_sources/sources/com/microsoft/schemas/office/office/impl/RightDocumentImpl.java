package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTStrokeChild;
import com.microsoft.schemas.office.office.RightDocument;
import com.sunia.HTREnginev2.gon;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class RightDocumentImpl extends XmlComplexContentImpl implements RightDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", gon.f71288n0)};
    private static final long serialVersionUID = 1;

    public RightDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.RightDocument
    public CTStrokeChild addNewRight() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.office.office.RightDocument
    public CTStrokeChild getRight() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTStrokeChild == null) {
                cTStrokeChild = null;
            }
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.office.office.RightDocument
    public void setRight(CTStrokeChild cTStrokeChild) {
        generatedSetterHelperImpl(cTStrokeChild, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
