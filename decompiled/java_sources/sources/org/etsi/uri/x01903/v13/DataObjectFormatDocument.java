package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface DataObjectFormatDocument extends XmlObject {
    public static final DocumentFactory<DataObjectFormatDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DataObjectFormatDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "dataobjectformataea4doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    DataObjectFormatType addNewDataObjectFormat();

    DataObjectFormatType getDataObjectFormat();

    void setDataObjectFormat(DataObjectFormatType dataObjectFormatType);
}
