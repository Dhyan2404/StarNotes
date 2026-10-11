package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTCompat extends XmlObject {
    public static final DocumentFactory<CTCompat> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCompat> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcompatee66type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOnOff addNewAdjustLineHeightInTable();

    CTOnOff addNewAlignTablesRowByRow();

    CTOnOff addNewAllowSpaceOfSameStyleInTable();

    CTOnOff addNewApplyBreakingRules();

    CTOnOff addNewAutoSpaceLikeWord95();

    CTOnOff addNewAutofitToFirstFixedWidthCell();

    CTOnOff addNewBalanceSingleByteDoubleByteWidth();

    CTOnOff addNewCachedColBalance();

    CTCompatSetting addNewCompatSetting();

    CTOnOff addNewConvMailMergeEsc();

    CTOnOff addNewDisplayHangulFixedWidth();

    CTOnOff addNewDoNotAutofitConstrainedTables();

    CTOnOff addNewDoNotBreakConstrainedForcedTable();

    CTOnOff addNewDoNotBreakWrappedTables();

    CTOnOff addNewDoNotExpandShiftReturn();

    CTOnOff addNewDoNotLeaveBackslashAlone();

    CTOnOff addNewDoNotSnapToGridInCell();

    CTOnOff addNewDoNotSuppressIndentation();

    CTOnOff addNewDoNotSuppressParagraphBorders();

    CTOnOff addNewDoNotUseEastAsianBreakRules();

    CTOnOff addNewDoNotUseHTMLParagraphAutoSpacing();

    CTOnOff addNewDoNotUseIndentAsNumberingTabStop();

    CTOnOff addNewDoNotVertAlignCellWithSp();

    CTOnOff addNewDoNotVertAlignInTxbx();

    CTOnOff addNewDoNotWrapTextWithPunct();

    CTOnOff addNewFootnoteLayoutLikeWW8();

    CTOnOff addNewForgetLastTabAlignment();

    CTOnOff addNewGrowAutofit();

    CTOnOff addNewLayoutRawTableWidth();

    CTOnOff addNewLayoutTableRowsApart();

    CTOnOff addNewLineWrapLikeWord6();

    CTOnOff addNewMwSmallCaps();

    CTOnOff addNewNoColumnBalance();

    CTOnOff addNewNoExtraLineSpacing();

    CTOnOff addNewNoLeading();

    CTOnOff addNewNoSpaceRaiseLower();

    CTOnOff addNewNoTabHangInd();

    CTOnOff addNewPrintBodyTextBeforeHeader();

    CTOnOff addNewPrintColBlack();

    CTOnOff addNewSelectFldWithFirstOrLastChar();

    CTOnOff addNewShapeLayoutLikeWW8();

    CTOnOff addNewShowBreaksInFrames();

    CTOnOff addNewSpaceForUL();

    CTOnOff addNewSpacingInWholePoints();

    CTOnOff addNewSplitPgBreakAndParaMark();

    CTOnOff addNewSubFontBySize();

    CTOnOff addNewSuppressBottomSpacing();

    CTOnOff addNewSuppressSpBfAfterPgBrk();

    CTOnOff addNewSuppressSpacingAtTopOfPage();

    CTOnOff addNewSuppressTopSpacing();

    CTOnOff addNewSuppressTopSpacingWP();

    CTOnOff addNewSwapBordersFacingPages();

    CTOnOff addNewTruncateFontHeightsLikeWP6();

    CTOnOff addNewUlTrailSpace();

    CTOnOff addNewUnderlineTabInNumList();

    CTOnOff addNewUseAltKinsokuLineBreakRules();

    CTOnOff addNewUseAnsiKerningPairs();

    CTOnOff addNewUseFELayout();

    CTOnOff addNewUseNormalStyleForList();

    CTOnOff addNewUsePrinterMetrics();

    CTOnOff addNewUseSingleBorderforContiguousCells();

    CTOnOff addNewUseWord2002TableStyleRules();

    CTOnOff addNewUseWord97LineBreakRules();

    CTOnOff addNewWpJustification();

    CTOnOff addNewWpSpaceWidth();

    CTOnOff addNewWrapTrailSpaces();

    CTOnOff getAdjustLineHeightInTable();

    CTOnOff getAlignTablesRowByRow();

    CTOnOff getAllowSpaceOfSameStyleInTable();

    CTOnOff getApplyBreakingRules();

    CTOnOff getAutoSpaceLikeWord95();

    CTOnOff getAutofitToFirstFixedWidthCell();

    CTOnOff getBalanceSingleByteDoubleByteWidth();

    CTOnOff getCachedColBalance();

    CTCompatSetting getCompatSettingArray(int i);

    CTCompatSetting[] getCompatSettingArray();

    List<CTCompatSetting> getCompatSettingList();

    CTOnOff getConvMailMergeEsc();

    CTOnOff getDisplayHangulFixedWidth();

    CTOnOff getDoNotAutofitConstrainedTables();

    CTOnOff getDoNotBreakConstrainedForcedTable();

    CTOnOff getDoNotBreakWrappedTables();

    CTOnOff getDoNotExpandShiftReturn();

    CTOnOff getDoNotLeaveBackslashAlone();

    CTOnOff getDoNotSnapToGridInCell();

    CTOnOff getDoNotSuppressIndentation();

    CTOnOff getDoNotSuppressParagraphBorders();

    CTOnOff getDoNotUseEastAsianBreakRules();

    CTOnOff getDoNotUseHTMLParagraphAutoSpacing();

    CTOnOff getDoNotUseIndentAsNumberingTabStop();

    CTOnOff getDoNotVertAlignCellWithSp();

    CTOnOff getDoNotVertAlignInTxbx();

    CTOnOff getDoNotWrapTextWithPunct();

    CTOnOff getFootnoteLayoutLikeWW8();

    CTOnOff getForgetLastTabAlignment();

    CTOnOff getGrowAutofit();

    CTOnOff getLayoutRawTableWidth();

    CTOnOff getLayoutTableRowsApart();

    CTOnOff getLineWrapLikeWord6();

    CTOnOff getMwSmallCaps();

    CTOnOff getNoColumnBalance();

    CTOnOff getNoExtraLineSpacing();

    CTOnOff getNoLeading();

    CTOnOff getNoSpaceRaiseLower();

    CTOnOff getNoTabHangInd();

    CTOnOff getPrintBodyTextBeforeHeader();

    CTOnOff getPrintColBlack();

    CTOnOff getSelectFldWithFirstOrLastChar();

    CTOnOff getShapeLayoutLikeWW8();

    CTOnOff getShowBreaksInFrames();

    CTOnOff getSpaceForUL();

    CTOnOff getSpacingInWholePoints();

    CTOnOff getSplitPgBreakAndParaMark();

    CTOnOff getSubFontBySize();

    CTOnOff getSuppressBottomSpacing();

    CTOnOff getSuppressSpBfAfterPgBrk();

    CTOnOff getSuppressSpacingAtTopOfPage();

    CTOnOff getSuppressTopSpacing();

    CTOnOff getSuppressTopSpacingWP();

    CTOnOff getSwapBordersFacingPages();

    CTOnOff getTruncateFontHeightsLikeWP6();

    CTOnOff getUlTrailSpace();

    CTOnOff getUnderlineTabInNumList();

    CTOnOff getUseAltKinsokuLineBreakRules();

    CTOnOff getUseAnsiKerningPairs();

    CTOnOff getUseFELayout();

    CTOnOff getUseNormalStyleForList();

    CTOnOff getUsePrinterMetrics();

    CTOnOff getUseSingleBorderforContiguousCells();

    CTOnOff getUseWord2002TableStyleRules();

    CTOnOff getUseWord97LineBreakRules();

    CTOnOff getWpJustification();

    CTOnOff getWpSpaceWidth();

    CTOnOff getWrapTrailSpaces();

    CTCompatSetting insertNewCompatSetting(int i);

    boolean isSetAdjustLineHeightInTable();

    boolean isSetAlignTablesRowByRow();

    boolean isSetAllowSpaceOfSameStyleInTable();

    boolean isSetApplyBreakingRules();

    boolean isSetAutoSpaceLikeWord95();

    boolean isSetAutofitToFirstFixedWidthCell();

    boolean isSetBalanceSingleByteDoubleByteWidth();

    boolean isSetCachedColBalance();

    boolean isSetConvMailMergeEsc();

    boolean isSetDisplayHangulFixedWidth();

    boolean isSetDoNotAutofitConstrainedTables();

    boolean isSetDoNotBreakConstrainedForcedTable();

    boolean isSetDoNotBreakWrappedTables();

    boolean isSetDoNotExpandShiftReturn();

    boolean isSetDoNotLeaveBackslashAlone();

    boolean isSetDoNotSnapToGridInCell();

    boolean isSetDoNotSuppressIndentation();

    boolean isSetDoNotSuppressParagraphBorders();

    boolean isSetDoNotUseEastAsianBreakRules();

    boolean isSetDoNotUseHTMLParagraphAutoSpacing();

    boolean isSetDoNotUseIndentAsNumberingTabStop();

    boolean isSetDoNotVertAlignCellWithSp();

    boolean isSetDoNotVertAlignInTxbx();

    boolean isSetDoNotWrapTextWithPunct();

    boolean isSetFootnoteLayoutLikeWW8();

    boolean isSetForgetLastTabAlignment();

    boolean isSetGrowAutofit();

    boolean isSetLayoutRawTableWidth();

    boolean isSetLayoutTableRowsApart();

    boolean isSetLineWrapLikeWord6();

    boolean isSetMwSmallCaps();

    boolean isSetNoColumnBalance();

    boolean isSetNoExtraLineSpacing();

    boolean isSetNoLeading();

    boolean isSetNoSpaceRaiseLower();

    boolean isSetNoTabHangInd();

    boolean isSetPrintBodyTextBeforeHeader();

    boolean isSetPrintColBlack();

    boolean isSetSelectFldWithFirstOrLastChar();

    boolean isSetShapeLayoutLikeWW8();

    boolean isSetShowBreaksInFrames();

    boolean isSetSpaceForUL();

    boolean isSetSpacingInWholePoints();

    boolean isSetSplitPgBreakAndParaMark();

    boolean isSetSubFontBySize();

    boolean isSetSuppressBottomSpacing();

    boolean isSetSuppressSpBfAfterPgBrk();

    boolean isSetSuppressSpacingAtTopOfPage();

    boolean isSetSuppressTopSpacing();

    boolean isSetSuppressTopSpacingWP();

    boolean isSetSwapBordersFacingPages();

    boolean isSetTruncateFontHeightsLikeWP6();

    boolean isSetUlTrailSpace();

    boolean isSetUnderlineTabInNumList();

    boolean isSetUseAltKinsokuLineBreakRules();

    boolean isSetUseAnsiKerningPairs();

    boolean isSetUseFELayout();

    boolean isSetUseNormalStyleForList();

    boolean isSetUsePrinterMetrics();

    boolean isSetUseSingleBorderforContiguousCells();

    boolean isSetUseWord2002TableStyleRules();

    boolean isSetUseWord97LineBreakRules();

    boolean isSetWpJustification();

    boolean isSetWpSpaceWidth();

    boolean isSetWrapTrailSpaces();

    void removeCompatSetting(int i);

    void setAdjustLineHeightInTable(CTOnOff cTOnOff);

    void setAlignTablesRowByRow(CTOnOff cTOnOff);

    void setAllowSpaceOfSameStyleInTable(CTOnOff cTOnOff);

    void setApplyBreakingRules(CTOnOff cTOnOff);

    void setAutoSpaceLikeWord95(CTOnOff cTOnOff);

    void setAutofitToFirstFixedWidthCell(CTOnOff cTOnOff);

    void setBalanceSingleByteDoubleByteWidth(CTOnOff cTOnOff);

    void setCachedColBalance(CTOnOff cTOnOff);

    void setCompatSettingArray(int i, CTCompatSetting cTCompatSetting);

    void setCompatSettingArray(CTCompatSetting[] cTCompatSettingArr);

    void setConvMailMergeEsc(CTOnOff cTOnOff);

    void setDisplayHangulFixedWidth(CTOnOff cTOnOff);

    void setDoNotAutofitConstrainedTables(CTOnOff cTOnOff);

    void setDoNotBreakConstrainedForcedTable(CTOnOff cTOnOff);

    void setDoNotBreakWrappedTables(CTOnOff cTOnOff);

    void setDoNotExpandShiftReturn(CTOnOff cTOnOff);

    void setDoNotLeaveBackslashAlone(CTOnOff cTOnOff);

    void setDoNotSnapToGridInCell(CTOnOff cTOnOff);

    void setDoNotSuppressIndentation(CTOnOff cTOnOff);

    void setDoNotSuppressParagraphBorders(CTOnOff cTOnOff);

    void setDoNotUseEastAsianBreakRules(CTOnOff cTOnOff);

    void setDoNotUseHTMLParagraphAutoSpacing(CTOnOff cTOnOff);

    void setDoNotUseIndentAsNumberingTabStop(CTOnOff cTOnOff);

    void setDoNotVertAlignCellWithSp(CTOnOff cTOnOff);

    void setDoNotVertAlignInTxbx(CTOnOff cTOnOff);

    void setDoNotWrapTextWithPunct(CTOnOff cTOnOff);

    void setFootnoteLayoutLikeWW8(CTOnOff cTOnOff);

    void setForgetLastTabAlignment(CTOnOff cTOnOff);

    void setGrowAutofit(CTOnOff cTOnOff);

    void setLayoutRawTableWidth(CTOnOff cTOnOff);

    void setLayoutTableRowsApart(CTOnOff cTOnOff);

    void setLineWrapLikeWord6(CTOnOff cTOnOff);

    void setMwSmallCaps(CTOnOff cTOnOff);

    void setNoColumnBalance(CTOnOff cTOnOff);

    void setNoExtraLineSpacing(CTOnOff cTOnOff);

    void setNoLeading(CTOnOff cTOnOff);

    void setNoSpaceRaiseLower(CTOnOff cTOnOff);

    void setNoTabHangInd(CTOnOff cTOnOff);

    void setPrintBodyTextBeforeHeader(CTOnOff cTOnOff);

    void setPrintColBlack(CTOnOff cTOnOff);

    void setSelectFldWithFirstOrLastChar(CTOnOff cTOnOff);

    void setShapeLayoutLikeWW8(CTOnOff cTOnOff);

    void setShowBreaksInFrames(CTOnOff cTOnOff);

    void setSpaceForUL(CTOnOff cTOnOff);

    void setSpacingInWholePoints(CTOnOff cTOnOff);

    void setSplitPgBreakAndParaMark(CTOnOff cTOnOff);

    void setSubFontBySize(CTOnOff cTOnOff);

    void setSuppressBottomSpacing(CTOnOff cTOnOff);

    void setSuppressSpBfAfterPgBrk(CTOnOff cTOnOff);

    void setSuppressSpacingAtTopOfPage(CTOnOff cTOnOff);

    void setSuppressTopSpacing(CTOnOff cTOnOff);

    void setSuppressTopSpacingWP(CTOnOff cTOnOff);

    void setSwapBordersFacingPages(CTOnOff cTOnOff);

    void setTruncateFontHeightsLikeWP6(CTOnOff cTOnOff);

    void setUlTrailSpace(CTOnOff cTOnOff);

    void setUnderlineTabInNumList(CTOnOff cTOnOff);

    void setUseAltKinsokuLineBreakRules(CTOnOff cTOnOff);

    void setUseAnsiKerningPairs(CTOnOff cTOnOff);

    void setUseFELayout(CTOnOff cTOnOff);

    void setUseNormalStyleForList(CTOnOff cTOnOff);

    void setUsePrinterMetrics(CTOnOff cTOnOff);

    void setUseSingleBorderforContiguousCells(CTOnOff cTOnOff);

    void setUseWord2002TableStyleRules(CTOnOff cTOnOff);

    void setUseWord97LineBreakRules(CTOnOff cTOnOff);

    void setWpJustification(CTOnOff cTOnOff);

    void setWpSpaceWidth(CTOnOff cTOnOff);

    void setWrapTrailSpaces(CTOnOff cTOnOff);

    int sizeOfCompatSettingArray();

    void unsetAdjustLineHeightInTable();

    void unsetAlignTablesRowByRow();

    void unsetAllowSpaceOfSameStyleInTable();

    void unsetApplyBreakingRules();

    void unsetAutoSpaceLikeWord95();

    void unsetAutofitToFirstFixedWidthCell();

    void unsetBalanceSingleByteDoubleByteWidth();

    void unsetCachedColBalance();

    void unsetConvMailMergeEsc();

    void unsetDisplayHangulFixedWidth();

    void unsetDoNotAutofitConstrainedTables();

    void unsetDoNotBreakConstrainedForcedTable();

    void unsetDoNotBreakWrappedTables();

    void unsetDoNotExpandShiftReturn();

    void unsetDoNotLeaveBackslashAlone();

    void unsetDoNotSnapToGridInCell();

    void unsetDoNotSuppressIndentation();

    void unsetDoNotSuppressParagraphBorders();

    void unsetDoNotUseEastAsianBreakRules();

    void unsetDoNotUseHTMLParagraphAutoSpacing();

    void unsetDoNotUseIndentAsNumberingTabStop();

    void unsetDoNotVertAlignCellWithSp();

    void unsetDoNotVertAlignInTxbx();

    void unsetDoNotWrapTextWithPunct();

    void unsetFootnoteLayoutLikeWW8();

    void unsetForgetLastTabAlignment();

    void unsetGrowAutofit();

    void unsetLayoutRawTableWidth();

    void unsetLayoutTableRowsApart();

    void unsetLineWrapLikeWord6();

    void unsetMwSmallCaps();

    void unsetNoColumnBalance();

    void unsetNoExtraLineSpacing();

    void unsetNoLeading();

    void unsetNoSpaceRaiseLower();

    void unsetNoTabHangInd();

    void unsetPrintBodyTextBeforeHeader();

    void unsetPrintColBlack();

    void unsetSelectFldWithFirstOrLastChar();

    void unsetShapeLayoutLikeWW8();

    void unsetShowBreaksInFrames();

    void unsetSpaceForUL();

    void unsetSpacingInWholePoints();

    void unsetSplitPgBreakAndParaMark();

    void unsetSubFontBySize();

    void unsetSuppressBottomSpacing();

    void unsetSuppressSpBfAfterPgBrk();

    void unsetSuppressSpacingAtTopOfPage();

    void unsetSuppressTopSpacing();

    void unsetSuppressTopSpacingWP();

    void unsetSwapBordersFacingPages();

    void unsetTruncateFontHeightsLikeWP6();

    void unsetUlTrailSpace();

    void unsetUnderlineTabInNumList();

    void unsetUseAltKinsokuLineBreakRules();

    void unsetUseAnsiKerningPairs();

    void unsetUseFELayout();

    void unsetUseNormalStyleForList();

    void unsetUsePrinterMetrics();

    void unsetUseSingleBorderforContiguousCells();

    void unsetUseWord2002TableStyleRules();

    void unsetUseWord97LineBreakRules();

    void unsetWpJustification();

    void unsetWpSpaceWidth();

    void unsetWrapTrailSpaces();
}
