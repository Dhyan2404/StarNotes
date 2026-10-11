package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ConnectlocsAttribute extends XmlObject {
    public static final DocumentFactory<ConnectlocsAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ConnectlocsAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "connectlocs11d0attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getConnectlocs();

    boolean isSetConnectlocs();

    void setConnectlocs(String str);

    void unsetConnectlocs();

    XmlString xgetConnectlocs();

    void xsetConnectlocs(XmlString xmlString);
}
