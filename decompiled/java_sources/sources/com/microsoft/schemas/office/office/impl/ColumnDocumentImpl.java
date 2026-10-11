package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTStrokeChild;
import com.microsoft.schemas.office.office.ColumnDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ColumnDocumentImpl extends XmlComplexContentImpl implements ColumnDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "column")};
    private static final long serialVersionUID = 1;

    public ColumnDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.ColumnDocument
    public CTStrokeChild addNewColumn() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.office.office.ColumnDocument
    public CTStrokeChild getColumn() {
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

    @Override // com.microsoft.schemas.office.office.ColumnDocument
    public void setColumn(CTStrokeChild cTStrokeChild) {
        generatedSetterHelperImpl(cTStrokeChild, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
