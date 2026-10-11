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
public interface MasterShortcutType extends XmlObject {
    public static final DocumentFactory<MasterShortcutType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<MasterShortcutType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "mastershortcuttype1ef1type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    IconType addNewIcon();

    int getAlignName();

    long getID();

    IconType getIcon();

    int getIconSize();

    boolean getIsCustomName();

    boolean getIsCustomNameU();

    int getMasterType();

    String getName();

    String getNameU();

    int getPatternFlags();

    String getPrompt();

    String getShortcutHelp();

    String getShortcutURL();

    boolean isSetAlignName();

    boolean isSetIcon();

    boolean isSetIconSize();

    boolean isSetIsCustomName();

    boolean isSetIsCustomNameU();

    boolean isSetMasterType();

    boolean isSetName();

    boolean isSetNameU();

    boolean isSetPatternFlags();

    boolean isSetPrompt();

    boolean isSetShortcutHelp();

    boolean isSetShortcutURL();

    void setAlignName(int i);

    void setID(long j);

    void setIcon(IconType iconType);

    void setIconSize(int i);

    void setIsCustomName(boolean z);

    void setIsCustomNameU(boolean z);

    void setMasterType(int i);

    void setName(String str);

    void setNameU(String str);

    void setPatternFlags(int i);

    void setPrompt(String str);

    void setShortcutHelp(String str);

    void setShortcutURL(String str);

    void unsetAlignName();

    void unsetIcon();

    void unsetIconSize();

    void unsetIsCustomName();

    void unsetIsCustomNameU();

    void unsetMasterType();

    void unsetName();

    void unsetNameU();

    void unsetPatternFlags();

    void unsetPrompt();

    void unsetShortcutHelp();

    void unsetShortcutURL();

    XmlUnsignedShort xgetAlignName();

    XmlUnsignedInt xgetID();

    XmlUnsignedShort xgetIconSize();

    XmlBoolean xgetIsCustomName();

    XmlBoolean xgetIsCustomNameU();

    XmlUnsignedShort xgetMasterType();

    XmlString xgetName();

    XmlString xgetNameU();

    XmlUnsignedShort xgetPatternFlags();

    XmlString xgetPrompt();

    XmlString xgetShortcutHelp();

    XmlString xgetShortcutURL();

    void xsetAlignName(XmlUnsignedShort xmlUnsignedShort);

    void xsetID(XmlUnsignedInt xmlUnsignedInt);

    void xsetIconSize(XmlUnsignedShort xmlUnsignedShort);

    void xsetIsCustomName(XmlBoolean xmlBoolean);

    void xsetIsCustomNameU(XmlBoolean xmlBoolean);

    void xsetMasterType(XmlUnsignedShort xmlUnsignedShort);

    void xsetName(XmlString xmlString);

    void xsetNameU(XmlString xmlString);

    void xsetPatternFlags(XmlUnsignedShort xmlUnsignedShort);

    void xsetPrompt(XmlString xmlString);

    void xsetShortcutHelp(XmlString xmlString);

    void xsetShortcutURL(XmlString xmlString);
}
