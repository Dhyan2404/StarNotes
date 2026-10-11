package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel;
import org.openxmlformats.schemas.drawingml.x2006.diagram.DataModelDocument;

/* loaded from: classes14.dex */
public class DataModelDocumentImpl extends XmlComplexContentImpl implements DataModelDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "dataModel")};
    private static final long serialVersionUID = 1;

    public DataModelDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.DataModelDocument
    public CTDataModel addNewDataModel() {
        CTDataModel cTDataModel;
        synchronized (monitor()) {
            check_orphaned();
            cTDataModel = (CTDataModel) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDataModel;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.DataModelDocument
    public CTDataModel getDataModel() {
        CTDataModel cTDataModel;
        synchronized (monitor()) {
            check_orphaned();
            cTDataModel = (CTDataModel) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDataModel == null) {
                cTDataModel = null;
            }
        }
        return cTDataModel;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.DataModelDocument
    public void setDataModel(CTDataModel cTDataModel) {
        generatedSetterHelperImpl(cTDataModel, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
