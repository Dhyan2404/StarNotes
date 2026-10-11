.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCompat;",
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

    const-string v2, "ctcompatee66type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCompat;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCompat;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAdjustLineHeightInTable()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewAlignTablesRowByRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewAllowSpaceOfSameStyleInTable()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewApplyBreakingRules()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewAutoSpaceLikeWord95()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewAutofitToFirstFixedWidthCell()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewBalanceSingleByteDoubleByteWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewCachedColBalance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewCompatSetting()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCompatSetting;
.end method

.method public abstract addNewConvMailMergeEsc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDisplayHangulFixedWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotAutofitConstrainedTables()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotBreakConstrainedForcedTable()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotBreakWrappedTables()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotExpandShiftReturn()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotLeaveBackslashAlone()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotSnapToGridInCell()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotSuppressIndentation()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotSuppressParagraphBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotUseEastAsianBreakRules()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotUseHTMLParagraphAutoSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotUseIndentAsNumberingTabStop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotVertAlignCellWithSp()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotVertAlignInTxbx()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotWrapTextWithPunct()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewFootnoteLayoutLikeWW8()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewForgetLastTabAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewGrowAutofit()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewLayoutRawTableWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewLayoutTableRowsApart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewLineWrapLikeWord6()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewMwSmallCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewNoColumnBalance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewNoExtraLineSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewNoLeading()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewNoSpaceRaiseLower()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewNoTabHangInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewPrintBodyTextBeforeHeader()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewPrintColBlack()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSelectFldWithFirstOrLastChar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewShapeLayoutLikeWW8()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewShowBreaksInFrames()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSpaceForUL()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSpacingInWholePoints()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSplitPgBreakAndParaMark()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSubFontBySize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSuppressBottomSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSuppressSpBfAfterPgBrk()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSuppressSpacingAtTopOfPage()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSuppressTopSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSuppressTopSpacingWP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSwapBordersFacingPages()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewTruncateFontHeightsLikeWP6()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewUlTrailSpace()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewUnderlineTabInNumList()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewUseAltKinsokuLineBreakRules()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewUseAnsiKerningPairs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewUseFELayout()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewUseNormalStyleForList()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewUsePrinterMetrics()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewUseSingleBorderforContiguousCells()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewUseWord2002TableStyleRules()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewUseWord97LineBreakRules()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewWpJustification()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewWpSpaceWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewWrapTrailSpaces()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getAdjustLineHeightInTable()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getAlignTablesRowByRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getAllowSpaceOfSameStyleInTable()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getApplyBreakingRules()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getAutoSpaceLikeWord95()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getAutofitToFirstFixedWidthCell()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getBalanceSingleByteDoubleByteWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCachedColBalance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCompatSettingArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCompatSetting;
.end method

.method public abstract getCompatSettingArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCompatSetting;
.end method

