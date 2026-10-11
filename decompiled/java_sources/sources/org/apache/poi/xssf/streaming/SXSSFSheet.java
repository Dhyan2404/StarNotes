package org.apache.poi.xssf.streaming;

import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Spliterator;
import java.util.TreeMap;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.usermodel.AutoFilter;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellRange;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.DataValidation;
import org.apache.poi.ss.usermodel.DataValidationHelper;
import org.apache.poi.ss.usermodel.Footer;
import org.apache.poi.ss.usermodel.Header;
import org.apache.poi.ss.usermodel.PageMargin;
import org.apache.poi.ss.usermodel.PaneType;
import org.apache.poi.ss.usermodel.PrintSetup;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.SheetConditionalFormatting;
import org.apache.poi.ss.util.CellAddress;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.PaneInformation;
import org.apache.poi.ss.util.SheetUtil;
import org.apache.poi.util.Internal;
import org.apache.poi.util.NotImplemented;
import org.apache.poi.util.Removal;
import org.apache.poi.xssf.usermodel.OoxmlSheetExtensions;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFComment;
import org.apache.poi.xssf.usermodel.XSSFDataValidation;
import org.apache.poi.xssf.usermodel.XSSFDrawing;
import org.apache.poi.xssf.usermodel.XSSFHyperlink;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFVMLDrawing;
import org.mortbay.jetty.HttpStatus;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColor;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetFormatPr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetPr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetProtection;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet;

/* loaded from: classes13.dex */
public class SXSSFSheet implements Sheet, OoxmlSheetExtensions {
    private static final Logger LOG = LogManager.getLogger((Class<?>) SXSSFSheet.class);
    protected AutoSizeColumnTracker _autoSizeColumnTracker;
    final XSSFSheet _sh;
    protected final SXSSFWorkbook _workbook;
    protected SheetDataWriter _writer;
    private boolean allFlushed;
    private int outlineLevelRow;
    private int rightMostColumn;
    private final TreeMap<Integer, SXSSFRow> _rows = new TreeMap<>();
    private int _randomAccessWindowSize = 100;
    private int lastFlushedRowNumber = -1;
    private int leftMostColumn = SpreadsheetVersion.EXCEL2007.getLastColumnIndex();

    public SXSSFSheet(SXSSFWorkbook sXSSFWorkbook, XSSFSheet xSSFSheet, int i) {
        this._workbook = sXSSFWorkbook;
        this._sh = xSSFSheet;
        calculateLeftAndRightMostColumns(xSSFSheet);
        setRandomAccessWindowSize(i);
        try {
            this._autoSizeColumnTracker = new AutoSizeColumnTracker(this);
        } catch (InternalError e) {
            LOG.atWarn().log("Failed to create AutoSizeColumnTracker, possibly due to fonts not being installed in your OS", e);
        }
    }

    private void calculateLeftAndRightMostColumns(XSSFSheet xSSFSheet) {
        if (this._workbook.shouldCalculateSheetDimensions()) {
            int i = 0;
            int i2 = Integer.MAX_VALUE;
            int i3 = 0;
            for (Row row : xSSFSheet) {
                i++;
                if (row.getFirstCellNum() < i2) {
                    short firstCellNum = row.getFirstCellNum();
                    int lastCellNum = row.getLastCellNum() - 1;
                    i2 = Math.min((int) firstCellNum, i2);
                    i3 = Math.max(lastCellNum, i3);
                }
            }
            if (i > 0) {
                this.leftMostColumn = i2;
                this.rightMostColumn = i3;
            }
        }
    }

    private void collapseRow(int i) {
        SXSSFRow row = getRow(i);
        if (row == null) {
            throw new IllegalArgumentException("Invalid row number(" + i + "). Row does not exist.");
        }
        int writeHidden = writeHidden(row, findStartOfRowOutlineGroup(i));
        SXSSFRow row2 = getRow(writeHidden);
        if (row2 != null) {
            row2.setCollapsed(Boolean.TRUE);
        } else {
            createRow(writeHidden).setCollapsed(Boolean.TRUE);
        }
    }

    private int findStartOfRowOutlineGroup(int i) {
        int outlineLevel = getRow(i).getOutlineLevel();
        if (outlineLevel != 0) {
            while (getRow(i) != null && getRow(i).getOutlineLevel() >= outlineLevel) {
                i--;
            }
            return i + 1;
        }
        throw new IllegalArgumentException("Outline level is zero for the row (" + i + ").");
    }

