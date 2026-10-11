package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMacrosheet extends XmlObject {
    public static final DocumentFactory<CTMacrosheet> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMacrosheet> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmacrosheet6cdctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAutoFilter addNewAutoFilter();

    CTPageBreak addNewColBreaks();

    CTCols addNewCols();

    CTConditionalFormatting addNewConditionalFormatting();

    CTCustomProperties addNewCustomProperties();

    CTCustomSheetViews addNewCustomSheetViews();

    CTDataConsolidate addNewDataConsolidate();

    CTSheetDimension addNewDimension();

    CTDrawing addNewDrawing();

    CTDrawingHF addNewDrawingHF();

    CTExtensionList addNewExtLst();

    CTHeaderFooter addNewHeaderFooter();

    CTLegacyDrawing addNewLegacyDrawing();

    CTLegacyDrawing addNewLegacyDrawingHF();

    CTOleObjects addNewOleObjects();

    CTPageMargins addNewPageMargins();

    CTPageSetup addNewPageSetup();

    CTPhoneticPr addNewPhoneticPr();

    CTSheetBackgroundPicture addNewPicture();

    CTPrintOptions addNewPrintOptions();

    CTPageBreak addNewRowBreaks();

    CTSheetData addNewSheetData();

    CTSheetFormatPr addNewSheetFormatPr();

    CTSheetPr addNewSheetPr();

    CTSheetProtection addNewSheetProtection();

    CTSheetViews addNewSheetViews();

    CTSortState addNewSortState();

    CTAutoFilter getAutoFilter();

    CTPageBreak getColBreaks();

    CTCols getColsArray(int i);

    CTCols[] getColsArray();

    List<CTCols> getColsList();

    CTConditionalFormatting getConditionalFormattingArray(int i);

    CTConditionalFormatting[] getConditionalFormattingArray();

    List<CTConditionalFormatting> getConditionalFormattingList();

    CTCustomProperties getCustomProperties();

    CTCustomSheetViews getCustomSheetViews();

    CTDataConsolidate getDataConsolidate();

    CTSheetDimension getDimension();

    CTDrawing getDrawing();

    CTDrawingHF getDrawingHF();

    CTExtensionList getExtLst();

    CTHeaderFooter getHeaderFooter();

    CTLegacyDrawing getLegacyDrawing();

    CTLegacyDrawing getLegacyDrawingHF();

    CTOleObjects getOleObjects();

    CTPageMargins getPageMargins();

    CTPageSetup getPageSetup();

    CTPhoneticPr getPhoneticPr();

    CTSheetBackgroundPicture getPicture();

    CTPrintOptions getPrintOptions();

    CTPageBreak getRowBreaks();

    CTSheetData getSheetData();

    CTSheetFormatPr getSheetFormatPr();

    CTSheetPr getSheetPr();

    CTSheetProtection getSheetProtection();

    CTSheetViews getSheetViews();

    CTSortState getSortState();

    CTCols insertNewCols(int i);

    CTConditionalFormatting insertNewConditionalFormatting(int i);

    boolean isSetAutoFilter();

    boolean isSetColBreaks();

    boolean isSetCustomProperties();

    boolean isSetCustomSheetViews();

    boolean isSetDataConsolidate();

    boolean isSetDimension();

    boolean isSetDrawing();

    boolean isSetDrawingHF();

    boolean isSetExtLst();

    boolean isSetHeaderFooter();

    boolean isSetLegacyDrawing();

    boolean isSetLegacyDrawingHF();

    boolean isSetOleObjects();

    boolean isSetPageMargins();

    boolean isSetPageSetup();

    boolean isSetPhoneticPr();

    boolean isSetPicture();

    boolean isSetPrintOptions();

    boolean isSetRowBreaks();

    boolean isSetSheetFormatPr();

    boolean isSetSheetPr();

    boolean isSetSheetProtection();

    boolean isSetSheetViews();

    boolean isSetSortState();

    void removeCols(int i);

    void removeConditionalFormatting(int i);

    void setAutoFilter(CTAutoFilter cTAutoFilter);

    void setColBreaks(CTPageBreak cTPageBreak);

    void setColsArray(int i, CTCols cTCols);

    void setColsArray(CTCols[] cTColsArr);

    void setConditionalFormattingArray(int i, CTConditionalFormatting cTConditionalFormatting);

    void setConditionalFormattingArray(CTConditionalFormatting[] cTConditionalFormattingArr);

    void setCustomProperties(CTCustomProperties cTCustomProperties);

    void setCustomSheetViews(CTCustomSheetViews cTCustomSheetViews);

    void setDataConsolidate(CTDataConsolidate cTDataConsolidate);

    void setDimension(CTSheetDimension cTSheetDimension);

    void setDrawing(CTDrawing cTDrawing);

    void setDrawingHF(CTDrawingHF cTDrawingHF);

    void setExtLst(CTExtensionList cTExtensionList);

    void setHeaderFooter(CTHeaderFooter cTHeaderFooter);

    void setLegacyDrawing(CTLegacyDrawing cTLegacyDrawing);

    void setLegacyDrawingHF(CTLegacyDrawing cTLegacyDrawing);

    void setOleObjects(CTOleObjects cTOleObjects);

    void setPageMargins(CTPageMargins cTPageMargins);

    void setPageSetup(CTPageSetup cTPageSetup);

    void setPhoneticPr(CTPhoneticPr cTPhoneticPr);

    void setPicture(CTSheetBackgroundPicture cTSheetBackgroundPicture);

    void setPrintOptions(CTPrintOptions cTPrintOptions);

    void setRowBreaks(CTPageBreak cTPageBreak);

    void setSheetData(CTSheetData cTSheetData);

    void setSheetFormatPr(CTSheetFormatPr cTSheetFormatPr);

    void setSheetPr(CTSheetPr cTSheetPr);

    void setSheetProtection(CTSheetProtection cTSheetProtection);

    void setSheetViews(CTSheetViews cTSheetViews);

    void setSortState(CTSortState cTSortState);

    int sizeOfColsArray();

    int sizeOfConditionalFormattingArray();

    void unsetAutoFilter();

    void unsetColBreaks();

    void unsetCustomProperties();

    void unsetCustomSheetViews();

    void unsetDataConsolidate();

    void unsetDimension();

    void unsetDrawing();

    void unsetDrawingHF();

    void unsetExtLst();

    void unsetHeaderFooter();

    void unsetLegacyDrawing();

    void unsetLegacyDrawingHF();

    void unsetOleObjects();

    void unsetPageMargins();

    void unsetPageSetup();

    void unsetPhoneticPr();

    void unsetPicture();

    void unsetPrintOptions();

    void unsetRowBreaks();

    void unsetSheetFormatPr();

    void unsetSheetPr();

    void unsetSheetProtection();

    void unsetSheetViews();

    void unsetSortState();
}
