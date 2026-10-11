package com.microsoft.schemas.office.office;

import com.microsoft.schemas.office.office.STConnectorType;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ConnectortypeAttribute extends XmlObject {
    public static final DocumentFactory<ConnectortypeAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ConnectortypeAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "connectortype127aattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STConnectorType.Enum getConnectortype();

    boolean isSetConnectortype();

    void setConnectortype(STConnectorType.Enum r1);

    void unsetConnectortype();

    STConnectorType xgetConnectortype();

    void xsetConnectortype(STConnectorType sTConnectorType);
}
