package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTRevisionAutoFormatting extends XmlObject {
    public static final DocumentFactory<CTRevisionAutoFormatting> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRevisionAutoFormatting> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrevisionautoformatting8c78type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getApplyAlignmentFormats();

    boolean getApplyBorderFormats();

    boolean getApplyFontFormats();

    boolean getApplyNumberFormats();

    boolean getApplyPatternFormats();

    boolean getApplyWidthHeightFormats();

    long getAutoFormatId();

    String getRef();

    long getSheetId();

    boolean isSetApplyAlignmentFormats();

    boolean isSetApplyBorderFormats();

    boolean isSetApplyFontFormats();

    boolean isSetApplyNumberFormats();

    boolean isSetApplyPatternFormats();

    boolean isSetApplyWidthHeightFormats();

    boolean isSetAutoFormatId();

    void setApplyAlignmentFormats(boolean z);

    void setApplyBorderFormats(boolean z);

    void setApplyFontFormats(boolean z);

    void setApplyNumberFormats(boolean z);

    void setApplyPatternFormats(boolean z);

    void setApplyWidthHeightFormats(boolean z);

    void setAutoFormatId(long j);

    void setRef(String str);

    void setSheetId(long j);

    void unsetApplyAlignmentFormats();

    void unsetApplyBorderFormats();

    void unsetApplyFontFormats();

    void unsetApplyNumberFormats();

    void unsetApplyPatternFormats();

    void unsetApplyWidthHeightFormats();

    void unsetAutoFormatId();

    XmlBoolean xgetApplyAlignmentFormats();

    XmlBoolean xgetApplyBorderFormats();

    XmlBoolean xgetApplyFontFormats();

    XmlBoolean xgetApplyNumberFormats();

    XmlBoolean xgetApplyPatternFormats();

    XmlBoolean xgetApplyWidthHeightFormats();

    XmlUnsignedInt xgetAutoFormatId();

    STRef xgetRef();

    XmlUnsignedInt xgetSheetId();

    void xsetApplyAlignmentFormats(XmlBoolean xmlBoolean);

    void xsetApplyBorderFormats(XmlBoolean xmlBoolean);

    void xsetApplyFontFormats(XmlBoolean xmlBoolean);

    void xsetApplyNumberFormats(XmlBoolean xmlBoolean);

    void xsetApplyPatternFormats(XmlBoolean xmlBoolean);

    void xsetApplyWidthHeightFormats(XmlBoolean xmlBoolean);

    void xsetAutoFormatId(XmlUnsignedInt xmlUnsignedInt);

    void xsetRef(STRef sTRef);

    void xsetSheetId(XmlUnsignedInt xmlUnsignedInt);
}
