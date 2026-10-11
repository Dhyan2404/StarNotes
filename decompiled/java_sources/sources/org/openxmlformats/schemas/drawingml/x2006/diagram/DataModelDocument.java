package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface DataModelDocument extends XmlObject {
    public static final DocumentFactory<DataModelDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DataModelDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "datamodelf6b0doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDataModel addNewDataModel();

    CTDataModel getDataModel();

    void setDataModel(CTDataModel cTDataModel);
}
