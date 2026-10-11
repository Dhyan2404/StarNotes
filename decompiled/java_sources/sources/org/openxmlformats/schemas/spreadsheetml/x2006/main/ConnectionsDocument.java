package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface ConnectionsDocument extends XmlObject {
    public static final DocumentFactory<ConnectionsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ConnectionsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "connectionsbd20doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTConnections addNewConnections();

    CTConnections getConnections();

    void setConnections(CTConnections cTConnections);
}
