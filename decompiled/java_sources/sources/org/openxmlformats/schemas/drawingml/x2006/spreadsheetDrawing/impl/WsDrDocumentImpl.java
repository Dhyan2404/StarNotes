package org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.WsDrDocument;

/* loaded from: classes14.dex */
public class WsDrDocumentImpl extends XmlComplexContentImpl implements WsDrDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing", "wsDr")};
    private static final long serialVersionUID = 1;

    public WsDrDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.WsDrDocument
    public CTDrawing addNewWsDr() {
        CTDrawing cTDrawing;
        synchronized (monitor()) {
            check_orphaned();
            cTDrawing = (CTDrawing) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDrawing;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.WsDrDocument
    public CTDrawing getWsDr() {
        CTDrawing cTDrawing;
        synchronized (monitor()) {
            check_orphaned();
            cTDrawing = (CTDrawing) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDrawing == null) {
                cTDrawing = null;
            }
        }
        return cTDrawing;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.WsDrDocument
    public void setWsDr(CTDrawing cTDrawing) {
        generatedSetterHelperImpl(cTDrawing, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
