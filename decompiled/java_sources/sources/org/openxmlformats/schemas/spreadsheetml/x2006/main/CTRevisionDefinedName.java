package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTRevisionDefinedName extends XmlObject {
    public static final DocumentFactory<CTRevisionDefinedName> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRevisionDefinedName> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrevisiondefinednamec9f8type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    String getComment();

    String getCustomMenu();

    boolean getCustomView();

    String getDescription();

    CTExtensionList getExtLst();

    String getFormula();

    boolean getFunction();

    short getFunctionGroupId();

    String getHelp();

    boolean getHidden();

    long getLocalSheetId();

    String getName();

    String getOldComment();

    String getOldCustomMenu();

    String getOldDescription();

    String getOldFormula();

    boolean getOldFunction();

    short getOldFunctionGroupId();

    String getOldHelp();

    boolean getOldHidden();

    short getOldShortcutKey();

    String getOldStatusBar();

    long getRId();

    boolean getRa();

    short getShortcutKey();

    String getStatusBar();

    boolean getUa();

    boolean isSetComment();

    boolean isSetCustomMenu();

    boolean isSetCustomView();

    boolean isSetDescription();

    boolean isSetExtLst();

    boolean isSetFormula();

    boolean isSetFunction();

    boolean isSetFunctionGroupId();

    boolean isSetHelp();

    boolean isSetHidden();

    boolean isSetLocalSheetId();

    boolean isSetOldComment();

    boolean isSetOldCustomMenu();

    boolean isSetOldDescription();

    boolean isSetOldFormula();

    boolean isSetOldFunction();

    boolean isSetOldFunctionGroupId();

    boolean isSetOldHelp();

    boolean isSetOldHidden();

    boolean isSetOldShortcutKey();

    boolean isSetOldStatusBar();

    boolean isSetRa();

    boolean isSetShortcutKey();

    boolean isSetStatusBar();

    boolean isSetUa();

    void setComment(String str);

    void setCustomMenu(String str);

    void setCustomView(boolean z);

    void setDescription(String str);

    void setExtLst(CTExtensionList cTExtensionList);

    void setFormula(String str);

    void setFunction(boolean z);

    void setFunctionGroupId(short s);

    void setHelp(String str);

    void setHidden(boolean z);

    void setLocalSheetId(long j);

    void setName(String str);

    void setOldComment(String str);

    void setOldCustomMenu(String str);

    void setOldDescription(String str);

    void setOldFormula(String str);

    void setOldFunction(boolean z);

    void setOldFunctionGroupId(short s);

    void setOldHelp(String str);

    void setOldHidden(boolean z);

    void setOldShortcutKey(short s);

    void setOldStatusBar(String str);

    void setRId(long j);

    void setRa(boolean z);

    void setShortcutKey(short s);

    void setStatusBar(String str);

    void setUa(boolean z);

    void unsetComment();

    void unsetCustomMenu();

    void unsetCustomView();

    void unsetDescription();

    void unsetExtLst();

    void unsetFormula();

    void unsetFunction();

    void unsetFunctionGroupId();

    void unsetHelp();

    void unsetHidden();

    void unsetLocalSheetId();

    void unsetOldComment();

    void unsetOldCustomMenu();

    void unsetOldDescription();

    void unsetOldFormula();

    void unsetOldFunction();

    void unsetOldFunctionGroupId();

    void unsetOldHelp();

    void unsetOldHidden();

    void unsetOldShortcutKey();

    void unsetOldStatusBar();

    void unsetRa();

    void unsetShortcutKey();

    void unsetStatusBar();

    void unsetUa();

    STXstring xgetComment();

    STXstring xgetCustomMenu();

    XmlBoolean xgetCustomView();

    STXstring xgetDescription();

    STFormula xgetFormula();

    XmlBoolean xgetFunction();

    XmlUnsignedByte xgetFunctionGroupId();

    STXstring xgetHelp();

    XmlBoolean xgetHidden();

    XmlUnsignedInt xgetLocalSheetId();

    STXstring xgetName();

    STXstring xgetOldComment();

    STXstring xgetOldCustomMenu();

    STXstring xgetOldDescription();

    STFormula xgetOldFormula();

    XmlBoolean xgetOldFunction();

    XmlUnsignedByte xgetOldFunctionGroupId();

    STXstring xgetOldHelp();

    XmlBoolean xgetOldHidden();

    XmlUnsignedByte xgetOldShortcutKey();

    STXstring xgetOldStatusBar();

    XmlUnsignedInt xgetRId();

    XmlBoolean xgetRa();

    XmlUnsignedByte xgetShortcutKey();

    STXstring xgetStatusBar();

    XmlBoolean xgetUa();

    void xsetComment(STXstring sTXstring);

    void xsetCustomMenu(STXstring sTXstring);

    void xsetCustomView(XmlBoolean xmlBoolean);

    void xsetDescription(STXstring sTXstring);

    void xsetFormula(STFormula sTFormula);

    void xsetFunction(XmlBoolean xmlBoolean);

    void xsetFunctionGroupId(XmlUnsignedByte xmlUnsignedByte);

    void xsetHelp(STXstring sTXstring);

    void xsetHidden(XmlBoolean xmlBoolean);

    void xsetLocalSheetId(XmlUnsignedInt xmlUnsignedInt);

    void xsetName(STXstring sTXstring);

    void xsetOldComment(STXstring sTXstring);

    void xsetOldCustomMenu(STXstring sTXstring);

    void xsetOldDescription(STXstring sTXstring);

    void xsetOldFormula(STFormula sTFormula);

    void xsetOldFunction(XmlBoolean xmlBoolean);

    void xsetOldFunctionGroupId(XmlUnsignedByte xmlUnsignedByte);

    void xsetOldHelp(STXstring sTXstring);

    void xsetOldHidden(XmlBoolean xmlBoolean);

    void xsetOldShortcutKey(XmlUnsignedByte xmlUnsignedByte);

    void xsetOldStatusBar(STXstring sTXstring);

    void xsetRId(XmlUnsignedInt xmlUnsignedInt);

    void xsetRa(XmlBoolean xmlBoolean);

    void xsetShortcutKey(XmlUnsignedByte xmlUnsignedByte);

    void xsetStatusBar(STXstring sTXstring);

    void xsetUa(XmlBoolean xmlBoolean);
}
