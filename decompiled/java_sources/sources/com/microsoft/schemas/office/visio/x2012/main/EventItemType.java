package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.XmlUnsignedShort;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface EventItemType extends XmlObject {
    public static final DocumentFactory<EventItemType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<EventItemType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "eventitemtype417etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getAction();

    boolean getEnabled();

    int getEventCode();

    long getID();

    String getTarget();

    String getTargetArgs();

    boolean isSetEnabled();

    void setAction(int i);

    void setEnabled(boolean z);

    void setEventCode(int i);

    void setID(long j);

    void setTarget(String str);

    void setTargetArgs(String str);

    void unsetEnabled();

    XmlUnsignedShort xgetAction();

    XmlBoolean xgetEnabled();

    XmlUnsignedShort xgetEventCode();

    XmlUnsignedInt xgetID();

    XmlString xgetTarget();

    XmlString xgetTargetArgs();

    void xsetAction(XmlUnsignedShort xmlUnsignedShort);

    void xsetEnabled(XmlBoolean xmlBoolean);

    void xsetEventCode(XmlUnsignedShort xmlUnsignedShort);

    void xsetID(XmlUnsignedInt xmlUnsignedInt);

    void xsetTarget(XmlString xmlString);

    void xsetTargetArgs(XmlString xmlString);
}
