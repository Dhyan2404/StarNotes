package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTDbPr extends XmlObject {
    public static final DocumentFactory<CTDbPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDbPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdbpra069type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getCommand();

    long getCommandType();

    String getConnection();

    String getServerCommand();

    boolean isSetCommand();

    boolean isSetCommandType();

    boolean isSetServerCommand();

    void setCommand(String str);

    void setCommandType(long j);

    void setConnection(String str);

    void setServerCommand(String str);

    void unsetCommand();

    void unsetCommandType();

    void unsetServerCommand();

    STXstring xgetCommand();

    XmlUnsignedInt xgetCommandType();

    STXstring xgetConnection();

    STXstring xgetServerCommand();

    void xsetCommand(STXstring sTXstring);

    void xsetCommandType(XmlUnsignedInt xmlUnsignedInt);

    void xsetConnection(STXstring sTXstring);

    void xsetServerCommand(STXstring sTXstring);
}
