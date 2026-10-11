package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTCellStyle extends XmlObject {
    public static final DocumentFactory<CTCellStyle> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCellStyle> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcellstyle584etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    long getBuiltinId();

    boolean getCustomBuiltin();

    CTExtensionList getExtLst();

    boolean getHidden();

    long getILevel();

    String getName();

    long getXfId();

    boolean isSetBuiltinId();

    boolean isSetCustomBuiltin();

    boolean isSetExtLst();

    boolean isSetHidden();

    boolean isSetILevel();

    boolean isSetName();

    void setBuiltinId(long j);

    void setCustomBuiltin(boolean z);

    void setExtLst(CTExtensionList cTExtensionList);

    void setHidden(boolean z);

    void setILevel(long j);

    void setName(String str);

    void setXfId(long j);

    void unsetBuiltinId();

    void unsetCustomBuiltin();

    void unsetExtLst();

    void unsetHidden();

    void unsetILevel();

    void unsetName();

    XmlUnsignedInt xgetBuiltinId();

    XmlBoolean xgetCustomBuiltin();

    XmlBoolean xgetHidden();

    XmlUnsignedInt xgetILevel();

    STXstring xgetName();

    STCellStyleXfId xgetXfId();

    void xsetBuiltinId(XmlUnsignedInt xmlUnsignedInt);

    void xsetCustomBuiltin(XmlBoolean xmlBoolean);

    void xsetHidden(XmlBoolean xmlBoolean);

    void xsetILevel(XmlUnsignedInt xmlUnsignedInt);

    void xsetName(STXstring sTXstring);

    void xsetXfId(STCellStyleXfId sTCellStyleXfId);
}
