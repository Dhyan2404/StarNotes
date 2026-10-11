package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STExternalConnectionType;

/* loaded from: classes15.dex */
public interface CTTextField extends XmlObject {
    public static final DocumentFactory<CTTextField> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTextField> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttextfield752ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getPosition();

    STExternalConnectionType.Enum getType();

    boolean isSetPosition();

    boolean isSetType();

    void setPosition(long j);

    void setType(STExternalConnectionType.Enum r1);

    void unsetPosition();

    void unsetType();

    XmlUnsignedInt xgetPosition();

    STExternalConnectionType xgetType();

    void xsetPosition(XmlUnsignedInt xmlUnsignedInt);

    void xsetType(STExternalConnectionType sTExternalConnectionType);
}
