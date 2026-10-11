.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;",
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

    const-string v2, "ctffdataaa7etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCalcOnExit()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewCheckBox()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;
.end method

.method public abstract addNewDdList()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;
.end method

.method public abstract addNewEnabled()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewEntryMacro()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract addNewExitMacro()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract addNewHelpText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFHelpText;
.end method

.method public abstract addNewLabel()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFName;
.end method

.method public abstract addNewStatusText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;
.end method

.method public abstract addNewTabIndex()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;
.end method

.method public abstract addNewTextInput()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFTextInput;
.end method

.method public abstract getCalcOnExitArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCalcOnExitArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCalcOnExitList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCheckBoxArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;
.end method

.method public abstract getCheckBoxArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;
.end method

.method public abstract getCheckBoxList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDdListArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;
.end method

.method public abstract getDdListArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;
.end method

.method public abstract getDdListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnabledArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getEnabledArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getEnabledList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntryMacroArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract getEntryMacroArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract getEntryMacroList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExitMacroArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract getExitMacroArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract getExitMacroList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHelpTextArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFHelpText;
.end method

.method public abstract getHelpTextArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFHelpText;
.end method

.method public abstract getHelpTextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFHelpText;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLabelArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getLabelArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getLabelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNameArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFName;
.end method

.method public abstract getNameArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFName;
.end method

.method public abstract getNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatusTextArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;
.end method

.method public abstract getStatusTextArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;
.end method

.method public abstract getStatusTextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTabIndexArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;
.end method

.method public abstract getTabIndexArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;
.end method

.method public abstract getTabIndexList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTextInputArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFTextInput;
.end method

.method public abstract getTextInputArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFTextInput;
.end method

.method public abstract getTextInputList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFTextInput;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCalcOnExit(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewCheckBox(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;
.end method

.method public abstract insertNewDdList(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;
.end method

.method public abstract insertNewEnabled(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewEntryMacro(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract insertNewExitMacro(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract insertNewHelpText(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFHelpText;
.end method

.method public abstract insertNewLabel(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract insertNewName(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFName;
.end method

.method public abstract insertNewStatusText(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;
.end method

.method public abstract insertNewTabIndex(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;
.end method

.method public abstract insertNewTextInput(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFTextInput;
.end method

.method public abstract removeCalcOnExit(I)V
.end method

.method public abstract removeCheckBox(I)V
.end method

.method public abstract removeDdList(I)V
.end method

.method public abstract removeEnabled(I)V
.end method

.method public abstract removeEntryMacro(I)V
.end method

.method public abstract removeExitMacro(I)V
.end method

.method public abstract removeHelpText(I)V
.end method

.method public abstract removeLabel(I)V
.end method

.method public abstract removeName(I)V
.end method

.method public abstract removeStatusText(I)V
.end method

.method public abstract removeTabIndex(I)V
.end method

.method public abstract removeTextInput(I)V
.end method

.method public abstract setCalcOnExitArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setCalcOnExitArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setCheckBoxArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;)V
.end method

.method public abstract setCheckBoxArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;)V
.end method

.method public abstract setDdListArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;)V
.end method

.method public abstract setDdListArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;)V
.end method

.method public abstract setEnabledArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setEnabledArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setEntryMacroArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;)V
.end method

.method public abstract setEntryMacroArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;)V
.end method

.method public abstract setExitMacroArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;)V
.end method

.method public abstract setExitMacroArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;)V
.end method

.method public abstract setHelpTextArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFHelpText;)V
.end method

.method public abstract setHelpTextArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFHelpText;)V
.end method

.method public abstract setLabelArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setLabelArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setNameArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFName;)V
.end method

.method public abstract setNameArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFName;)V
.end method

.method public abstract setStatusTextArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;)V
.end method

.method public abstract setStatusTextArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;)V
.end method

.method public abstract setTabIndexArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;)V
.end method

.method public abstract setTabIndexArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;)V
.end method

.method public abstract setTextInputArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFTextInput;)V
.end method

.method public abstract setTextInputArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFTextInput;)V
.end method

.method public abstract sizeOfCalcOnExitArray()I
.end method

.method public abstract sizeOfCheckBoxArray()I
.end method

.method public abstract sizeOfDdListArray()I
.end method

.method public abstract sizeOfEnabledArray()I
.end method

.method public abstract sizeOfEntryMacroArray()I
.end method

.method public abstract sizeOfExitMacroArray()I
.end method

.method public abstract sizeOfHelpTextArray()I
.end method

.method public abstract sizeOfLabelArray()I
.end method

.method public abstract sizeOfNameArray()I
.end method

.method public abstract sizeOfStatusTextArray()I
.end method

.method public abstract sizeOfTabIndexArray()I
.end method

.method public abstract sizeOfTextInputArray()I
.end method
