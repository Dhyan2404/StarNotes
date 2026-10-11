package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTConnections extends XmlObject {
    public static final DocumentFactory<CTConnections> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTConnections> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctconnectionsf5f4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTConnection addNewConnection();

    CTConnection getConnectionArray(int i);

    CTConnection[] getConnectionArray();

    List<CTConnection> getConnectionList();

    CTConnection insertNewConnection(int i);

    void removeConnection(int i);

    void setConnectionArray(int i, CTConnection cTConnection);

    void setConnectionArray(CTConnection[] cTConnectionArr);

    int sizeOfConnectionArray();
}
