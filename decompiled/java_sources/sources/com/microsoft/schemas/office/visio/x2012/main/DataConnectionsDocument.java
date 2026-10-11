package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DataConnectionsDocument extends XmlObject {
    public static final DocumentFactory<DataConnectionsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DataConnectionsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "dataconnections083bdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    DataConnectionsType addNewDataConnections();

    DataConnectionsType getDataConnections();

    void setDataConnections(DataConnectionsType dataConnectionsType);
}