    private void flushOneRow() throws IOException {
        Integer firstKey = this._rows.firstKey();
        if (firstKey != null) {
            int intValue = firstKey.intValue();
            SXSSFRow sXSSFRow = this._rows.get(firstKey);
            AutoSizeColumnTracker autoSizeColumnTracker = this._autoSizeColumnTracker;
            if (autoSizeColumnTracker != null) {
                autoSizeColumnTracker.updateColumnWidths(sXSSFRow);
            }
            SheetDataWriter sheetDataWriter = this._writer;
            if (sheetDataWriter != null) {
                sheetDataWriter.writeRow(intValue, sXSSFRow);
            }
            this._rows.remove(firstKey);
            this.lastFlushedRowNumber = intValue;
        }
    }

    private CTSheetProtection safeGetProtectionField() {
        CTWorksheet cTWorksheet = this._sh.getCTWorksheet();
        return !isSheetProtectionEnabled() ? cTWorksheet.addNewSheetProtection() : cTWorksheet.getSheetProtection();
    }

    private void setWorksheetOutlineLevelRow() {
        CTWorksheet cTWorksheet = this._sh.getCTWorksheet();
        CTSheetFormatPr sheetFormatPr = cTWorksheet.isSetSheetFormatPr() ? cTWorksheet.getSheetFormatPr() : cTWorksheet.addNewSheetFormatPr();
        int i = this.outlineLevelRow;
        if (i > 0) {
            sheetFormatPr.setOutlineLevelRow((short) i);
        }
    }

    private int writeHidden(SXSSFRow sXSSFRow, int i) {
        int outlineLevel = sXSSFRow.getOutlineLevel();
        SXSSFRow row = getRow(i);
        while (row != null && row.getOutlineLevel() >= outlineLevel) {
            row.setHidden(Boolean.TRUE);
            i++;
            row = getRow(i);
        }
        return i;
    }