.method public abstract getCompatSettingList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCompatSetting;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConvMailMergeEsc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDisplayHangulFixedWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotAutofitConstrainedTables()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotBreakConstrainedForcedTable()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotBreakWrappedTables()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotExpandShiftReturn()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotLeaveBackslashAlone()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotSnapToGridInCell()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotSuppressIndentation()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotSuppressParagraphBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotUseEastAsianBreakRules()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotUseHTMLParagraphAutoSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotUseIndentAsNumberingTabStop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotVertAlignCellWithSp()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotVertAlignInTxbx()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotWrapTextWithPunct()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getFootnoteLayoutLikeWW8()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getForgetLastTabAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getGrowAutofit()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getLayoutRawTableWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getLayoutTableRowsApart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getLineWrapLikeWord6()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getMwSmallCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getNoColumnBalance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getNoExtraLineSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getNoLeading()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getNoSpaceRaiseLower()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getNoTabHangInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getPrintBodyTextBeforeHeader()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getPrintColBlack()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSelectFldWithFirstOrLastChar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getShapeLayoutLikeWW8()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getShowBreaksInFrames()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSpaceForUL()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSpacingInWholePoints()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSplitPgBreakAndParaMark()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSubFontBySize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSuppressBottomSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSuppressSpBfAfterPgBrk()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSuppressSpacingAtTopOfPage()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSuppressTopSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSuppressTopSpacingWP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSwapBordersFacingPages()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getTruncateFontHeightsLikeWP6()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getUlTrailSpace()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getUnderlineTabInNumList()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getUseAltKinsokuLineBreakRules()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getUseAnsiKerningPairs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getUseFELayout()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getUseNormalStyleForList()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getUsePrinterMetrics()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getUseSingleBorderforContiguousCells()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getUseWord2002TableStyleRules()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getUseWord97LineBreakRules()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getWpJustification()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getWpSpaceWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getWrapTrailSpaces()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewCompatSetting(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCompatSetting;
.end method

.method public abstract isSetAdjustLineHeightInTable()Z
.end method

.method public abstract isSetAlignTablesRowByRow()Z
.end method

.method public abstract isSetAllowSpaceOfSameStyleInTable()Z
.end method

.method public abstract isSetApplyBreakingRules()Z
.end method

.method public abstract isSetAutoSpaceLikeWord95()Z
.end method

.method public abstract isSetAutofitToFirstFixedWidthCell()Z
.end method

.method public abstract isSetBalanceSingleByteDoubleByteWidth()Z
.end method

.method public abstract isSetCachedColBalance()Z
.end method

.method public abstract isSetConvMailMergeEsc()Z
.end method

.method public abstract isSetDisplayHangulFixedWidth()Z
.end method

.method public abstract isSetDoNotAutofitConstrainedTables()Z
.end method

.method public abstract isSetDoNotBreakConstrainedForcedTable()Z
.end method

.method public abstract isSetDoNotBreakWrappedTables()Z
.end method

.method public abstract isSetDoNotExpandShiftReturn()Z
.end method

.method public abstract isSetDoNotLeaveBackslashAlone()Z
.end method

.method public abstract isSetDoNotSnapToGridInCell()Z
.end method

.method public abstract isSetDoNotSuppressIndentation()Z
.end method

.method public abstract isSetDoNotSuppressParagraphBorders()Z
.end method

.method public abstract isSetDoNotUseEastAsianBreakRules()Z
.end method

.method public abstract isSetDoNotUseHTMLParagraphAutoSpacing()Z
.end method

.method public abstract isSetDoNotUseIndentAsNumberingTabStop()Z
.end method

.method public abstract isSetDoNotVertAlignCellWithSp()Z
.end method

.method public abstract isSetDoNotVertAlignInTxbx()Z
.end method

.method public abstract isSetDoNotWrapTextWithPunct()Z
.end method

.method public abstract isSetFootnoteLayoutLikeWW8()Z
.end method

.method public abstract isSetForgetLastTabAlignment()Z
.end method

.method public abstract isSetGrowAutofit()Z
.end method

.method public abstract isSetLayoutRawTableWidth()Z
.end method

.method public abstract isSetLayoutTableRowsApart()Z
.end method

.method public abstract isSetLineWrapLikeWord6()Z
.end method

.method public abstract isSetMwSmallCaps()Z
.end method

.method public abstract isSetNoColumnBalance()Z
.end method

.method public abstract isSetNoExtraLineSpacing()Z
.end method

.method public abstract isSetNoLeading()Z
.end method

.method public abstract isSetNoSpaceRaiseLower()Z
.end method

.method public abstract isSetNoTabHangInd()Z
.end method

.method public abstract isSetPrintBodyTextBeforeHeader()Z
.end method

.method public abstract isSetPrintColBlack()Z
.end method

.method public abstract isSetSelectFldWithFirstOrLastChar()Z
.end method

.method public abstract isSetShapeLayoutLikeWW8()Z
.end method

.method public abstract isSetShowBreaksInFrames()Z
.end method

.method public abstract isSetSpaceForUL()Z
.end method

.method public abstract isSetSpacingInWholePoints()Z
.end method

.method public abstract isSetSplitPgBreakAndParaMark()Z
.end method

.method public abstract isSetSubFontBySize()Z
.end method

.method public abstract isSetSuppressBottomSpacing()Z
.end method

.method public abstract isSetSuppressSpBfAfterPgBrk()Z
.end method

.method public abstract isSetSuppressSpacingAtTopOfPage()Z
.end method

.method public abstract isSetSuppressTopSpacing()Z
.end method

.method public abstract isSetSuppressTopSpacingWP()Z
.end method

.method public abstract isSetSwapBordersFacingPages()Z
.end method

.method public abstract isSetTruncateFontHeightsLikeWP6()Z
.end method

.method public abstract isSetUlTrailSpace()Z
.end method

.method public abstract isSetUnderlineTabInNumList()Z
.end method

.method public abstract isSetUseAltKinsokuLineBreakRules()Z
.end method

.method public abstract isSetUseAnsiKerningPairs()Z
.end method

.method public abstract isSetUseFELayout()Z
.end method

.method public abstract isSetUseNormalStyleForList()Z
.end method

.method public abstract isSetUsePrinterMetrics()Z
.end method

.method public abstract isSetUseSingleBorderforContiguousCells()Z
.end method

.method public abstract isSetUseWord2002TableStyleRules()Z
.end method

.method public abstract isSetUseWord97LineBreakRules()Z
.end method

.method public abstract isSetWpJustification()Z
.end method

.method public abstract isSetWpSpaceWidth()Z
.end method

.method public abstract isSetWrapTrailSpaces()Z
.end method

.method public abstract removeCompatSetting(I)V
.end method

.method public abstract setAdjustLineHeightInTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setAlignTablesRowByRow(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setAllowSpaceOfSameStyleInTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setApplyBreakingRules(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setAutoSpaceLikeWord95(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setAutofitToFirstFixedWidthCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setBalanceSingleByteDoubleByteWidth(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setCachedColBalance(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setCompatSettingArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCompatSetting;)V
.end method

.method public abstract setCompatSettingArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCompatSetting;)V
.end method

.method public abstract setConvMailMergeEsc(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDisplayHangulFixedWidth(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotAutofitConstrainedTables(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotBreakConstrainedForcedTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotBreakWrappedTables(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotExpandShiftReturn(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotLeaveBackslashAlone(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotSnapToGridInCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotSuppressIndentation(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotSuppressParagraphBorders(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotUseEastAsianBreakRules(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotUseHTMLParagraphAutoSpacing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotUseIndentAsNumberingTabStop(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotVertAlignCellWithSp(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotVertAlignInTxbx(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotWrapTextWithPunct(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setFootnoteLayoutLikeWW8(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setForgetLastTabAlignment(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setGrowAutofit(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setLayoutRawTableWidth(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setLayoutTableRowsApart(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setLineWrapLikeWord6(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setMwSmallCaps(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setNoColumnBalance(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setNoExtraLineSpacing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setNoLeading(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setNoSpaceRaiseLower(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setNoTabHangInd(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setPrintBodyTextBeforeHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setPrintColBlack(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSelectFldWithFirstOrLastChar(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setShapeLayoutLikeWW8(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setShowBreaksInFrames(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSpaceForUL(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSpacingInWholePoints(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSplitPgBreakAndParaMark(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSubFontBySize(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSuppressBottomSpacing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSuppressSpBfAfterPgBrk(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSuppressSpacingAtTopOfPage(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSuppressTopSpacing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSuppressTopSpacingWP(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSwapBordersFacingPages(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setTruncateFontHeightsLikeWP6(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setUlTrailSpace(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setUnderlineTabInNumList(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setUseAltKinsokuLineBreakRules(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setUseAnsiKerningPairs(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setUseFELayout(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setUseNormalStyleForList(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setUsePrinterMetrics(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setUseSingleBorderforContiguousCells(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setUseWord2002TableStyleRules(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setUseWord97LineBreakRules(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setWpJustification(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setWpSpaceWidth(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setWrapTrailSpaces(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract sizeOfCompatSettingArray()I
.end method

.method public abstract unsetAdjustLineHeightInTable()V
.end method

.method public abstract unsetAlignTablesRowByRow()V
.end method

.method public abstract unsetAllowSpaceOfSameStyleInTable()V
.end method

.method public abstract unsetApplyBreakingRules()V
.end method

.method public abstract unsetAutoSpaceLikeWord95()V
.end method

.method public abstract unsetAutofitToFirstFixedWidthCell()V
.end method

.method public abstract unsetBalanceSingleByteDoubleByteWidth()V
.end method

.method public abstract unsetCachedColBalance()V
.end method

.method public abstract unsetConvMailMergeEsc()V
.end method

.method public abstract unsetDisplayHangulFixedWidth()V
.end method

.method public abstract unsetDoNotAutofitConstrainedTables()V
.end method

.method public abstract unsetDoNotBreakConstrainedForcedTable()V
.end method

.method public abstract unsetDoNotBreakWrappedTables()V
.end method

.method public abstract unsetDoNotExpandShiftReturn()V
.end method

.method public abstract unsetDoNotLeaveBackslashAlone()V
.end method

.method public abstract unsetDoNotSnapToGridInCell()V
.end method

.method public abstract unsetDoNotSuppressIndentation()V
.end method

.method public abstract unsetDoNotSuppressParagraphBorders()V
.end method

.method public abstract unsetDoNotUseEastAsianBreakRules()V
.end method

.method public abstract unsetDoNotUseHTMLParagraphAutoSpacing()V
.end method

.method public abstract unsetDoNotUseIndentAsNumberingTabStop()V
.end method

.method public abstract unsetDoNotVertAlignCellWithSp()V
.end method

.method public abstract unsetDoNotVertAlignInTxbx()V
.end method

.method public abstract unsetDoNotWrapTextWithPunct()V
.end method

.method public abstract unsetFootnoteLayoutLikeWW8()V
.end method

.method public abstract unsetForgetLastTabAlignment()V
.end method

.method public abstract unsetGrowAutofit()V
.end method

.method public abstract unsetLayoutRawTableWidth()V
.end method

.method public abstract unsetLayoutTableRowsApart()V
.end method

.method public abstract unsetLineWrapLikeWord6()V
.end method

.method public abstract unsetMwSmallCaps()V
.end method

.method public abstract unsetNoColumnBalance()V
.end method

.method public abstract unsetNoExtraLineSpacing()V
.end method

.method public abstract unsetNoLeading()V
.end method

.method public abstract unsetNoSpaceRaiseLower()V
.end method

.method public abstract unsetNoTabHangInd()V
.end method

.method public abstract unsetPrintBodyTextBeforeHeader()V
.end method

.method public abstract unsetPrintColBlack()V
.end method

.method public abstract unsetSelectFldWithFirstOrLastChar()V
.end method

.method public abstract unsetShapeLayoutLikeWW8()V
.end method

.method public abstract unsetShowBreaksInFrames()V
.end method

.method public abstract unsetSpaceForUL()V
.end method

.method public abstract unsetSpacingInWholePoints()V
.end method

.method public abstract unsetSplitPgBreakAndParaMark()V
.end method

.method public abstract unsetSubFontBySize()V
.end method

.method public abstract unsetSuppressBottomSpacing()V
.end method

.method public abstract unsetSuppressSpBfAfterPgBrk()V
.end method

.method public abstract unsetSuppressSpacingAtTopOfPage()V
.end method

.method public abstract unsetSuppressTopSpacing()V
.end method

.method public abstract unsetSuppressTopSpacingWP()V
.end method

.method public abstract unsetSwapBordersFacingPages()V
.end method

.method public abstract unsetTruncateFontHeightsLikeWP6()V
.end method

.method public abstract unsetUlTrailSpace()V
.end method

.method public abstract unsetUnderlineTabInNumList()V
.end method

.method public abstract unsetUseAltKinsokuLineBreakRules()V
.end method

.method public abstract unsetUseAnsiKerningPairs()V
.end method

.method public abstract unsetUseFELayout()V
.end method

.method public abstract unsetUseNormalStyleForList()V
.end method

.method public abstract unsetUsePrinterMetrics()V
.end method

.method public abstract unsetUseSingleBorderforContiguousCells()V
.end method

.method public abstract unsetUseWord2002TableStyleRules()V
.end method

.method public abstract unsetUseWord97LineBreakRules()V
.end method

.method public abstract unsetWpJustification()V
.end method

.method public abstract unsetWpSpaceWidth()V
.end method

.method public abstract unsetWrapTrailSpaces()V
.end method
