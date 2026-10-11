package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTRevisionInsertSheet extends XmlObject {
    public static final DocumentFactory<CTRevisionInsertSheet> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRevisionInsertSheet> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrevisioninsertsheet6d6atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getName();

    long getRId();

    boolean getRa();

    long getSheetId();

    long getSheetPosition();

    boolean getUa();

    boolean isSetRa();

    boolean isSetUa();

    void setName(String str);

    void setRId(long j);

    void setRa(boolean z);

    void setSheetId(long j);

    void setSheetPosition(long j);

    void setUa(boolean z);

    void unsetRa();

    void unsetUa();

    STXstring xgetName();

    XmlUnsignedInt xgetRId();

    XmlBoolean xgetRa();

    XmlUnsignedInt xgetSheetId();

    XmlUnsignedInt xgetSheetPosition();

    XmlBoolean xgetUa();

    void xsetName(STXstring sTXstring);

    void xsetRId(XmlUnsignedInt xmlUnsignedInt);

    void xsetRa(XmlBoolean xmlBoolean);

    void xsetSheetId(XmlUnsignedInt xmlUnsignedInt);

    void xsetSheetPosition(XmlUnsignedInt xmlUnsignedInt);

    void xsetUa(XmlBoolean xmlBoolean);
}
