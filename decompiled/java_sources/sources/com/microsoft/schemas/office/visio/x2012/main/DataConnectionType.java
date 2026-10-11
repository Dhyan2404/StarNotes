package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DataConnectionType extends XmlObject {
    public static final DocumentFactory<DataConnectionType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DataConnectionType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "dataconnectiontype1591type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getAlwaysUseConnectionFile();

    String getCommand();

    String getConnectionString();

    String getFileName();

    String getFriendlyName();

    long getID();

    long getTimeout();

    boolean isSetAlwaysUseConnectionFile();

    boolean isSetCommand();

    boolean isSetConnectionString();

    boolean isSetFriendlyName();

    boolean isSetTimeout();

    void setAlwaysUseConnectionFile(boolean z);

    void setCommand(String str);

    void setConnectionString(String str);

    void setFileName(String str);

    void setFriendlyName(String str);

    void setID(long j);

    void setTimeout(long j);

    void unsetAlwaysUseConnectionFile();

    void unsetCommand();

    void unsetConnectionString();

    void unsetFriendlyName();

    void unsetTimeout();

    XmlBoolean xgetAlwaysUseConnectionFile();

    XmlString xgetCommand();

    XmlString xgetConnectionString();

    XmlString xgetFileName();

    XmlString xgetFriendlyName();

    XmlUnsignedInt xgetID();

    XmlUnsignedInt xgetTimeout();

    void xsetAlwaysUseConnectionFile(XmlBoolean xmlBoolean);

    void xsetCommand(XmlString xmlString);

    void xsetConnectionString(XmlString xmlString);

    void xsetFileName(XmlString xmlString);

    void xsetFriendlyName(XmlString xmlString);

    void xsetID(XmlUnsignedInt xmlUnsignedInt);

    void xsetTimeout(XmlUnsignedInt xmlUnsignedInt);
}