    public void addHyperlink(XSSFHyperlink xSSFHyperlink) {
        this._sh.addHyperlink(xSSFHyperlink);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int addMergedRegion(CellRangeAddress cellRangeAddress) {
        return this._sh.addMergedRegion(cellRangeAddress);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int addMergedRegionUnsafe(CellRangeAddress cellRangeAddress) {
        return this._sh.addMergedRegionUnsafe(cellRangeAddress);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void addValidationData(DataValidation dataValidation) {
        this._sh.addValidationData(dataValidation);
    }

    public boolean areAllRowsFlushed() {
        return this.allFlushed;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void autoSizeColumn(int i) {
        autoSizeColumn(i, false);
    }

    public void changeRowNum(SXSSFRow sXSSFRow, int i) {
        removeRow(sXSSFRow);
        sXSSFRow.setRowNumWithoutUpdatingSheet(i);
        this._rows.put(Integer.valueOf(i), sXSSFRow);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void createFreezePane(int i, int i2, int i3, int i4) {
        this._sh.createFreezePane(i, i2, i3, i4);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    @Removal(version = "7.0.0")
    @Deprecated
    public void createSplitPane(int i, int i2, int i3, int i4, int i5) {
        this._sh.createSplitPane(i, i2, i3, i4, i5);
    }

    public void deriveDimension() {
        if (this._workbook.shouldCalculateSheetDimensions()) {
            try {
                this._sh.setDimensionOverride(new CellRangeAddress(getFirstRowNum(), getLastRowNum(), this.leftMostColumn, this.rightMostColumn));
            } catch (Exception e) {
                LOG.atDebug().log("Failed to set dimension details on sheet", e);
            }
        }
    }

    public void disableLocking() {
        safeGetProtectionField().setSheet(false);
    }

    public boolean dispose() throws IOException {
        try {
            if (!this.allFlushed) {
                flushRows();
            }
        } finally {
            SheetDataWriter sheetDataWriter = this._writer;
            if (sheetDataWriter != null) {
                sheetDataWriter.dispose();
            }
        }
    }

    public void enableLocking() {
        safeGetProtectionField().setSheet(true);
    }

    public void flushBufferedData() throws IOException {
        this._writer.flush();
    }

    public void flushRows(int i) throws IOException {
        while (this._rows.size() > i) {
            flushOneRow();
        }
        if (i == 0) {
            this.allFlushed = true;
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellAddress getActiveCell() {
        return this._sh.getActiveCell();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getAutobreaks() {
        return this._sh.getAutobreaks();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public Map<CellAddress, XSSFComment> getCellComments() {
        return this._sh.getCellComments();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int[] getColumnBreaks() {
        return this._sh.getColumnBreaks();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getColumnOutlineLevel(int i) {
        return this._sh.getColumnOutlineLevel(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellStyle getColumnStyle(int i) {
        return this._sh.getColumnStyle(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getColumnWidth(int i) {
        return this._sh.getColumnWidth(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public float getColumnWidthInPixels(int i) {
        return this._sh.getColumnWidthInPixels(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public DataValidationHelper getDataValidationHelper() {
        return this._sh.getDataValidationHelper();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public List<XSSFDataValidation> getDataValidations() {
        return this._sh.getDataValidations();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getDefaultColumnWidth() {
        return this._sh.getDefaultColumnWidth();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public short getDefaultRowHeight() {
        return this._sh.getDefaultRowHeight();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public float getDefaultRowHeightInPoints() {
        return this._sh.getDefaultRowHeightInPoints();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getDisplayGuts() {
        return this._sh.getDisplayGuts();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getFirstRowNum() {
        if (this._writer.getNumberOfFlushedRows() > 0) {
            return this._writer.getLowestIndexOfFlushedRows();
        }
        if (this._rows.isEmpty()) {
            return -1;
        }
        return this._rows.firstKey().intValue();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getFitToPage() {
        return this._sh.getFitToPage();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public Footer getFooter() {
        return this._sh.getFooter();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getForceFormulaRecalculation() {
        return this._sh.getForceFormulaRecalculation();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public Header getHeader() {
        return this._sh.getHeader();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getHorizontallyCenter() {
        return this._sh.getHorizontallyCenter();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public List<XSSFHyperlink> getHyperlinkList() {
        return this._sh.getHyperlinkList();
    }

    public int getLastFlushedRowNum() {
        return this.lastFlushedRowNumber;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getLastRowNum() {
        if (this._rows.isEmpty()) {
            return -1;
        }
        return this._rows.lastKey().intValue();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public short getLeftCol() {
        return this._sh.getLeftCol();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    @Removal(version = "7.0.0")
    @Deprecated
    public double getMargin(short s) {
        return this._sh.getMargin(s);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellRangeAddress getMergedRegion(int i) {
        return this._sh.getMergedRegion(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public List<CellRangeAddress> getMergedRegions() {
        return this._sh.getMergedRegions();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getNumMergedRegions() {
        return this._sh.getNumMergedRegions();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public PaneInformation getPaneInformation() {
        return this._sh.getPaneInformation();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getPhysicalNumberOfRows() {
        return this._rows.size() + this._writer.getNumberOfFlushedRows();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public PrintSetup getPrintSetup() {
        return this._sh.getPrintSetup();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getProtect() {
        return this._sh.getProtect();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellRangeAddress getRepeatingColumns() {
        return this._sh.getRepeatingColumns();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellRangeAddress getRepeatingRows() {
        return this._sh.getRepeatingRows();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int[] getRowBreaks() {
        return this._sh.getRowBreaks();
    }

    public int getRowNum(SXSSFRow sXSSFRow) {
        return sXSSFRow.getRowNum();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getRowSumsBelow() {
        return this._sh.getRowSumsBelow();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getRowSumsRight() {
        return this._sh.getRowSumsRight();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getScenarioProtect() {
        return this._sh.getScenarioProtect();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public SheetConditionalFormatting getSheetConditionalFormatting() {
        return this._sh.getSheetConditionalFormatting();
    }

    @Internal
    public SheetDataWriter getSheetDataWriter() {
        return this._writer;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public String getSheetName() {
        return this._sh.getSheetName();
    }

    public XSSFColor getTabColor() {
        return this._sh.getTabColor();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public short getTopRow() {
        return this._sh.getTopRow();
    }

    public Set<Integer> getTrackedColumnsForAutoSizing() {
        AutoSizeColumnTracker autoSizeColumnTracker = this._autoSizeColumnTracker;
        return autoSizeColumnTracker == null ? Collections.emptySet() : autoSizeColumnTracker.getTrackedColumns();
    }

    @Override // org.apache.poi.xssf.usermodel.OoxmlSheetExtensions
    public XSSFVMLDrawing getVMLDrawing(boolean z) {
        XSSFSheet xSSFSheet = getWorkbook().getXSSFSheet(this);
        if (xSSFSheet == null) {
            return null;
        }
        return xSSFSheet.getVMLDrawing(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getVerticallyCenter() {
        return this._sh.getVerticallyCenter();
    }

    public InputStream getWorksheetXMLInputStream() throws IOException {
        flushRows(0);
        this._writer.close();
        return this._writer.getWorksheetXMLInputStream();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void groupColumn(int i, int i2) {
        this._sh.groupColumn(i, i2);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void groupRow(int i, int i2) {
        for (SXSSFRow sXSSFRow : this._rows.subMap(Integer.valueOf(i), Integer.valueOf(i2 + 1)).values()) {
            int outlineLevel = sXSSFRow.getOutlineLevel() + 1;
            sXSSFRow.setOutlineLevel(outlineLevel);
            if (outlineLevel > this.outlineLevelRow) {
                this.outlineLevelRow = outlineLevel;
            }
        }
        setWorksheetOutlineLevelRow();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isColumnBroken(int i) {
        return this._sh.isColumnBroken(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isColumnHidden(int i) {
        return this._sh.isColumnHidden(i);
    }

    public boolean isColumnTrackedForAutoSizing(int i) {
        AutoSizeColumnTracker autoSizeColumnTracker = this._autoSizeColumnTracker;
        return autoSizeColumnTracker != null && autoSizeColumnTracker.isColumnTracked(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isDisplayFormulas() {
        return this._sh.isDisplayFormulas();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isDisplayGridlines() {
        return this._sh.isDisplayGridlines();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isDisplayRowColHeadings() {
        return this._sh.isDisplayRowColHeadings();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isDisplayZeros() {
        return this._sh.isDisplayZeros();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isPrintGridlines() {
        return this._sh.isPrintGridlines();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isPrintRowAndColumnHeadings() {
        return this._sh.isPrintRowAndColumnHeadings();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isRightToLeft() {
        return this._sh.isRightToLeft();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isRowBroken(int i) {
        return this._sh.isRowBroken(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isSelected() {
        return this._sh.isSelected();
    }

    public boolean isSheetProtectionEnabled() {
        return this._sh.getCTWorksheet().isSetSheetProtection();
    }

    public void lockAutoFilter(boolean z) {
        safeGetProtectionField().setAutoFilter(z);
    }

    public void lockDeleteColumns(boolean z) {
        safeGetProtectionField().setDeleteColumns(z);
    }

    public void lockDeleteRows(boolean z) {
        safeGetProtectionField().setDeleteRows(z);
    }

    public void lockFormatCells(boolean z) {
        safeGetProtectionField().setFormatCells(z);
    }

    public void lockFormatColumns(boolean z) {
        safeGetProtectionField().setFormatColumns(z);
    }

    public void lockFormatRows(boolean z) {
        safeGetProtectionField().setFormatRows(z);
    }

    public void lockInsertColumns(boolean z) {
        safeGetProtectionField().setInsertColumns(z);
    }

    public void lockInsertHyperlinks(boolean z) {
        safeGetProtectionField().setInsertHyperlinks(z);
    }

    public void lockInsertRows(boolean z) {
        safeGetProtectionField().setInsertRows(z);
    }

    public void lockObjects(boolean z) {
        safeGetProtectionField().setObjects(z);
    }

    public void lockPivotTables(boolean z) {
        safeGetProtectionField().setPivotTables(z);
    }

    public void lockScenarios(boolean z) {
        safeGetProtectionField().setScenarios(z);
    }

    public void lockSelectLockedCells(boolean z) {
        safeGetProtectionField().setSelectLockedCells(z);
    }

    public void lockSelectUnlockedCells(boolean z) {
        safeGetProtectionField().setSelectUnlockedCells(z);
    }

    public void lockSort(boolean z) {
        safeGetProtectionField().setSort(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void protectSheet(String str) {
        this._sh.protectSheet(str);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellRange<? extends Cell> removeArrayFormula(Cell cell) {
        throw new IllegalStateException(HttpStatus.Not_Implemented);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void removeColumnBreak(int i) {
        this._sh.removeColumnBreak(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void removeMergedRegion(int i) {
        this._sh.removeMergedRegion(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void removeMergedRegions(Collection<Integer> collection) {
        this._sh.removeMergedRegions(collection);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void removeRow(Row row) {
        if (row.getSheet() != this) {
            throw new IllegalArgumentException("Specified row does not belong to this sheet");
        }
        Iterator<Map.Entry<Integer, SXSSFRow>> it2 = this._rows.entrySet().iterator();
        while (it2.hasNext()) {
            if (it2.next().getValue() == row) {
                it2.remove();
                return;
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void removeRowBreak(int i) {
        this._sh.removeRowBreak(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public Iterator<Row> rowIterator() {
        return this._rows.values().iterator();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setActiveCell(CellAddress cellAddress) {
        this._sh.setActiveCell(cellAddress);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellRange<? extends Cell> setArrayFormula(String str, CellRangeAddress cellRangeAddress) {
        throw new IllegalStateException(HttpStatus.Not_Implemented);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public AutoFilter setAutoFilter(CellRangeAddress cellRangeAddress) {
        return this._sh.setAutoFilter(cellRangeAddress);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setAutobreaks(boolean z) {
        this._sh.setAutobreaks(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setColumnBreak(int i) {
        this._sh.setColumnBreak(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setColumnGroupCollapsed(int i, boolean z) {
        this._sh.setColumnGroupCollapsed(i, z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setColumnHidden(int i, boolean z) {
        this._sh.setColumnHidden(i, z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setColumnWidth(int i, int i2) {
        this._sh.setColumnWidth(i, i2);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDefaultColumnStyle(int i, CellStyle cellStyle) {
        this._sh.setDefaultColumnStyle(i, cellStyle);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDefaultColumnWidth(int i) {
        this._sh.setDefaultColumnWidth(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDefaultRowHeight(short s) {
        this._sh.setDefaultRowHeight(s);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDefaultRowHeightInPoints(float f) {
        this._sh.setDefaultRowHeightInPoints(f);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDisplayFormulas(boolean z) {
        this._sh.setDisplayFormulas(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDisplayGridlines(boolean z) {
        this._sh.setDisplayGridlines(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDisplayGuts(boolean z) {
        this._sh.setDisplayGuts(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDisplayRowColHeadings(boolean z) {
        this._sh.setDisplayRowColHeadings(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDisplayZeros(boolean z) {
        this._sh.setDisplayZeros(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setFitToPage(boolean z) {
        this._sh.setFitToPage(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setForceFormulaRecalculation(boolean z) {
        this._sh.setForceFormulaRecalculation(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setHorizontallyCenter(boolean z) {
        this._sh.setHorizontallyCenter(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    @Removal(version = "7.0.0")
    @Deprecated
    public void setMargin(short s, double d) {
        this._sh.setMargin(s, d);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setPrintGridlines(boolean z) {
        this._sh.setPrintGridlines(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setPrintRowAndColumnHeadings(boolean z) {
        this._sh.setPrintRowAndColumnHeadings(z);
    }

    public void setRandomAccessWindowSize(int i) {
        if (i == 0 || i < -1) {
            throw new IllegalArgumentException("RandomAccessWindowSize must be either -1 or a positive integer");
        }
        this._randomAccessWindowSize = i;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRepeatingColumns(CellRangeAddress cellRangeAddress) {
        this._sh.setRepeatingColumns(cellRangeAddress);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRepeatingRows(CellRangeAddress cellRangeAddress) {
        this._sh.setRepeatingRows(cellRangeAddress);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRightToLeft(boolean z) {
        this._sh.setRightToLeft(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRowBreak(int i) {
        this._sh.setRowBreak(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRowGroupCollapsed(int i, boolean z) {
        if (!z) {
            throw new IllegalStateException("Unable to expand row: Not Implemented");
        }
        collapseRow(i);
    }

    public void setRowOutlineLevel(int i, int i2) {
        this._rows.get(Integer.valueOf(i)).setOutlineLevel(i2);
        if (i2 <= 0 || i2 <= this.outlineLevelRow) {
            return;
        }
        this.outlineLevelRow = i2;
        setWorksheetOutlineLevelRow();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRowSumsBelow(boolean z) {
        this._sh.setRowSumsBelow(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRowSumsRight(boolean z) {
        this._sh.setRowSumsRight(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setSelected(boolean z) {
        this._sh.setSelected(z);
    }

    public void setTabColor(XSSFColor xSSFColor) {
        this._sh.setTabColor(xSSFColor);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setVerticallyCenter(boolean z) {
        this._sh.setVerticallyCenter(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setZoom(int i) {
        this._sh.setZoom(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    @NotImplemented
    public void shiftColumns(int i, int i2, int i3) {
        throw new UnsupportedOperationException(HttpStatus.Not_Implemented);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    @NotImplemented
    public void shiftRows(int i, int i2, int i3) {
        throw new IllegalStateException(HttpStatus.Not_Implemented);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void showInPane(int i, int i2) {
        this._sh.showInPane(i, i2);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet, java.lang.Iterable
    public Spliterator<Row> spliterator() {
        return this._rows.values().spliterator();
    }

    public void trackAllColumnsForAutoSizing() {
        AutoSizeColumnTracker autoSizeColumnTracker = this._autoSizeColumnTracker;
        if (autoSizeColumnTracker == null) {
            throw new IllegalStateException("Cannot trackColumnForAutoSizing because autoSizeColumnTracker failed to initialize (possibly due to fonts not being installed in your OS)");
        }
        autoSizeColumnTracker.trackAllColumns();
    }

    public void trackColumnForAutoSizing(int i) {
        AutoSizeColumnTracker autoSizeColumnTracker = this._autoSizeColumnTracker;
        if (autoSizeColumnTracker == null) {
            throw new IllegalStateException("Cannot trackColumnForAutoSizing because autoSizeColumnTracker failed to initialize (possibly due to fonts not being installed in your OS)");
        }
        autoSizeColumnTracker.trackColumn(i);
    }

    public void trackColumnsForAutoSizing(Collection<Integer> collection) {
        AutoSizeColumnTracker autoSizeColumnTracker = this._autoSizeColumnTracker;
        if (autoSizeColumnTracker == null) {
            throw new IllegalStateException("Cannot trackColumnForAutoSizing because autoSizeColumnTracker failed to initialize (possibly due to fonts not being installed in your OS)");
        }
        autoSizeColumnTracker.trackColumns(collection);
    }

    public void trackNewCell(SXSSFCell sXSSFCell) {
        this.leftMostColumn = Math.min(sXSSFCell.getColumnIndex(), this.leftMostColumn);
        this.rightMostColumn = Math.max(sXSSFCell.getColumnIndex(), this.rightMostColumn);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void ungroupColumn(int i, int i2) {
        this._sh.ungroupColumn(i, i2);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void ungroupRow(int i, int i2) {
        this._sh.ungroupRow(i, i2);
    }

    public void untrackAllColumnsForAutoSizing() {
        AutoSizeColumnTracker autoSizeColumnTracker = this._autoSizeColumnTracker;
        if (autoSizeColumnTracker != null) {
            autoSizeColumnTracker.untrackAllColumns();
        }
    }

    public boolean untrackColumnForAutoSizing(int i) {
        AutoSizeColumnTracker autoSizeColumnTracker = this._autoSizeColumnTracker;
        return autoSizeColumnTracker != null && autoSizeColumnTracker.untrackColumn(i);
    }

    public boolean untrackColumnsForAutoSizing(Collection<Integer> collection) {
        AutoSizeColumnTracker autoSizeColumnTracker = this._autoSizeColumnTracker;
        return autoSizeColumnTracker != null && autoSizeColumnTracker.untrackColumns(collection);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void validateMergedRegions() {
        this._sh.validateMergedRegions();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void autoSizeColumn(int i, boolean z) {
        AutoSizeColumnTracker autoSizeColumnTracker = this._autoSizeColumnTracker;
        if (autoSizeColumnTracker != null) {
            try {
                int max = Math.max(autoSizeColumnTracker.getBestFitColumnWidth(i, z), (int) (SheetUtil.getColumnWidth(this, i, z) * 256.0d));
                if (max > 0) {
                    setColumnWidth(i, Math.min(max, 65280));
                    return;
                }
                return;
            } catch (IllegalStateException e) {
                throw new IllegalStateException("Could not auto-size column. Make sure the column was tracked prior to auto-sizing the column.", e);
            }
        }
        throw new IllegalStateException("Cannot trackColumnForAutoSizing because autoSizeColumnTracker failed to initialize (possibly due to fonts not being installed in your OS)");
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public SXSSFDrawing createDrawingPatriarch() {
        return new SXSSFDrawing(getWorkbook(), this._sh.createDrawingPatriarch());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void createFreezePane(int i, int i2) {
        this._sh.createFreezePane(i, i2);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public SXSSFRow createRow(int i) {
        int lastRowIndex = SpreadsheetVersion.EXCEL2007.getLastRowIndex();
        if (i >= 0 && i <= lastRowIndex) {
            SheetDataWriter sheetDataWriter = this._writer;
            if (sheetDataWriter != null && i <= sheetDataWriter.getLastFlushedRow()) {
                throw new IllegalArgumentException("Attempting to write a row[" + i + "] in the range [0," + this._writer.getLastFlushedRow() + "] that is already written to disk.");
            }
            if (this._sh.getPhysicalNumberOfRows() > 0 && i <= this._sh.getLastRowNum()) {
                throw new IllegalArgumentException("Attempting to write a row[" + i + "] in the range [0," + this._sh.getLastRowNum() + "] that is already written to disk.");
            }
            SXSSFRow sXSSFRow = new SXSSFRow(this);
            sXSSFRow.setRowNumWithoutUpdatingSheet(i);
            this._rows.put(Integer.valueOf(i), sXSSFRow);
            this.allFlushed = false;
            if (this._randomAccessWindowSize >= 0) {
                int size = this._rows.size();
                int i2 = this._randomAccessWindowSize;
                if (size > i2) {
                    try {
                        flushRows(i2);
                    } catch (IOException e) {
                        throw new IllegalStateException(e);
                    }
                }
            }
            return sXSSFRow;
        }
        throw new IllegalArgumentException("Invalid row number (" + i + ") outside allowable range (0.." + lastRowIndex + MotionUtils.f31762d);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void createSplitPane(int i, int i2, int i3, int i4, PaneType paneType) {
        this._sh.createSplitPane(i, i2, i3, i4, paneType);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public XSSFComment getCellComment(CellAddress cellAddress) {
        return this._sh.getCellComment(cellAddress);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public XSSFDrawing getDrawingPatriarch() {
        return this._sh.getDrawingPatriarch();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public double getMargin(PageMargin pageMargin) {
        return this._sh.getMargin(pageMargin);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public SXSSFRow getRow(int i) {
        return this._rows.get(Integer.valueOf(i));
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public SXSSFWorkbook getWorkbook() {
        return this._workbook;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setMargin(PageMargin pageMargin, double d) {
        this._sh.setMargin(pageMargin, d);
    }

    public void setTabColor(int i) {
        CTWorksheet cTWorksheet = this._sh.getCTWorksheet();
        CTSheetPr sheetPr = cTWorksheet.getSheetPr();
        if (sheetPr == null) {
            sheetPr = cTWorksheet.addNewSheetPr();
        }
        CTColor newInstance = CTColor.Factory.newInstance();
        newInstance.setIndexed(i);
        sheetPr.setTabColor(newInstance);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    @NotImplemented
    public void shiftRows(int i, int i2, int i3, boolean z, boolean z2) {
        throw new IllegalStateException(HttpStatus.Not_Implemented);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public XSSFHyperlink getHyperlink(int i, int i2) {
        return this._sh.getHyperlink(i, i2);
    }

    public void flushRows() throws IOException {
        flushRows(0);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public XSSFHyperlink getHyperlink(CellAddress cellAddress) {
        return this._sh.getHyperlink(cellAddress);
    }

    public SXSSFSheet(SXSSFWorkbook sXSSFWorkbook, XSSFSheet xSSFSheet) throws IOException {
        this._workbook = sXSSFWorkbook;
        this._sh = xSSFSheet;
        this._writer = sXSSFWorkbook.createSheetDataWriter();
        setRandomAccessWindowSize(sXSSFWorkbook.getRandomAccessWindowSize());
        try {
            this._autoSizeColumnTracker = new AutoSizeColumnTracker(this);
        } catch (InternalError e) {
            LOG.atWarn().log("Failed to create AutoSizeColumnTracker, possibly due to fonts not being installed in your OS", e);
        }
    }
}
