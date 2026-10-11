package com.microsoft.schemas.office.drawing.x2008.diagram.impl;

import com.microsoft.schemas.office.drawing.x2008.diagram.CTDataModelExtBlock;
import com.microsoft.schemas.office.drawing.x2008.diagram.DataModelExtDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class DataModelExtDocumentImpl extends XmlComplexContentImpl implements DataModelExtDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/drawing/2008/diagram", "dataModelExt")};
    private static final long serialVersionUID = 1;

    public DataModelExtDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.DataModelExtDocument
    public CTDataModelExtBlock addNewDataModelExt() {
        CTDataModelExtBlock cTDataModelExtBlock;
        synchronized (monitor()) {
            check_orphaned();
            cTDataModelExtBlock = (CTDataModelExtBlock) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDataModelExtBlock;
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.DataModelExtDocument
    public CTDataModelExtBlock getDataModelExt() {
        CTDataModelExtBlock cTDataModelExtBlock;
        synchronized (monitor()) {
            check_orphaned();
            cTDataModelExtBlock = (CTDataModelExtBlock) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDataModelExtBlock == null) {
                cTDataModelExtBlock = null;
            }
        }
        return cTDataModelExtBlock;
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.DataModelExtDocument
    public void setDataModelExt(CTDataModelExtBlock cTDataModelExtBlock) {
        generatedSetterHelperImpl(cTDataModelExtBlock, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
