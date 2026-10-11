package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.UserShapesDocument;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing;

/* loaded from: classes14.dex */
public class UserShapesDocumentImpl extends XmlComplexContentImpl implements UserShapesDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, "userShapes")};
    private static final long serialVersionUID = 1;

    public UserShapesDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.UserShapesDocument
    public CTDrawing addNewUserShapes() {
        CTDrawing cTDrawing;
        synchronized (monitor()) {
            check_orphaned();
            cTDrawing = (CTDrawing) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDrawing;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.UserShapesDocument
    public CTDrawing getUserShapes() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.UserShapesDocument
    public void setUserShapes(CTDrawing cTDrawing) {
        generatedSetterHelperImpl(cTDrawing, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
