package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSampleData extends XmlObject {
    public static final DocumentFactory<CTSampleData> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSampleData> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsampledata6dfdtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDataModel addNewDataModel();

    CTDataModel getDataModel();

    boolean getUseDef();

    boolean isSetDataModel();

    boolean isSetUseDef();

    void setDataModel(CTDataModel cTDataModel);

    void setUseDef(boolean z);

    void unsetDataModel();

    void unsetUseDef();

    XmlBoolean xgetUseDef();

    void xsetUseDef(XmlBoolean xmlBoolean);
}
