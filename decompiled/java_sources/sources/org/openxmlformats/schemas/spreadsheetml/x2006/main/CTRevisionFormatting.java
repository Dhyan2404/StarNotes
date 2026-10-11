package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTRevisionFormatting extends XmlObject {
    public static final DocumentFactory<CTRevisionFormatting> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRevisionFormatting> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrevisionformattingb229type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDxf addNewDxf();

    CTExtensionList addNewExtLst();

    CTDxf getDxf();

    CTExtensionList getExtLst();

    long getLength();

    boolean getS();

    long getSheetId();

    List getSqref();

    long getStart();

    boolean getXfDxf();

    boolean isSetDxf();

    boolean isSetExtLst();

    boolean isSetLength();

    boolean isSetS();

    boolean isSetStart();

    boolean isSetXfDxf();

    void setDxf(CTDxf cTDxf);

    void setExtLst(CTExtensionList cTExtensionList);

    void setLength(long j);

    void setS(boolean z);

    void setSheetId(long j);

    void setSqref(List list);

    void setStart(long j);

    void setXfDxf(boolean z);

    void unsetDxf();

    void unsetExtLst();

    void unsetLength();

    void unsetS();

    void unsetStart();

    void unsetXfDxf();

    XmlUnsignedInt xgetLength();

    XmlBoolean xgetS();

    XmlUnsignedInt xgetSheetId();

    STSqref xgetSqref();

    XmlUnsignedInt xgetStart();

    XmlBoolean xgetXfDxf();

    void xsetLength(XmlUnsignedInt xmlUnsignedInt);

    void xsetS(XmlBoolean xmlBoolean);

    void xsetSheetId(XmlUnsignedInt xmlUnsignedInt);

    void xsetSqref(STSqref sTSqref);

    void xsetStart(XmlUnsignedInt xmlUnsignedInt);

    void xsetXfDxf(XmlBoolean xmlBoolean);
}
