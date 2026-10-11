package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ConnectanglesAttribute extends XmlObject {
    public static final DocumentFactory<ConnectanglesAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ConnectanglesAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "connectangles61ddattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getConnectangles();

    boolean isSetConnectangles();

    void setConnectangles(String str);

    void unsetConnectangles();

    XmlString xgetConnectangles();

    void xsetConnectangles(XmlString xmlString);
}
