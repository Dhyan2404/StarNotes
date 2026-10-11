package com.microsoft.schemas.office.excel;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ClientDataDocument extends XmlObject {
    public static final DocumentFactory<ClientDataDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ClientDataDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "clientdata1847doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTClientData addNewClientData();

    CTClientData getClientData();

    void setClientData(CTClientData cTClientData);
}
