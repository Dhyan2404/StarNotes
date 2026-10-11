package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTRevisionConflict extends XmlObject {
    public static final DocumentFactory<CTRevisionConflict> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRevisionConflict> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrevisionconflict9c56type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getRId();

    boolean getRa();

    long getSheetId();

    boolean getUa();

    boolean isSetRa();

    boolean isSetSheetId();

    boolean isSetUa();

    void setRId(long j);

    void setRa(boolean z);

    void setSheetId(long j);

    void setUa(boolean z);

    void unsetRa();

    void unsetSheetId();

    void unsetUa();

    XmlUnsignedInt xgetRId();

    XmlBoolean xgetRa();

    XmlUnsignedInt xgetSheetId();

    XmlBoolean xgetUa();

    void xsetRId(XmlUnsignedInt xmlUnsignedInt);

    void xsetRa(XmlBoolean xmlBoolean);

    void xsetSheetId(XmlUnsignedInt xmlUnsignedInt);

    void xsetUa(XmlBoolean xmlBoolean);
}
