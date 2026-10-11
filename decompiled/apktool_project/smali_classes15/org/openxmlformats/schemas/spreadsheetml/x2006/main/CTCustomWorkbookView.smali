.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomWorkbookView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomWorkbookView;",
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

    const-string v2, "ctcustomworkbookview31d9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomWorkbookView;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomWorkbookView;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getActiveSheetId()J
.end method

.method public abstract getAutoUpdate()Z
.end method

.method public abstract getChangesSavedWin()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getGuid()Ljava/lang/String;
.end method

.method public abstract getIncludeHiddenRowCol()Z
.end method

.method public abstract getIncludePrintSettings()Z
.end method

.method public abstract getMaximized()Z
.end method

.method public abstract getMergeInterval()J
.end method

.method public abstract getMinimized()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOnlySync()Z
.end method

.method public abstract getPersonalView()Z
.end method

.method public abstract getShowComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;
.end method

.method public abstract getShowFormulaBar()Z
.end method

.method public abstract getShowHorizontalScroll()Z
.end method

.method public abstract getShowObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STObjects$Enum;
.end method

.method public abstract getShowSheetTabs()Z
.end method

.method public abstract getShowStatusbar()Z
.end method

.method public abstract getShowVerticalScroll()Z
.end method

.method public abstract getTabRatio()J
.end method

.method public abstract getWindowHeight()J
.end method

.method public abstract getWindowWidth()J
.end method

.method public abstract getXWindow()I
.end method

.method public abstract getYWindow()I
.end method

.method public abstract isSetAutoUpdate()Z
.end method

.method public abstract isSetChangesSavedWin()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetIncludeHiddenRowCol()Z
.end method

.method public abstract isSetIncludePrintSettings()Z
.end method

.method public abstract isSetMaximized()Z
.end method

.method public abstract isSetMergeInterval()Z
.end method

.method public abstract isSetMinimized()Z
.end method

.method public abstract isSetOnlySync()Z
.end method

.method public abstract isSetPersonalView()Z
.end method

.method public abstract isSetShowComments()Z
.end method

.method public abstract isSetShowFormulaBar()Z
.end method

.method public abstract isSetShowHorizontalScroll()Z
.end method

.method public abstract isSetShowObjects()Z
.end method

.method public abstract isSetShowSheetTabs()Z
.end method

.method public abstract isSetShowStatusbar()Z
.end method

.method public abstract isSetShowVerticalScroll()Z
.end method

.method public abstract isSetTabRatio()Z
.end method

.method public abstract isSetXWindow()Z
.end method

.method public abstract isSetYWindow()Z
.end method

.method public abstract setActiveSheetId(J)V
.end method

.method public abstract setAutoUpdate(Z)V
.end method

.method public abstract setChangesSavedWin(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setGuid(Ljava/lang/String;)V
.end method

.method public abstract setIncludeHiddenRowCol(Z)V
.end method

.method public abstract setIncludePrintSettings(Z)V
.end method

.method public abstract setMaximized(Z)V
.end method

.method public abstract setMergeInterval(J)V
.end method

.method public abstract setMinimized(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setOnlySync(Z)V
.end method

.method public abstract setPersonalView(Z)V
.end method

.method public abstract setShowComments(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;)V
.end method

.method public abstract setShowFormulaBar(Z)V
.end method

.method public abstract setShowHorizontalScroll(Z)V
.end method

.method public abstract setShowObjects(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STObjects$Enum;)V
.end method

.method public abstract setShowSheetTabs(Z)V
.end method

.method public abstract setShowStatusbar(Z)V
.end method

.method public abstract setShowVerticalScroll(Z)V
.end method

.method public abstract setTabRatio(J)V
.end method

.method public abstract setWindowHeight(J)V
.end method

.method public abstract setWindowWidth(J)V
.end method

.method public abstract setXWindow(I)V
.end method

.method public abstract setYWindow(I)V
.end method

.method public abstract unsetAutoUpdate()V
.end method

.method public abstract unsetChangesSavedWin()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetIncludeHiddenRowCol()V
.end method

.method public abstract unsetIncludePrintSettings()V
.end method

.method public abstract unsetMaximized()V
.end method

.method public abstract unsetMergeInterval()V
.end method

.method public abstract unsetMinimized()V
.end method

.method public abstract unsetOnlySync()V
.end method

.method public abstract unsetPersonalView()V
.end method

.method public abstract unsetShowComments()V
.end method

.method public abstract unsetShowFormulaBar()V
.end method

.method public abstract unsetShowHorizontalScroll()V
.end method

.method public abstract unsetShowObjects()V
.end method

.method public abstract unsetShowSheetTabs()V
.end method

.method public abstract unsetShowStatusbar()V
.end method

.method public abstract unsetShowVerticalScroll()V
.end method

.method public abstract unsetTabRatio()V
.end method

.method public abstract unsetXWindow()V
.end method

.method public abstract unsetYWindow()V
.end method

.method public abstract xgetActiveSheetId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetAutoUpdate()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetChangesSavedWin()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetGuid()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetIncludeHiddenRowCol()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIncludePrintSettings()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMaximized()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMergeInterval()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMinimized()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetOnlySync()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPersonalView()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments;
.end method

.method public abstract xgetShowFormulaBar()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowHorizontalScroll()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STObjects;
.end method

.method public abstract xgetShowSheetTabs()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowStatusbar()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowVerticalScroll()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTabRatio()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetWindowHeight()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetWindowWidth()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetXWindow()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetYWindow()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xsetActiveSheetId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetAutoUpdate(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetChangesSavedWin(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetGuid(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetIncludeHiddenRowCol(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIncludePrintSettings(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMaximized(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMergeInterval(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMinimized(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetOnlySync(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPersonalView(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowComments(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments;)V
.end method

.method public abstract xsetShowFormulaBar(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowHorizontalScroll(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowObjects(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STObjects;)V
.end method

.method public abstract xsetShowSheetTabs(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowStatusbar(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowVerticalScroll(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTabRatio(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetWindowHeight(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetWindowWidth(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetXWindow(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetYWindow(Lorg/apache/xmlbeans/XmlInt;)V
.end method
