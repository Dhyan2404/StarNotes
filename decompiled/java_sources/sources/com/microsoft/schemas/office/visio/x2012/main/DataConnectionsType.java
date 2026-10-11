package com.microsoft.schemas.office.visio.x2012.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DataConnectionsType extends XmlObject {
    public static final DocumentFactory<DataConnectionsType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DataConnectionsType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "dataconnectionstypec600type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    DataConnectionType addNewDataConnection();

    DataConnectionType getDataConnectionArray(int i);

    DataConnectionType[] getDataConnectionArray();

    List<DataConnectionType> getDataConnectionList();

    long getNextID();

    DataConnectionType insertNewDataConnection(int i);

    void removeDataConnection(int i);

    void setDataConnectionArray(int i, DataConnectionType dataConnectionType);

    void setDataConnectionArray(DataConnectionType[] dataConnectionTypeArr);

    void setNextID(long j);

    int sizeOfDataConnectionArray();

    XmlUnsignedInt xgetNextID();

    void xsetNextID(XmlUnsignedInt xmlUnsignedInt);
}
