package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTRevisionSheetRename extends XmlObject {
    public static final DocumentFactory<CTRevisionSheetRename> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRevisionSheetRename> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrevisionsheetrename8a01type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTExtensionList getExtLst();

    String getNewName();

    String getOldName();

    long getRId();

    boolean getRa();

    long getSheetId();

    boolean getUa();

    boolean isSetExtLst();

    boolean isSetRa();

    boolean isSetUa();

    void setExtLst(CTExtensionList cTExtensionList);

    void setNewName(String str);

    void setOldName(String str);

    void setRId(long j);

    void setRa(boolean z);

    void setSheetId(long j);

    void setUa(boolean z);

    void unsetExtLst();

    void unsetRa();

    void unsetUa();

    STXstring xgetNewName();

    STXstring xgetOldName();

    XmlUnsignedInt xgetRId();

    XmlBoolean xgetRa();

    XmlUnsignedInt xgetSheetId();

    XmlBoolean xgetUa();

    void xsetNewName(STXstring sTXstring);

    void xsetOldName(STXstring sTXstring);

    void xsetRId(XmlUnsignedInt xmlUnsignedInt);

    void xsetRa(XmlBoolean xmlBoolean);

    void xsetSheetId(XmlUnsignedInt xmlUnsignedInt);

    void xsetUa(XmlBoolean xmlBoolean);
}
