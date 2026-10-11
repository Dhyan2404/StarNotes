package com.microsoft.schemas.office.drawing.x2008.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DataModelExtDocument extends XmlObject {
    public static final DocumentFactory<DataModelExtDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DataModelExtDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "datamodelextdd97doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDataModelExtBlock addNewDataModelExt();

    CTDataModelExtBlock getDataModelExt();

    void setDataModelExt(CTDataModelExtBlock cTDataModelExtBlock);
}
