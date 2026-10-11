package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.BottomDocument;
import com.microsoft.schemas.office.office.CTStrokeChild;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class BottomDocumentImpl extends XmlComplexContentImpl implements BottomDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "bottom")};
    private static final long serialVersionUID = 1;

    public BottomDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.BottomDocument
    public CTStrokeChild addNewBottom() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.office.office.BottomDocument
    public CTStrokeChild getBottom() {
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

    @Override // com.microsoft.schemas.office.office.BottomDocument
    public void setBottom(CTStrokeChild cTStrokeChild) {
        generatedSetterHelperImpl(cTStrokeChild, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
