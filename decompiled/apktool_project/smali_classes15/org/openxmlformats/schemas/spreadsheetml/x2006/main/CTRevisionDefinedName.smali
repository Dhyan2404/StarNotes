.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionDefinedName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionDefinedName;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctrevisiondefinednamec9f8type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionDefinedName;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionDefinedName;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getComment()Ljava/lang/String;
.end method

.method public abstract getCustomMenu()Ljava/lang/String;
.end method

.method public abstract getCustomView()Z
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFormula()Ljava/lang/String;
.end method

.method public abstract getFunction()Z
.end method

.method public abstract getFunctionGroupId()S
.end method

.method public abstract getHelp()Ljava/lang/String;
.end method

.method public abstract getHidden()Z
.end method

.method public abstract getLocalSheetId()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOldComment()Ljava/lang/String;
.end method

.method public abstract getOldCustomMenu()Ljava/lang/String;
.end method

.method public abstract getOldDescription()Ljava/lang/String;
.end method

.method public abstract getOldFormula()Ljava/lang/String;
.end method

.method public abstract getOldFunction()Z
.end method

.method public abstract getOldFunctionGroupId()S
.end method

.method public abstract getOldHelp()Ljava/lang/String;
.end method

.method public abstract getOldHidden()Z
.end method

.method public abstract getOldShortcutKey()S
.end method

.method public abstract getOldStatusBar()Ljava/lang/String;
.end method

.method public abstract getRId()J
.end method

.method public abstract getRa()Z
.end method

.method public abstract getShortcutKey()S
.end method

.method public abstract getStatusBar()Ljava/lang/String;
.end method

.method public abstract getUa()Z
.end method

.method public abstract isSetComment()Z
.end method

.method public abstract isSetCustomMenu()Z
.end method

.method public abstract isSetCustomView()Z
.end method

.method public abstract isSetDescription()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFormula()Z
.end method

.method public abstract isSetFunction()Z
.end method

.method public abstract isSetFunctionGroupId()Z
.end method

.method public abstract isSetHelp()Z
.end method

.method public abstract isSetHidden()Z
.end method

.method public abstract isSetLocalSheetId()Z
.end method

.method public abstract isSetOldComment()Z
.end method

.method public abstract isSetOldCustomMenu()Z
.end method

.method public abstract isSetOldDescription()Z
.end method

.method public abstract isSetOldFormula()Z
.end method

.method public abstract isSetOldFunction()Z
.end method

.method public abstract isSetOldFunctionGroupId()Z
.end method

.method public abstract isSetOldHelp()Z
.end method

.method public abstract isSetOldHidden()Z
.end method

.method public abstract isSetOldShortcutKey()Z
.end method

.method public abstract isSetOldStatusBar()Z
.end method

.method public abstract isSetRa()Z
.end method

.method public abstract isSetShortcutKey()Z
.end method

.method public abstract isSetStatusBar()Z
.end method

.method public abstract isSetUa()Z
.end method

.method public abstract setComment(Ljava/lang/String;)V
.end method

.method public abstract setCustomMenu(Ljava/lang/String;)V
.end method

.method public abstract setCustomView(Z)V
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFormula(Ljava/lang/String;)V
.end method

.method public abstract setFunction(Z)V
.end method

.method public abstract setFunctionGroupId(S)V
.end method

.method public abstract setHelp(Ljava/lang/String;)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setLocalSheetId(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setOldComment(Ljava/lang/String;)V
.end method

.method public abstract setOldCustomMenu(Ljava/lang/String;)V
.end method

.method public abstract setOldDescription(Ljava/lang/String;)V
.end method

.method public abstract setOldFormula(Ljava/lang/String;)V
.end method

.method public abstract setOldFunction(Z)V
.end method

.method public abstract setOldFunctionGroupId(S)V
.end method

.method public abstract setOldHelp(Ljava/lang/String;)V
.end method

.method public abstract setOldHidden(Z)V
.end method

.method public abstract setOldShortcutKey(S)V
.end method

.method public abstract setOldStatusBar(Ljava/lang/String;)V
.end method

.method public abstract setRId(J)V
.end method

.method public abstract setRa(Z)V
.end method

.method public abstract setShortcutKey(S)V
.end method

.method public abstract setStatusBar(Ljava/lang/String;)V
.end method

.method public abstract setUa(Z)V
.end method

.method public abstract unsetComment()V
.end method

.method public abstract unsetCustomMenu()V
.end method

.method public abstract unsetCustomView()V
.end method

.method public abstract unsetDescription()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFormula()V
.end method

.method public abstract unsetFunction()V
.end method

.method public abstract unsetFunctionGroupId()V
.end method

.method public abstract unsetHelp()V
.end method

.method public abstract unsetHidden()V
.end method

.method public abstract unsetLocalSheetId()V
.end method

.method public abstract unsetOldComment()V
.end method

.method public abstract unsetOldCustomMenu()V
.end method

.method public abstract unsetOldDescription()V
.end method

.method public abstract unsetOldFormula()V
.end method

.method public abstract unsetOldFunction()V
.end method

.method public abstract unsetOldFunctionGroupId()V
.end method

.method public abstract unsetOldHelp()V
.end method

.method public abstract unsetOldHidden()V
.end method

.method public abstract unsetOldShortcutKey()V
.end method

.method public abstract unsetOldStatusBar()V
.end method

.method public abstract unsetRa()V
.end method

.method public abstract unsetShortcutKey()V
.end method

.method public abstract unsetStatusBar()V
.end method

.method public abstract unsetUa()V
.end method

.method public abstract xgetComment()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetCustomMenu()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetCustomView()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDescription()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetFormula()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;
.end method

.method public abstract xgetFunction()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFunctionGroupId()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetHelp()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetHidden()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLocalSheetId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetOldComment()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetOldCustomMenu()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetOldDescription()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetOldFormula()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;
.end method

.method public abstract xgetOldFunction()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetOldFunctionGroupId()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetOldHelp()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetOldHidden()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetOldShortcutKey()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetOldStatusBar()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetRId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRa()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShortcutKey()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetStatusBar()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetUa()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetComment(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetCustomMenu(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetCustomView(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDescription(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetFormula(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;)V
.end method

.method public abstract xsetFunction(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFunctionGroupId(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetHelp(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetHidden(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLocalSheetId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetOldComment(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetOldCustomMenu(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetOldDescription(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetOldFormula(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;)V
.end method

.method public abstract xsetOldFunction(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetOldFunctionGroupId(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetOldHelp(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetOldHidden(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetOldShortcutKey(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetOldStatusBar(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetRId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRa(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShortcutKey(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetStatusBar(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetUa(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
