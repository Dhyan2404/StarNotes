package org.apache.poi.xssf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.Spliterator;
import java.util.TreeMap;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.PartAlreadyExistsException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackageRelationshipCollection;
import org.apache.poi.openxml4j.opc.TargetMode;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.FormulaShifter;
import org.apache.poi.ss.formula.SheetNameFormatter;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellCopyPolicy;
import org.apache.poi.ss.usermodel.CellRange;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.DataValidation;
import org.apache.poi.ss.usermodel.DataValidationHelper;
import org.apache.poi.ss.usermodel.Footer;
import org.apache.poi.ss.usermodel.Header;
import org.apache.poi.ss.usermodel.IgnoredErrorType;
import org.apache.poi.ss.usermodel.Name;
import org.apache.poi.ss.usermodel.PageMargin;
import org.apache.poi.ss.usermodel.PaneType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Table;
import org.apache.poi.ss.util.AreaReference;
import org.apache.poi.ss.util.CellAddress;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.CellRangeAddressList;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.ss.util.PaneInformation;
import org.apache.poi.ss.util.SSCellRange;
import org.apache.poi.ss.util.SheetUtil;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Removal;
import org.apache.poi.xssf.model.Comments;
import org.apache.poi.xssf.usermodel.XSSFComment;
import org.apache.poi.xssf.usermodel.XSSFPivotTable;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.helpers.ColumnHelper;
import org.apache.poi.xssf.usermodel.helpers.XSSFColumnShifter;
import org.apache.poi.xssf.usermodel.helpers.XSSFIgnoredErrorHelper;
import org.apache.poi.xssf.usermodel.helpers.XSSFPasswordHelper;
import org.apache.poi.xssf.usermodel.helpers.XSSFRowShifter;
import org.apache.xmlbeans.XmlException;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBreak;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcPr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCol;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDrawing;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHeaderFooter;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredError;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTLegacyDrawing;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCell;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOutlinePr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageBreak;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageMargins;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageSetUpPr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPane;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPrintOptions;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRow;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSelection;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetData;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetDimension;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetFormatPr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetPr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetProtection;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetView;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetViews;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumn;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableFormula;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTablePart;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheetSource;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STCalcMode;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellFormulaType;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STPane;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STPaneState;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.WorksheetDocument;

/* loaded from: classes13.dex */
public class XSSFSheet extends POIXMLDocumentPart implements Sheet, OoxmlSheetExtensions {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final double DEFAULT_MARGIN_BOTTOM = 0.75d;
    private static final double DEFAULT_MARGIN_FOOTER = 0.3d;
    private static final double DEFAULT_MARGIN_HEADER = 0.3d;
    private static final double DEFAULT_MARGIN_LEFT = 0.7d;
    private static final double DEFAULT_MARGIN_RIGHT = 0.7d;
    private static final double DEFAULT_MARGIN_TOP = 0.75d;
    private static final double DEFAULT_ROW_HEIGHT = 15.0d;
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSSFSheet.class);
    private final SortedMap<Integer, XSSFRow> _rows;
    private List<CellRangeAddress> arrayFormulas;
    private ColumnHelper columnHelper;
    private final XSSFDataValidationHelper dataValidationHelper;
    private CellRangeAddress dimensionOverride;
    private List<XSSFHyperlink> hyperlinks;
    private Map<Integer, CTCellFormula> sharedFormulas;
    protected CTSheet sheet;
    private Comments sheetComments;
    private SortedMap<String, XSSFTable> tables;
    protected CTWorksheet worksheet;
    private XSSFVMLDrawing xssfvmlDrawing;

    /* renamed from: org.apache.poi.xssf.usermodel.XSSFSheet$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199651 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$PageMargin;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$PaneType;

        static {
            int[] iArr = new int[PageMargin.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$PageMargin = iArr;
            try {
                iArr[PageMargin.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$PageMargin[PageMargin.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$PageMargin[PageMargin.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$PageMargin[PageMargin.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$PageMargin[PageMargin.HEADER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$PageMargin[PageMargin.FOOTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[PaneType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$PaneType = iArr2;
            try {
                iArr2[PaneType.LOWER_RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$PaneType[PaneType.UPPER_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$PaneType[PaneType.LOWER_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$PaneType[PaneType.UPPER_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public XSSFSheet() {
        this._rows = new TreeMap();
        this.dataValidationHelper = new XSSFDataValidationHelper(this);
        onDocumentCreate();
    }

    private void checkForIntersectingMergedRegions() {
        List<CellRangeAddress> mergedRegions = getMergedRegions();
        int size = mergedRegions.size();
        int i = 0;
        while (i < size) {
            CellRangeAddress cellRangeAddress = mergedRegions.get(i);
            i++;
            for (CellRangeAddress cellRangeAddress2 : mergedRegions.subList(i, mergedRegions.size())) {
                if (cellRangeAddress.intersects(cellRangeAddress2)) {
                    throw new IllegalStateException("The range " + cellRangeAddress.formatAsString() + " intersects with another merged region " + cellRangeAddress2.formatAsString() + " in this sheet");
                }
            }
        }
    }

    private void checkForMergedRegionsIntersectingArrayFormulas() {
        Iterator<CellRangeAddress> it2 = getMergedRegions().iterator();
        while (it2.hasNext()) {
            validateArrayFormulas(it2.next());
        }
    }

    public static void cloneTables(XSSFSheet xSSFSheet) {
        String subtotalFormulaStartFromTotalsRowFunction;
        for (XSSFTable xSSFTable : xSSFSheet.getTables()) {
            XSSFTable createTable = xSSFTable.supportsAreaReference(xSSFTable.getArea()) ? xSSFSheet.createTable(xSSFTable.getArea()) : null;
            if (createTable != null) {
                createTable.updateHeaders();
                createTable.setStyleName(xSSFTable.getStyleName());
                XSSFTableStyleInfo xSSFTableStyleInfo = (XSSFTableStyleInfo) xSSFTable.getStyle();
                XSSFTableStyleInfo xSSFTableStyleInfo2 = (XSSFTableStyleInfo) createTable.getStyle();
                if (xSSFTableStyleInfo != null && xSSFTableStyleInfo2 != null) {
                    xSSFTableStyleInfo2.setShowColumnStripes(xSSFTableStyleInfo.isShowColumnStripes());
                    xSSFTableStyleInfo2.setShowRowStripes(xSSFTableStyleInfo.isShowRowStripes());
                    xSSFTableStyleInfo2.setFirstColumn(xSSFTableStyleInfo.isShowFirstColumn());
                    xSSFTableStyleInfo2.setLastColumn(xSSFTableStyleInfo.isShowLastColumn());
                }
                createTable.getCTTable().setAutoFilter(xSSFTable.getCTTable().getAutoFilter());
                int totalsRowCount = xSSFTable.getTotalsRowCount();
                if (totalsRowCount == 1) {
                    XSSFRow row = xSSFSheet.getRow(createTable.getEndCellReference().getRow());
                    if (createTable.getCTTable().getTableColumns() != null && !createTable.getCTTable().getTableColumns().getTableColumnList().isEmpty()) {
                        createTable.getCTTable().setTotalsRowCount(totalsRowCount);
                        for (int i = 0; i < createTable.getCTTable().getTableColumns().getTableColumnList().size(); i++) {
                            CTTableColumn cTTableColumn = xSSFTable.getCTTable().getTableColumns().getTableColumnList().get(i);
                            CTTableColumn cTTableColumn2 = createTable.getCTTable().getTableColumns().getTableColumnList().get(i);
                            cTTableColumn2.setTotalsRowFunction(cTTableColumn.getTotalsRowFunction());
                            int intValue = cTTableColumn2.getTotalsRowFunction().intValue();
                            xSSFSheet.getWorkbook().setCellFormulaValidation(false);
                            if (intValue == 10) {
                                CTTableFormula totalsRowFormula = cTTableColumn.getTotalsRowFormula();
                                cTTableColumn2.setTotalsRowFormula(totalsRowFormula);
                                row.getCell(createTable.getStartCellReference().getCol() + i).setCellFormula(totalsRowFormula.getStringValue());
                            } else if (intValue != 1 && (subtotalFormulaStartFromTotalsRowFunction = getSubtotalFormulaStartFromTotalsRowFunction(intValue)) != null) {
                                row.getCell(createTable.getStartCellReference().getCol() + i).setCellFormula(subtotalFormulaStartFromTotalsRowFunction + "," + createTable.getName() + IteratorUtils.f104923a + cTTableColumn2.getName() + "])");
                            }
                        }
                    }
                }
                if (createTable.getCTTable().getTableColumns() != null && !createTable.getCTTable().getTableColumns().getTableColumnList().isEmpty()) {
                    createTable.getCTTable().setTotalsRowCount(totalsRowCount);
                    for (int i2 = 0; i2 < createTable.getCTTable().getTableColumns().getTableColumnList().size(); i2++) {
                        CTTableColumn cTTableColumn3 = xSSFTable.getCTTable().getTableColumns().getTableColumnList().get(i2);
                        CTTableColumn cTTableColumn4 = createTable.getCTTable().getTableColumns().getTableColumnList().get(i2);
                        if (cTTableColumn3.getCalculatedColumnFormula() != null) {
                            cTTableColumn4.setCalculatedColumnFormula(cTTableColumn3.getCalculatedColumnFormula());
                            CTTableFormula calculatedColumnFormula = cTTableColumn4.getCalculatedColumnFormula();
                            String replace = cTTableColumn3.getCalculatedColumnFormula().getStringValue().replace(xSSFTable.getName(), createTable.getName());
                            calculatedColumnFormula.setStringValue(replace);
                            int row2 = createTable.getEndCellReference().getRow() - createTable.getTotalsRowCount();
                            int col = createTable.getStartCellReference().getCol() + i2;
                            xSSFSheet.getWorkbook().setCellFormulaValidation(false);
                            for (int row3 = createTable.getStartCellReference().getRow() + createTable.getHeaderRowCount(); row3 <= row2; row3++) {
                                XSSFRow row4 = xSSFSheet.getRow(row3);
                                if (row4 == null) {
                                    row4 = xSSFSheet.createRow(row3);
                                }
                                row4.getCell(col, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK).setCellFormula(replace);
                            }
                        }
                    }
                }
            }
            xSSFSheet.removeTable(xSSFTable);
        }
    }

    private void collapseColumn(int i) {
        CTCols colsArray = this.worksheet.getColsArray(0);
        int indexOfColumn = this.columnHelper.getIndexOfColumn(colsArray, this.columnHelper.getColumn(i, false));
        if (indexOfColumn == -1) {
            return;
        }
        int findStartOfColumnOutlineGroup = findStartOfColumnOutlineGroup(indexOfColumn);
        setColumn(setGroupHidden(findStartOfColumnOutlineGroup, colsArray.getColArray(findStartOfColumnOutlineGroup).getOutlineLevel(), true) + 1, 0, null, null, Boolean.TRUE);
    }

    private void collapseRow(int i) {
        XSSFRow row = getRow(i);
        if (row != null) {
            int writeHidden = writeHidden(row, findStartOfRowOutlineGroup(i), true);
            if (getRow(writeHidden) != null) {
                getRow(writeHidden).getCTRow().setCollapsed(true);
            } else {
                createRow(writeHidden).getCTRow().setCollapsed(true);
            }
        }
    }

    private boolean containsColumn(CTCol cTCol, int i) {
        long j = i;
        return cTCol.getMin() <= j && j <= cTCol.getMax();
    }

    private XSSFPivotTable createPivotTable() {
        XSSFWorkbook workbook = getWorkbook();
        List<XSSFPivotTable> pivotTables = workbook.getPivotTables();
        int size = getWorkbook().getPivotTables().size() + 1;
        XSSFPivotTable xSSFPivotTable = (XSSFPivotTable) createRelationship(XSSFRelation.PIVOT_TABLE, getWorkbook().getXssfFactory(), size);
        xSSFPivotTable.setParentSheet(this);
        pivotTables.add(xSSFPivotTable);
        XSSFWorkbook workbook2 = getWorkbook();
        XSSFRelation xSSFRelation = XSSFRelation.PIVOT_CACHE_DEFINITION;
        XSSFPivotCacheDefinition xSSFPivotCacheDefinition = (XSSFPivotCacheDefinition) workbook2.createRelationship(xSSFRelation, getWorkbook().getXssfFactory(), size);
        String relationId = workbook2.getRelationId(xSSFPivotCacheDefinition);
        xSSFPivotTable.getPackagePart().addRelationship(xSSFPivotCacheDefinition.getPackagePart().getPartName(), TargetMode.INTERNAL, xSSFRelation.getRelation());
        xSSFPivotTable.setPivotCacheDefinition(xSSFPivotCacheDefinition);
        xSSFPivotTable.setPivotCache(new XSSFPivotCache(workbook2.addPivotCache(relationId)));
        xSSFPivotTable.getPivotCacheDefinition().getCTPivotCacheDefinition().setId(xSSFPivotCacheDefinition.getRelationId((XSSFPivotCacheRecords) xSSFPivotCacheDefinition.createRelationship(XSSFRelation.PIVOT_CACHE_RECORDS, getWorkbook().getXssfFactory(), size)));
        workbook.setPivotTables(pivotTables);
        return xSSFPivotTable;
    }

    private CTOutlinePr ensureOutlinePr() {
        boolean isSetSheetPr = this.worksheet.isSetSheetPr();
        CTWorksheet cTWorksheet = this.worksheet;
        CTSheetPr sheetPr = isSetSheetPr ? cTWorksheet.getSheetPr() : cTWorksheet.addNewSheetPr();
        return sheetPr.isSetOutlinePr() ? sheetPr.getOutlinePr() : sheetPr.addNewOutlinePr();
    }

    private void expandColumn(int i) {
        CTCols colsArray = this.worksheet.getColsArray(0);
        CTCol column = this.columnHelper.getColumn(i, false);
        int findColInfoIdx = column == null ? -1 : findColInfoIdx(Math.toIntExact(column.getMax()), this.columnHelper.getIndexOfColumn(colsArray, column));
        if (findColInfoIdx != -1 && isColumnGroupCollapsed(findColInfoIdx)) {
            int findEndOfColumnOutlineGroup = findEndOfColumnOutlineGroup(findColInfoIdx);
            CTCol[] colArray = colsArray.getColArray();
            CTCol cTCol = colArray[findEndOfColumnOutlineGroup];
            if (!isColumnGroupHiddenByParent(findColInfoIdx)) {
                short outlineLevel = cTCol.getOutlineLevel();
                boolean z = false;
                for (int findStartOfColumnOutlineGroup = findStartOfColumnOutlineGroup(findColInfoIdx); findStartOfColumnOutlineGroup <= findEndOfColumnOutlineGroup; findStartOfColumnOutlineGroup++) {
                    CTCol cTCol2 = colArray[findStartOfColumnOutlineGroup];
                    if (outlineLevel == cTCol2.getOutlineLevel()) {
                        cTCol2.unsetHidden();
                        if (z) {
                            cTCol2.setCollapsed(true);
                            z = false;
                        }
                    } else {
                        z = true;
                    }
                }
            }
            int intExact = Math.toIntExact(cTCol.getMax() + 1);
            Boolean bool = Boolean.FALSE;
            setColumn(intExact, null, null, bool, bool);
        }
    }

    private void expandRow(int i) {
        if (i == -1) {
            return;
        }
        XSSFRow row = getRow(i);
        if (row.getCTRow().isSetHidden()) {
            int findEndOfRowOutlineGroup = findEndOfRowOutlineGroup(i);
            short outlineLevel = row.getCTRow().getOutlineLevel();
            if (!isRowGroupHiddenByParent(i)) {
                for (int findStartOfRowOutlineGroup = findStartOfRowOutlineGroup(i); findStartOfRowOutlineGroup < findEndOfRowOutlineGroup; findStartOfRowOutlineGroup++) {
                    if (outlineLevel == getRow(findStartOfRowOutlineGroup).getCTRow().getOutlineLevel()) {
                        getRow(findStartOfRowOutlineGroup).getCTRow().unsetHidden();
                    } else if (!isRowGroupCollapsed(findStartOfRowOutlineGroup)) {
                        getRow(findStartOfRowOutlineGroup).getCTRow().unsetHidden();
                    }
                }
            }
            CTRow cTRow = getRow(findEndOfRowOutlineGroup).getCTRow();
            if (cTRow.getCollapsed()) {
                cTRow.unsetCollapsed();
            }
        }
    }

    private int findColInfoIdx(int i, int i2) {
        CTCols colsArray = this.worksheet.getColsArray(0);
        if (i < 0) {
            throw new IllegalArgumentException("column parameter out of range: " + i);
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("fromIdx parameter out of range: " + i2);
        }
        CTCol[] colArray = colsArray.getColArray();
        for (int i3 = i2; i3 < colArray.length; i3++) {
            CTCol cTCol = colArray[i3];
            if (containsColumn(cTCol, i)) {
                return i3;
            }
            if (cTCol.getMin() > i2) {
                return -1;
            }
        }
        return -1;
    }

    private int findEndOfColumnOutlineGroup(int i) {
        CTCol[] colArray = this.worksheet.getColsArray(0).getColArray();
        CTCol cTCol = colArray[i];
        short outlineLevel = cTCol.getOutlineLevel();
        int length = colArray.length - 1;
        while (i < length) {
            int i2 = i + 1;
            CTCol cTCol2 = colArray[i2];
            if (!isAdjacentBefore(cTCol, cTCol2) || cTCol2.getOutlineLevel() < outlineLevel) {
                break;
            }
            i = i2;
            cTCol = cTCol2;
        }
        return i;
    }

    private int findStartOfColumnOutlineGroup(int i) {
        CTCol[] colArray = this.worksheet.getColsArray(0).getColArray();
        CTCol cTCol = colArray[i];
        short outlineLevel = cTCol.getOutlineLevel();
        while (i != 0) {
            CTCol cTCol2 = colArray[i - 1];
            if (!isAdjacentBefore(cTCol2, cTCol) || cTCol2.getOutlineLevel() < outlineLevel) {
                break;
            }
            i--;
            cTCol = cTCol2;
        }
        return i;
    }

    private int findStartOfRowOutlineGroup(int i) {
        short outlineLevel = getRow(i).getCTRow().getOutlineLevel();
        while (getRow(i) != null) {
            if (getRow(i).getCTRow().getOutlineLevel() < outlineLevel) {
                return i + 1;
            }
            i--;
        }
        return i;
    }

    private int[] getBreaks(CTPageBreak cTPageBreak) {
        CTBreak[] brkArray = cTPageBreak.getBrkArray();
        int[] iArr = new int[brkArray.length];
        for (int i = 0; i < brkArray.length; i++) {
            iArr[i] = Math.toIntExact(brkArray[i].getId() - 1);
        }
        return iArr;
    }

    private CellRange<XSSFCell> getCellRange(CellRangeAddress cellRangeAddress) {
        int firstRow = cellRangeAddress.getFirstRow();
        int firstColumn = cellRangeAddress.getFirstColumn();
        int lastRow = cellRangeAddress.getLastRow();
        int lastColumn = cellRangeAddress.getLastColumn();
        int i = (lastRow - firstRow) + 1;
        int i2 = (lastColumn - firstColumn) + 1;
        ArrayList arrayList = new ArrayList(i * i2);
        for (int i3 = firstRow; i3 <= lastRow; i3++) {
            for (int i4 = firstColumn; i4 <= lastColumn; i4++) {
                XSSFRow row = getRow(i3);
                if (row == null) {
                    row = createRow(i3);
                }
                XSSFCell cell = row.getCell(i4);
                if (cell == null) {
                    cell = row.createCell(i4);
                }
                arrayList.add(cell);
            }
        }
        return SSCellRange.create(firstRow, firstColumn, i, i2, arrayList, XSSFCell.class);
    }

    private CTSheetView getDefaultSheetView(boolean z) {
        int sizeOfSheetViewArray;
        CTSheetViews sheetTypeSheetViews = getSheetTypeSheetViews(z);
        if (sheetTypeSheetViews == null || (sizeOfSheetViewArray = sheetTypeSheetViews.sizeOfSheetViewArray()) == 0) {
            return null;
        }
        return sheetTypeSheetViews.getSheetViewArray(sizeOfSheetViewArray - 1);
    }

    private short getMaxOutlineLevelCols() {
        int i = 0;
        for (CTCol cTCol : this.worksheet.getColsArray(0).getColArray()) {
            i = Math.max(i, (int) cTCol.getOutlineLevel());
        }
        return (short) i;
    }

    private short getMaxOutlineLevelRows() {
        Iterator<XSSFRow> it2 = this._rows.values().iterator();
        int i = 0;
        while (it2.hasNext()) {
            i = Math.max(i, (int) it2.next().getCTRow().getOutlineLevel());
        }
        return (short) i;
    }

    private CTPane getPane(boolean z) {
        CTSheetView defaultSheetView = getDefaultSheetView(z);
        if (defaultSheetView == null) {
            return null;
        }
        return (defaultSheetView.isSetPane() || !z) ? defaultSheetView.getPane() : defaultSheetView.addNewPane();
    }

    private static String getReferenceBuiltInRecord(String str, int i, int i2, int i3, int i4) {
        String str2;
        int i5;
        CellReference cellReference = new CellReference(str, 0, i, true, true);
        CellReference cellReference2 = new CellReference(str, 0, i2, true, true);
        CellReference cellReference3 = new CellReference(str, i3, 0, true, true);
        CellReference cellReference4 = new CellReference(str, i4, 0, true, true);
        String format = SheetNameFormatter.format(str);
        String str3 = "";
        if (i == -1 && i2 == -1) {
            i5 = i3;
            str2 = "";
        } else {
            str2 = format + "!$" + cellReference.getCellRefParts()[2] + ":$" + cellReference2.getCellRefParts()[2];
            i5 = i3;
        }
        if (i5 != -1 || i4 != -1) {
            String str4 = cellReference3.getCellRefParts()[1];
            String str5 = cellReference4.getCellRefParts()[1];
            if (!str4.equals("0") && !str5.equals("0")) {
                str3 = format + "!$" + str4 + ":$" + str5;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        if (sb.length() > 0 && str3.length() > 0) {
            sb.append(',');
        }
        sb.append(str3);
        return sb.toString();
    }

    private CellRangeAddress getRepeatingRowsOrColumns(boolean z) {
        String refersToFormula;
        XSSFName builtInName = getWorkbook().getBuiltInName(XSSFName.BUILTIN_PRINT_TITLE, getWorkbook().getSheetIndex(this));
        if (builtInName == null || (refersToFormula = builtInName.getRefersToFormula()) == null) {
            return null;
        }
        String[] split = refersToFormula.split(",");
        SpreadsheetVersion spreadsheetVersion = SpreadsheetVersion.EXCEL2007;
        int lastRowIndex = spreadsheetVersion.getLastRowIndex();
        int lastColumnIndex = spreadsheetVersion.getLastColumnIndex();
        for (String str : split) {
            CellRangeAddress valueOf = CellRangeAddress.valueOf(str);
            if ((valueOf.getFirstColumn() == 0 && valueOf.getLastColumn() == lastColumnIndex) || (valueOf.getFirstColumn() == -1 && valueOf.getLastColumn() == -1)) {
                if (z) {
                    return valueOf;
                }
            } else if (((valueOf.getFirstRow() == 0 && valueOf.getLastRow() == lastRowIndex) || (valueOf.getFirstRow() == -1 && valueOf.getLastRow() == -1)) && !z) {
                return valueOf;
            }
        }
        return null;
    }

    private List<XSSFRow> getRows(int i, int i2, boolean z) {
        if (i > i2) {
            throw new IllegalArgumentException("getRows: startRowNum must be less than or equal to endRowNum");
        }
        ArrayList arrayList = new ArrayList();
        if (z) {
            while (i <= i2) {
                XSSFRow row = getRow(i);
                if (row == null) {
                    row = createRow(i);
                }
                arrayList.add(row);
                i++;
            }
        } else {
            arrayList.addAll(this._rows.subMap(Integer.valueOf(i), Integer.valueOf(i2 + 1)).values());
        }
        return arrayList;
    }

    private CTHeaderFooter getSheetTypeHeaderFooter() {
        if (this.worksheet.getHeaderFooter() == null) {
            this.worksheet.setHeaderFooter(CTHeaderFooter.Factory.newInstance());
        }
        return this.worksheet.getHeaderFooter();
    }

    private CTPageSetUpPr getSheetTypePageSetUpPr() {
        CTSheetPr sheetTypeSheetPr = getSheetTypeSheetPr();
        return sheetTypeSheetPr.isSetPageSetUpPr() ? sheetTypeSheetPr.getPageSetUpPr() : sheetTypeSheetPr.addNewPageSetUpPr();
    }

    private CTSelection getSheetTypeSelection(boolean z) {
        CTSheetView defaultSheetView = getDefaultSheetView(z);
        if (defaultSheetView == null) {
            return null;
        }
        int sizeOfSelectionArray = defaultSheetView.sizeOfSelectionArray();
        if (sizeOfSelectionArray != 0) {
            return defaultSheetView.getSelectionArray(sizeOfSelectionArray - 1);
        }
        if (z) {
            return defaultSheetView.addNewSelection();
        }
        return null;
    }

    private CTSheetFormatPr getSheetTypeSheetFormatPr() {
        return this.worksheet.isSetSheetFormatPr() ? this.worksheet.getSheetFormatPr() : this.worksheet.addNewSheetFormatPr();
    }

    private CTSheetPr getSheetTypeSheetPr() {
        if (this.worksheet.getSheetPr() == null) {
            this.worksheet.setSheetPr(CTSheetPr.Factory.newInstance());
        }
        return this.worksheet.getSheetPr();
    }

    private static String getSubtotalFormulaStartFromTotalsRowFunction(int i) {
        switch (i) {
            case 1:
            case 10:
            default:
                return null;
            case 2:
                return "SUBTOTAL(109";
            case 3:
                return "SUBTOTAL(105";
            case 4:
                return "SUBTOTAL(104";
            case 5:
                return "SUBTOTAL(101";
            case 6:
                return "SUBTOTAL(103";
            case 7:
                return "SUBTOTAL(102";
            case 8:
                return "SUBTOTAL(107";
            case 9:
                return "SUBTOTAL(110";
        }
    }

    private void groupColumn1Based(int i, int i2) {
        CTCols colsArray = this.worksheet.getColsArray(0);
        CTCol newInstance = CTCol.Factory.newInstance();
        long j = i2;
        CTCol column1Based = this.columnHelper.getColumn1Based(j, false);
        if (column1Based != null) {
            column1Based = (CTCol) column1Based.copy();
        }
        newInstance.setMin(i);
        newInstance.setMax(j);
        this.columnHelper.addCleanColIntoCols(colsArray, newInstance);
        CTCol column1Based2 = this.columnHelper.getColumn1Based(j, false);
        if (column1Based != null && column1Based2 != null) {
            this.columnHelper.setColumnAttributes(column1Based, column1Based2);
        }
        while (i <= i2) {
            CTCol column1Based3 = this.columnHelper.getColumn1Based(i, false);
            column1Based3.setOutlineLevel((short) (column1Based3.getOutlineLevel() + 1));
            i = Math.toIntExact(column1Based3.getMax()) + 1;
        }
        this.worksheet.setColsArray(0, colsArray);
        setSheetFormatPrOutlineLevelCol();
    }

    private void initHyperlinks() {
        this.hyperlinks = new ArrayList();
        if (this.worksheet.isSetHyperlinks()) {
            try {
                PackageRelationshipCollection relationshipsByType = getPackagePart().getRelationshipsByType(XSSFRelation.SHEET_HYPERLINKS.getRelation());
                for (CTHyperlink cTHyperlink : this.worksheet.getHyperlinks().getHyperlinkArray()) {
                    this.hyperlinks.add(new XSSFHyperlink(cTHyperlink, cTHyperlink.getId() != null ? relationshipsByType.getRelationshipByID(cTHyperlink.getId()) : null));
                }
            } catch (InvalidFormatException e) {
                throw new POIXMLException(e);
            }
        }
    }

    private void initRows(CTWorksheet cTWorksheet) {
        if (cTWorksheet.getSheetData() == null || cTWorksheet.getSheetData().getRowArray() == null) {
            throw new IllegalArgumentException("Had empty sheet data when initializing the sheet");
        }
        this._rows.clear();
        this.tables = new TreeMap();
        this.sharedFormulas = new HashMap();
        this.arrayFormulas = new ArrayList();
        for (CTRow cTRow : cTWorksheet.getSheetData().getRowArray()) {
            XSSFRow xSSFRow = new XSSFRow(cTRow, this);
            this._rows.put(Integer.valueOf(xSSFRow.getRowNum()), xSSFRow);
        }
    }

    private boolean isAdjacentBefore(CTCol cTCol, CTCol cTCol2) {
        return cTCol.getMax() == cTCol2.getMin() - 1;
    }

    private boolean isColumnGroupCollapsed(int i) {
        CTCol[] colArray = this.worksheet.getColsArray(0).getColArray();
        int findEndOfColumnOutlineGroup = findEndOfColumnOutlineGroup(i);
        int i2 = findEndOfColumnOutlineGroup + 1;
        if (i2 >= colArray.length) {
            return false;
        }
        CTCol cTCol = colArray[i2];
        if (isAdjacentBefore(colArray[findEndOfColumnOutlineGroup], cTCol)) {
            return cTCol.getCollapsed();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0049 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isColumnGroupHiddenByParent(int r6) {
        /*
            r5 = this;
            org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet r0 = r5.worksheet
            r1 = 0
            org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols r0 = r0.getColsArray(r1)
            int r2 = r5.findEndOfColumnOutlineGroup(r6)
            org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCol[] r0 = r0.getColArray()
            int r3 = r0.length
            int r3 = r3 + (-1)
            if (r2 >= r3) goto L29
            int r3 = r2 + 1
            r3 = r0[r3]
            r2 = r0[r2]
            boolean r2 = r5.isAdjacentBefore(r2, r3)
            if (r2 == 0) goto L29
            short r2 = r3.getOutlineLevel()
            boolean r3 = r3.getHidden()
            goto L2b
        L29:
            r2 = r1
            r3 = r2
        L2b:
            int r6 = r5.findStartOfColumnOutlineGroup(r6)
            if (r6 <= 0) goto L46
            int r4 = r6 + (-1)
            r4 = r0[r4]
            r6 = r0[r6]
            boolean r5 = r5.isAdjacentBefore(r4, r6)
            if (r5 == 0) goto L46
            short r1 = r4.getOutlineLevel()
            boolean r5 = r4.getHidden()
            goto L47
        L46:
            r5 = r1
        L47:
            if (r2 <= r1) goto L4a
            return r3
        L4a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xssf.usermodel.XSSFSheet.isColumnGroupHiddenByParent(int):boolean");
    }

    private boolean isRowGroupCollapsed(int i) {
        int findEndOfRowOutlineGroup = findEndOfRowOutlineGroup(i) + 1;
        if (getRow(findEndOfRowOutlineGroup) == null) {
            return false;
        }
        return getRow(findEndOfRowOutlineGroup).getCTRow().getCollapsed();
    }

    private boolean isRowGroupHiddenByParent(int i) {
        short outlineLevel;
        boolean hidden;
        boolean z;
        int findEndOfRowOutlineGroup = findEndOfRowOutlineGroup(i);
        short s = 0;
        if (getRow(findEndOfRowOutlineGroup) == null) {
            hidden = false;
            outlineLevel = 0;
        } else {
            outlineLevel = getRow(findEndOfRowOutlineGroup).getCTRow().getOutlineLevel();
            hidden = getRow(findEndOfRowOutlineGroup).getCTRow().getHidden();
        }
        int findStartOfRowOutlineGroup = findStartOfRowOutlineGroup(i);
        if (findStartOfRowOutlineGroup < 0 || getRow(findStartOfRowOutlineGroup) == null) {
            z = false;
        } else {
            s = getRow(findStartOfRowOutlineGroup).getCTRow().getOutlineLevel();
            z = getRow(findStartOfRowOutlineGroup).getCTRow().getHidden();
        }
        return outlineLevel > s ? hidden : z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createPivotTable$2(AreaReference areaReference, CTWorksheetSource cTWorksheetSource) {
        String[] cellRefParts = areaReference.getFirstCell().getCellRefParts();
        String str = cellRefParts[1];
        String str2 = cellRefParts[2];
        String[] cellRefParts2 = areaReference.getLastCell().getCellRefParts();
        String str3 = cellRefParts2[1];
        cTWorksheetSource.setRef(str2 + str + ':' + cellRefParts2[2] + str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createPivotTable$3(Name name, CTWorksheetSource cTWorksheetSource) {
        cTWorksheetSource.setName(name.getNameName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createPivotTable$4(Table table, CTWorksheetSource cTWorksheetSource) {
        cTWorksheetSource.setName(table.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$shiftCommentsAndRows$0(int i, XSSFComment xSSFComment, XSSFComment xSSFComment2) {
        int row = xSSFComment.getRow();
        int row2 = xSSFComment2.getRow();
        return row == row2 ? xSSFComment.hashCode() - xSSFComment2.hashCode() : i > 0 ? row < row2 ? 1 : -1 : row > row2 ? 1 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$shiftCommentsForColumns$1(int i, XSSFComment xSSFComment, XSSFComment xSSFComment2) {
        int column = xSSFComment.getColumn();
        int column2 = xSSFComment2.getColumn();
        return column == column2 ? xSSFComment.hashCode() - xSSFComment2.hashCode() : i > 0 ? column < column2 ? 1 : -1 : column > column2 ? 1 : -1;
    }

    private static CTWorksheet newSheet() {
        CTWorksheet newInstance = CTWorksheet.Factory.newInstance();
        newInstance.addNewSheetFormatPr().setDefaultRowHeight(DEFAULT_ROW_HEIGHT);
        newInstance.addNewSheetViews().addNewSheetView().setWorkbookViewId(0L);
        newInstance.addNewDimension().setRef("A1");
        newInstance.addNewSheetData();
        CTPageMargins addNewPageMargins = newInstance.addNewPageMargins();
        addNewPageMargins.setBottom(0.75d);
        addNewPageMargins.setFooter(0.3d);
        addNewPageMargins.setHeader(0.3d);
        addNewPageMargins.setLeft(0.7d);
        addNewPageMargins.setRight(0.7d);
        addNewPageMargins.setTop(0.75d);
        return newInstance;
    }

    private void rebuildRows() {
        TreeMap treeMap = new TreeMap();
        CTSheetData sheetData = getCTWorksheet().getSheetData();
        for (CTRow cTRow : sheetData.getRowList()) {
            treeMap.put(Long.valueOf(cTRow.getR()), cTRow);
        }
        ArrayList arrayList = new ArrayList(treeMap.values());
        sheetData.setRowArray((CTRow[]) arrayList.toArray(new CTRow[arrayList.size()]));
        this._rows.clear();
        Iterator<CTRow> it2 = sheetData.getRowList().iterator();
        while (it2.hasNext()) {
            this._rows.put(Integer.valueOf(Math.toIntExact(r2.getRowNum())), new XSSFRow(it2.next(), this));
        }
    }

    private void rebuildTableFormulas(XSSFTable xSSFTable) {
        for (CTTableColumn cTTableColumn : xSSFTable.getCTTable().getTableColumns().getTableColumnList()) {
            if (cTTableColumn.getCalculatedColumnFormula() != null) {
                int intExact = Math.toIntExact(cTTableColumn.getId());
                String stringValue = cTTableColumn.getCalculatedColumnFormula().getStringValue();
                int row = xSSFTable.getEndCellReference().getRow() - xSSFTable.getTotalsRowCount();
                int col = (xSSFTable.getStartCellReference().getCol() + intExact) - 1;
                boolean cellFormulaValidation = getWorkbook().getCellFormulaValidation();
                try {
                    getWorkbook().setCellFormulaValidation(false);
                    for (int row2 = xSSFTable.getStartCellReference().getRow() + xSSFTable.getHeaderRowCount(); row2 <= row; row2++) {
                        XSSFRow row3 = getRow(row2);
                        if (row3 == null) {
                            row3 = createRow(row2);
                        }
                        row3.getCell(col, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK).setCellFormula(stringValue);
                    }
                } finally {
                    getWorkbook().setCellFormulaValidation(cellFormulaValidation);
                }
            }
        }
    }

    private void removeBreak(int i, CTPageBreak cTPageBreak) {
        int i2 = i + 1;
        CTBreak[] brkArray = cTPageBreak.getBrkArray();
        for (int i3 = 0; i3 < brkArray.length; i3++) {
            if (brkArray[i3].getId() == i2) {
                cTPageBreak.removeBrk(i3);
            }
        }
    }

    private void removeOverwritten(int i, int i2, int i3) {
        XSSFVMLDrawing vMLDrawing = getVMLDrawing(false);
        HashSet hashSet = new HashSet();
        Iterator<Row> rowIterator = rowIterator();
        while (rowIterator.hasNext()) {
            XSSFRow xSSFRow = (XSSFRow) rowIterator.next();
            int rowNum = xSSFRow.getRowNum();
            if (shouldRemoveRow(i, i2, i3, rowNum)) {
                hashSet.add(Integer.valueOf(rowNum));
                for (Cell cell : xSSFRow) {
                    if (!cell.isPartOfArrayFormulaGroup()) {
                        cell.setBlank();
                    }
                }
                this.worksheet.getSheetData().removeRow(this._rows.headMap(Integer.valueOf(xSSFRow.getRowNum())).size());
                rowIterator.remove();
            }
        }
        if (this.sheetComments != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<CellAddress> cellAddresses = this.sheetComments.getCellAddresses();
            while (cellAddresses.hasNext()) {
                CellAddress next = cellAddresses.next();
                if (hashSet.contains(Integer.valueOf(next.getRow()))) {
                    arrayList.add(next);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                CellAddress cellAddress = (CellAddress) it2.next();
                this.sheetComments.removeComment(cellAddress);
                if (vMLDrawing != null) {
                    vMLDrawing.removeCommentShape(cellAddress.getRow(), cellAddress.getColumn());
                }
            }
        }
        if (this.hyperlinks != null) {
            Iterator it3 = new ArrayList(this.hyperlinks).iterator();
            while (it3.hasNext()) {
                XSSFHyperlink xSSFHyperlink = (XSSFHyperlink) it3.next();
                CellRangeAddress valueOf = CellRangeAddress.valueOf(xSSFHyperlink.getCellRef());
                if (valueOf.getFirstRow() == valueOf.getLastRow() && hashSet.contains(Integer.valueOf(valueOf.getFirstRow()))) {
                    removeHyperlink(xSSFHyperlink);
                } else if (valueOf.getFirstRow() != valueOf.getLastRow()) {
                    boolean z = true;
                    for (int firstRow = valueOf.getFirstRow(); firstRow <= valueOf.getLastRow() && z; firstRow++) {
                        z = hashSet.contains(Integer.valueOf(firstRow));
                    }
                    if (z) {
                        removeHyperlink(xSSFHyperlink);
                    }
                }
            }
        }
    }

    private CTSheetProtection safeGetProtectionField() {
        return !isSheetProtectionEnabled() ? this.worksheet.addNewSheetProtection() : this.worksheet.getSheetProtection();
    }

    private void setBreak(int i, CTPageBreak cTPageBreak, int i2) {
        CTBreak addNewBrk = cTPageBreak.addNewBrk();
        addNewBrk.setId(i + 1);
        addNewBrk.setMan(true);
        addNewBrk.setMax(i2);
        long sizeOfBrkArray = cTPageBreak.sizeOfBrkArray();
        cTPageBreak.setCount(sizeOfBrkArray);
        cTPageBreak.setManualBreakCount(sizeOfBrkArray);
    }

    private void setColWidthAttribute(CTCols cTCols) {
        for (CTCol cTCol : cTCols.getColArray()) {
            if (!cTCol.isSetWidth()) {
                cTCol.setWidth(getDefaultColumnWidth());
                cTCol.setCustomWidth(false);
            }
        }
    }

    private void setColumn(int i, Integer num, Integer num2, Boolean bool, Boolean bool2) {
        CTCol cTCol;
        CTCols colsArray = this.worksheet.getColsArray(0);
        CTCol[] colArray = colsArray.getColArray();
        int length = colArray.length;
        for (int i2 = 0; i2 < length; i2++) {
            cTCol = colArray[i2];
            long min = cTCol.getMin();
            long max = cTCol.getMax();
            long j = i;
            if (min >= j && max <= j) {
                break;
            } else {
                if (min > j) {
                    break;
                }
            }
        }
        cTCol = null;
        if (cTCol == null) {
            CTCol newInstance = CTCol.Factory.newInstance();
            long j2 = i;
            newInstance.setMin(j2);
            newInstance.setMax(j2);
            unsetCollapsed(bool2, newInstance);
            this.columnHelper.addCleanColIntoCols(colsArray, newInstance);
            return;
        }
        if ((num2 != null && cTCol.getOutlineLevel() != num2.intValue()) || (bool != null && cTCol.getHidden() != bool.booleanValue()) || (bool2 != null && cTCol.getCollapsed() != bool2.booleanValue()) || (num != null && (cTCol.getStyle() > ((long) num.intValue()) ? 1 : (cTCol.getStyle() == ((long) num.intValue()) ? 0 : -1)) != 0)) {
            long min2 = cTCol.getMin();
            long max2 = cTCol.getMax();
            long j3 = i;
            if (min2 == j3 && max2 == j3) {
                unsetCollapsed(bool2, cTCol);
                return;
            }
            if (min2 == j3 || max2 == j3) {
                if (min2 == j3) {
                    cTCol.setMin(1 + j3);
                } else {
                    cTCol.setMax(j3 - 1);
                }
                CTCol cloneCol = this.columnHelper.cloneCol(colsArray, cTCol);
                cloneCol.setMin(j3);
                unsetCollapsed(bool2, cloneCol);
                this.columnHelper.addCleanColIntoCols(colsArray, cloneCol);
                return;
            }
            CTCol cloneCol2 = this.columnHelper.cloneCol(colsArray, cTCol);
            CTCol cloneCol3 = this.columnHelper.cloneCol(colsArray, cTCol);
            int intExact = Math.toIntExact(max2);
            cTCol.setMax(j3 - 1);
            cloneCol2.setMin(j3);
            cloneCol2.setMax(j3);
            unsetCollapsed(bool2, cloneCol2);
            this.columnHelper.addCleanColIntoCols(colsArray, cloneCol2);
            cloneCol3.setMin(j3 + 1);
            cloneCol3.setMax(intExact);
            this.columnHelper.addCleanColIntoCols(colsArray, cloneCol3);
        }
    }

    private int setGroupHidden(int i, int i2, boolean z) {
        CTCol[] colArray = this.worksheet.getColsArray(0).getColArray();
        CTCol cTCol = colArray[i];
        while (i < colArray.length) {
            cTCol.setHidden(z);
            i++;
            if (i < colArray.length) {
                CTCol cTCol2 = colArray[i];
                if (!isAdjacentBefore(cTCol, cTCol2) || cTCol2.getOutlineLevel() < i2) {
                    break;
                }
                cTCol = cTCol2;
            }
        }
        return Math.toIntExact(cTCol.getMax());
    }

    private void setRepeatingRowsAndColumns(CellRangeAddress cellRangeAddress, CellRangeAddress cellRangeAddress2) {
        int i;
        int i2;
        int i3;
        int i4 = -1;
        if (cellRangeAddress != null) {
            i = cellRangeAddress.getFirstRow();
            i2 = cellRangeAddress.getLastRow();
            if ((i == -1 && i2 != -1) || i < -1 || i2 < -1 || i > i2) {
                throw new IllegalArgumentException("Invalid row range specification");
            }
        } else {
            i = -1;
            i2 = -1;
        }
        if (cellRangeAddress2 != null) {
            int firstColumn = cellRangeAddress2.getFirstColumn();
            i3 = cellRangeAddress2.getLastColumn();
            if ((firstColumn == -1 && i3 != -1) || firstColumn < -1 || i3 < -1 || firstColumn > i3) {
                throw new IllegalArgumentException("Invalid column range specification");
            }
            i4 = firstColumn;
        } else {
            i3 = -1;
        }
        int sheetIndex = getWorkbook().getSheetIndex(this);
        boolean z = cellRangeAddress == null && cellRangeAddress2 == null;
        XSSFName builtInName = getWorkbook().getBuiltInName(XSSFName.BUILTIN_PRINT_TITLE, sheetIndex);
        if (z) {
            if (builtInName != null) {
                getWorkbook().removeName(builtInName);
                return;
            }
            return;
        }
        if (builtInName == null) {
            builtInName = getWorkbook().createBuiltInName(XSSFName.BUILTIN_PRINT_TITLE, sheetIndex);
        }
        builtInName.setRefersToFormula(getReferenceBuiltInRecord(builtInName.getSheetName(), i4, i3, i, i2));
        if (this.worksheet.isSetPageSetup() && this.worksheet.isSetPageMargins()) {
            return;
        }
        getPrintSetup().setValidSettings(false);
    }

    private void setSheetFormatPrOutlineLevelCol() {
        getSheetTypeSheetFormatPr().setOutlineLevelCol(getMaxOutlineLevelCols());
    }

    private void setSheetFormatPrOutlineLevelRow() {
        getSheetTypeSheetFormatPr().setOutlineLevelRow(getMaxOutlineLevelRows());
    }

    private void shiftCommentsAndRows(int i, int i2, final int i3) {
        int shiftedRowNum;
        XSSFComment findCellComment;
        TreeMap treeMap = new TreeMap(new Comparator() { // from class: com.sunia.HTREnginev2.kso
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$shiftCommentsAndRows$0;
                lambda$shiftCommentsAndRows$0 = XSSFSheet.lambda$shiftCommentsAndRows$0(i3, (XSSFComment) obj, (XSSFComment) obj2);
                return lambda$shiftCommentsAndRows$0;
            }
        });
        Iterator<Row> rowIterator = rowIterator();
        while (rowIterator.hasNext()) {
            XSSFRow xSSFRow = (XSSFRow) rowIterator.next();
            int rowNum = xSSFRow.getRowNum();
            if (this.sheetComments != null && (shiftedRowNum = shiftedRowNum(i, i2, i3, rowNum)) != rowNum) {
                Iterator<CellAddress> cellAddresses = this.sheetComments.getCellAddresses();
                while (cellAddresses.hasNext()) {
                    CellAddress next = cellAddresses.next();
                    if (next.getRow() == rowNum && (findCellComment = this.sheetComments.findCellComment(next)) != null) {
                        treeMap.put(new XSSFComment(this.sheetComments, findCellComment.getCTComment(), findCellComment.getCTShape()), Integer.valueOf(shiftedRowNum));
                    }
                }
            }
            if (rowNum >= i && rowNum <= i2) {
                xSSFRow.shift(i3);
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            ((XSSFComment) entry.getKey()).setRow(((Integer) entry.getValue()).intValue());
        }
        rebuildRows();
    }

    private void shiftCommentsForColumns(XSSFVMLDrawing xSSFVMLDrawing, int i, int i2, final int i3) {
        XSSFComment findCellComment;
        TreeMap treeMap = new TreeMap(new Comparator() { // from class: com.sunia.HTREnginev2.lso
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$shiftCommentsForColumns$1;
                lambda$shiftCommentsForColumns$1 = XSSFSheet.lambda$shiftCommentsForColumns$1(i3, (XSSFComment) obj, (XSSFComment) obj2);
                return lambda$shiftCommentsForColumns$1;
            }
        });
        Comments comments = this.sheetComments;
        if (comments != null) {
            Iterator<CellAddress> cellAddresses = comments.getCellAddresses();
            while (cellAddresses.hasNext()) {
                CellAddress next = cellAddresses.next();
                int column = next.getColumn();
                int shiftedRowNum = shiftedRowNum(i, i2, i3, column);
                if (shiftedRowNum != column && (findCellComment = this.sheetComments.findCellComment(next)) != null) {
                    treeMap.put(new XSSFComment(this.sheetComments, findCellComment.getCTComment(), findCellComment.getCTShape()), Integer.valueOf(shiftedRowNum));
                }
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            ((XSSFComment) entry.getKey()).setColumn(((Integer) entry.getValue()).intValue());
        }
        rebuildRows();
    }

    private int shiftedRowNum(int i, int i2, int i3, int i4) {
        return (i4 >= i || (i3 <= 0 && i - i4 <= i3)) ? (i4 <= i2 || (i3 >= 0 && i4 - i2 <= i3)) ? i4 < i ? i4 + (i2 - i) : i4 > i2 ? i4 - (i2 - i) : i4 + i3 : i4 : i4;
    }

    private static boolean shouldRemoveRow(int i, int i2, int i3, int i4) {
        if (i4 < i + i3 || i4 > i2 + i3) {
            return false;
        }
        if (i3 <= 0 || i4 <= i2) {
            return i3 < 0 && i4 < i;
        }
        return true;
    }

    private void unsetCollapsed(Boolean bool, CTCol cTCol) {
        if (bool == null || !bool.booleanValue()) {
            cTCol.unsetCollapsed();
        } else {
            cTCol.setCollapsed(true);
        }
    }

    private void validateArrayFormulas(CellRangeAddress cellRangeAddress) {
        int firstColumn = cellRangeAddress.getFirstColumn();
        int lastRow = cellRangeAddress.getLastRow();
        int lastColumn = cellRangeAddress.getLastColumn();
        for (int firstRow = cellRangeAddress.getFirstRow(); firstRow <= lastRow; firstRow++) {
            XSSFRow row = getRow(firstRow);
            if (row != null) {
                for (int i = firstColumn; i <= lastColumn; i++) {
                    XSSFCell cell = row.getCell(i);
                    if (cell != null && cell.isPartOfArrayFormulaGroup()) {
                        CellRangeAddress arrayFormulaRange = cell.getArrayFormulaRange();
                        if (arrayFormulaRange.getNumberOfCells() > 1 && cellRangeAddress.intersects(arrayFormulaRange)) {
                            throw new IllegalStateException("The range " + cellRangeAddress.formatAsString() + " intersects with a multi-cell array formula. You cannot merge cells of an array.");
                        }
                    }
                }
            }
        }
    }

    private void validateMergedRegions(CellRangeAddress cellRangeAddress) {
        for (CellRangeAddress cellRangeAddress2 : getMergedRegions()) {
            if (cellRangeAddress2.intersects(cellRangeAddress)) {
                throw new IllegalStateException("Cannot add merged region " + cellRangeAddress.formatAsString() + " to sheet because it overlaps with an existing merged region (" + cellRangeAddress2.formatAsString() + ").");
            }
        }
    }

    private int writeHidden(XSSFRow xSSFRow, int i, boolean z) {
        short outlineLevel = xSSFRow.getCTRow().getOutlineLevel();
        Iterator<Row> rowIterator = rowIterator();
        while (rowIterator.hasNext()) {
            XSSFRow xSSFRow2 = (XSSFRow) rowIterator.next();
            if (xSSFRow2.getRowNum() >= i && xSSFRow2.getCTRow().getOutlineLevel() >= outlineLevel) {
                xSSFRow2.getCTRow().setHidden(z);
                i++;
            }
        }
        return i;
    }

    public void addHyperlink(XSSFHyperlink xSSFHyperlink) {
        this.hyperlinks.add(xSSFHyperlink);
    }

    public void addIgnoredErrors(CellReference cellReference, IgnoredErrorType... ignoredErrorTypeArr) {
        addIgnoredErrors(cellReference.formatAsString(false), ignoredErrorTypeArr);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int addMergedRegion(CellRangeAddress cellRangeAddress) {
        return addMergedRegion(cellRangeAddress, true);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int addMergedRegionUnsafe(CellRangeAddress cellRangeAddress) {
        return addMergedRegion(cellRangeAddress, false);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void addValidationData(DataValidation dataValidation) {
        XSSFDataValidation xSSFDataValidation = (XSSFDataValidation) dataValidation;
        CTDataValidations dataValidations = this.worksheet.getDataValidations();
        if (dataValidations == null) {
            dataValidations = this.worksheet.addNewDataValidations();
        }
        int sizeOfDataValidationArray = dataValidations.sizeOfDataValidationArray();
        dataValidations.addNewDataValidation().set(xSSFDataValidation.getCtDataValidation());
        dataValidations.setCount(sizeOfDataValidationArray + 1);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void autoSizeColumn(int i) {
        autoSizeColumn(i, false);
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            write(outputStream);
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void copyRows(List<? extends Row> list, int i, CellCopyPolicy cellCopyPolicy) {
        int i2;
        if (list != null && !list.isEmpty()) {
            Row row = list.get(0);
            Row row2 = list.get(list.size() - 1);
            if (row != null) {
                int rowNum = row.getRowNum();
                int rowNum2 = row2.getRowNum();
                int size = list.size();
                for (int i3 = 1; i3 < size; i3++) {
                    Row row3 = list.get(i3);
                    if (row3 != null) {
                        if (row.getSheet().getWorkbook() == row3.getSheet().getWorkbook()) {
                            if (row.getSheet() != row3.getSheet()) {
                                throw new IllegalArgumentException("All rows in srcRows must belong to the same sheet. Expected all rows from " + row.getSheet().getSheetName() + ". Got srcRows[" + i3 + "] from " + row3.getSheet().getSheetName());
                            }
                        } else {
                            throw new IllegalArgumentException("All rows in srcRows must belong to the same sheet in the same workbook. Expected all rows from same workbook (" + row.getSheet().getWorkbook() + "). Got srcRows[" + i3 + "] from different workbook (" + row3.getSheet().getWorkbook() + ").");
                        }
                    } else {
                        throw new IllegalArgumentException("srcRows may not contain null rows. Found null row at index " + i3 + ".");
                    }
                }
                CellCopyPolicy cellCopyPolicy2 = new CellCopyPolicy(cellCopyPolicy);
                cellCopyPolicy2.setCopyMergedRegions(false);
                int i4 = i;
                for (Row row4 : list) {
                    if (cellCopyPolicy.isCondenseRows()) {
                        i2 = i4 + 1;
                    } else {
                        i2 = i4;
                        i4 = (row4.getRowNum() - rowNum) + i;
                    }
                    createRow(i4).copyRowFrom(row4, cellCopyPolicy2);
                    i4 = i2;
                }
                if (cellCopyPolicy.isCopyMergedRegions()) {
                    int i5 = i - rowNum;
                    for (CellRangeAddress cellRangeAddress : row.getSheet().getMergedRegions()) {
                        if (rowNum <= cellRangeAddress.getFirstRow() && cellRangeAddress.getLastRow() <= rowNum2) {
                            CellRangeAddress copy = cellRangeAddress.copy();
                            copy.setFirstRow(copy.getFirstRow() + i5);
                            copy.setLastRow(copy.getLastRow() + i5);
                            addMergedRegion(copy);
                        }
                    }
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("copyRows: First row cannot be null");
        }
        throw new IllegalArgumentException("No rows to copy");
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void createFreezePane(int i, int i2) {
        createFreezePane(i, i2, i, i2);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    @Removal(version = "7.0.0")
    @Deprecated
    public void createSplitPane(int i, int i2, int i3, int i4, int i5) {
        createFreezePane(i, i2, i3, i4);
        if (i > 0 || i2 > 0) {
            CTPane pane = getPane(true);
            pane.setState(STPaneState.SPLIT);
            pane.setActivePane(STPane.Enum.forInt(i5));
        }
    }

    public XSSFTable createTable(AreaReference areaReference) {
        if (!this.worksheet.isSetTableParts()) {
            this.worksheet.addNewTableParts();
        }
        CTTablePart addNewTablePart = this.worksheet.getTableParts().addNewTablePart();
        int size = getPackagePart().getPackage().getPartsByContentType(XSSFRelation.TABLE.getContentType()).size() + 1;
        boolean z = true;
        while (true) {
            boolean z2 = false;
            if (!z) {
                break;
            }
            Iterator<PackagePart> it2 = getPackagePart().getPackage().getPartsByContentType(XSSFRelation.TABLE.getContentType()).iterator();
            while (it2.hasNext()) {
                if (XSSFRelation.TABLE.getFileName(size).equals(it2.next().getPartName().getName())) {
                    size++;
                    z2 = true;
                }
            }
            z = z2;
        }
        POIXMLDocumentPart.RelationPart createRelationship = createRelationship(XSSFRelation.TABLE, getWorkbook().getXssfFactory(), size, false);
        XSSFTable xSSFTable = (XSSFTable) createRelationship.getDocumentPart();
        addNewTablePart.setId(createRelationship.getRelationship().getId());
        xSSFTable.getCTTable().setId(size);
        this.tables.put(addNewTablePart.getId(), xSSFTable);
        if (areaReference != null && xSSFTable.supportsAreaReference(areaReference)) {
            xSSFTable.setArea(areaReference);
        }
        while (true) {
            if (size >= Integer.MAX_VALUE) {
                break;
            }
            String str = "Table" + size;
            if (getWorkbook().getTable(str) == null && getWorkbook().getName(str) == null) {
                xSSFTable.setDisplayName(str);
                xSSFTable.setName(str);
                break;
            }
            size++;
        }
        return xSSFTable;
    }

    public void disableLocking() {
        safeGetProtectionField().setSheet(false);
    }

    public void enableLocking() {
        safeGetProtectionField().setSheet(true);
    }

    public int findEndOfRowOutlineGroup(int i) {
        short outlineLevel = getRow(i).getCTRow().getOutlineLevel();
        int lastRowNum = getLastRowNum();
        while (i < lastRowNum && getRow(i) != null && getRow(i).getCTRow().getOutlineLevel() >= outlineLevel) {
            i++;
        }
        return i;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellAddress getActiveCell() {
        CTSelection sheetTypeSelection = getSheetTypeSelection(false);
        String activeCell = sheetTypeSelection != null ? sheetTypeSelection.getActiveCell() : null;
        if (activeCell != null) {
            return new CellAddress(activeCell);
        }
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getAutobreaks() {
        CTSheetPr sheetTypeSheetPr = getSheetTypeSheetPr();
        return ((sheetTypeSheetPr == null || !sheetTypeSheetPr.isSetPageSetUpPr()) ? CTPageSetUpPr.Factory.newInstance() : sheetTypeSheetPr.getPageSetUpPr()).getAutoPageBreaks();
    }

    public CTDrawing getCTDrawing() {
        return this.worksheet.getDrawing();
    }

    public CTLegacyDrawing getCTLegacyDrawing() {
        return this.worksheet.getLegacyDrawing();
    }

    @Internal
    public CTWorksheet getCTWorksheet() {
        return this.worksheet;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public Map<CellAddress, XSSFComment> getCellComments() {
        if (this.sheetComments == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        Iterator<CellAddress> cellAddresses = this.sheetComments.getCellAddresses();
        while (cellAddresses.hasNext()) {
            CellAddress next = cellAddresses.next();
            hashMap.put(next, getCellComment(next));
        }
        return hashMap;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int[] getColumnBreaks() {
        return this.worksheet.isSetColBreaks() ? getBreaks(this.worksheet.getColBreaks()) : new int[0];
    }

    public ColumnHelper getColumnHelper() {
        return this.columnHelper;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getColumnOutlineLevel(int i) {
        CTCol column = this.columnHelper.getColumn(i, false);
        if (column == null) {
            return 0;
        }
        return column.getOutlineLevel();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellStyle getColumnStyle(int i) {
        int colDefaultStyle = this.columnHelper.getColDefaultStyle(i);
        XSSFWorkbook workbook = getWorkbook();
        if (colDefaultStyle == -1) {
            colDefaultStyle = 0;
        }
        return workbook.getCellStyleAt(colDefaultStyle);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getColumnWidth(int i) {
        CTCol column = this.columnHelper.getColumn(i, false);
        return Math.toIntExact(Math.round(((column == null || !column.isSetWidth()) ? getDefaultColumnWidth() : column.getWidth()) * 256.0d));
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public float getColumnWidthInPixels(int i) {
        return (float) ((getColumnWidth(i) / 256.0d) * 7.001699924468994d);
    }

    public Comments getCommentsTable(boolean z) {
        if (this.sheetComments == null && z) {
            try {
                this.sheetComments = (Comments) createRelationship(XSSFRelation.SHEET_COMMENTS, getWorkbook().getXssfFactory(), Math.toIntExact(this.sheet.getSheetId()));
            } catch (PartAlreadyExistsException unused) {
                this.sheetComments = (Comments) createRelationship(XSSFRelation.SHEET_COMMENTS, getWorkbook().getXssfFactory(), -1);
            }
            Comments comments = this.sheetComments;
            if (comments != null) {
                comments.setSheet(this);
            }
        }
        return this.sheetComments;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public DataValidationHelper getDataValidationHelper() {
        return this.dataValidationHelper;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public List<XSSFDataValidation> getDataValidations() {
        ArrayList arrayList = new ArrayList();
        CTDataValidations dataValidations = this.worksheet.getDataValidations();
        if (dataValidations != null) {
            for (CTDataValidation cTDataValidation : dataValidations.getDataValidationArray()) {
                CellRangeAddressList cellRangeAddressList = new CellRangeAddressList();
                Iterator it2 = cTDataValidation.getSqref().iterator();
                while (it2.hasNext()) {
                    for (String str : ((String) it2.next()).split(" ")) {
                        String[] split = str.split(":");
                        CellReference cellReference = new CellReference(split[0]);
                        CellReference cellReference2 = split.length > 1 ? new CellReference(split[1]) : cellReference;
                        cellRangeAddressList.addCellRangeAddress(new CellRangeAddress(cellReference.getRow(), cellReference2.getRow(), cellReference.getCol(), cellReference2.getCol()));
                    }
                }
                arrayList.add(new XSSFDataValidation(cellRangeAddressList, cTDataValidation));
            }
        }
        return arrayList;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getDefaultColumnWidth() {
        CTSheetFormatPr sheetFormatPr = this.worksheet.getSheetFormatPr();
        if (sheetFormatPr == null) {
            return 8;
        }
        return Math.toIntExact(sheetFormatPr.getBaseColWidth());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public short getDefaultRowHeight() {
        return (short) (getDefaultRowHeightInPoints() * 20.0f);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public float getDefaultRowHeightInPoints() {
        CTSheetFormatPr sheetFormatPr = this.worksheet.getSheetFormatPr();
        return (float) (sheetFormatPr == null ? 0.0d : sheetFormatPr.getDefaultRowHeight());
    }

    public CellRangeAddress getDimension() {
        CellRangeAddress cellRangeAddress = this.dimensionOverride;
        if (cellRangeAddress != null) {
            return cellRangeAddress;
        }
        CTSheetDimension dimension = this.worksheet.getDimension();
        String ref = dimension == null ? null : dimension.getRef();
        if (ref != null) {
            return CellRangeAddress.valueOf(ref);
        }
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getDisplayGuts() {
        CTSheetPr sheetTypeSheetPr = getSheetTypeSheetPr();
        return (sheetTypeSheetPr.getOutlinePr() == null ? CTOutlinePr.Factory.newInstance() : sheetTypeSheetPr.getOutlinePr()).getShowOutlineSymbols();
    }

    public Footer getEvenFooter() {
        return new XSSFEvenFooter(getSheetTypeHeaderFooter());
    }

    public Header getEvenHeader() {
        return new XSSFEvenHeader(getSheetTypeHeaderFooter());
    }

    public XSSFCell getFirstCellInArrayFormula(XSSFCell xSSFCell) {
        for (CellRangeAddress cellRangeAddress : this.arrayFormulas) {
            if (cellRangeAddress.isInRange(xSSFCell.getRowIndex(), xSSFCell.getColumnIndex())) {
                return getRow(cellRangeAddress.getFirstRow()).getCell(cellRangeAddress.getFirstColumn());
            }
        }
        return null;
    }

    public Footer getFirstFooter() {
        return new XSSFFirstFooter(getSheetTypeHeaderFooter());
    }

    public Header getFirstHeader() {
        return new XSSFFirstHeader(getSheetTypeHeaderFooter());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getFirstRowNum() {
        if (this._rows.isEmpty()) {
            return -1;
        }
        return this._rows.firstKey().intValue();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getFitToPage() {
        CTSheetPr sheetTypeSheetPr = getSheetTypeSheetPr();
        return ((sheetTypeSheetPr == null || !sheetTypeSheetPr.isSetPageSetUpPr()) ? CTPageSetUpPr.Factory.newInstance() : sheetTypeSheetPr.getPageSetUpPr()).getFitToPage();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public Footer getFooter() {
        return getOddFooter();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getForceFormulaRecalculation() {
        if (this.worksheet.isSetSheetCalcPr()) {
            return this.worksheet.getSheetCalcPr().getFullCalcOnLoad();
        }
        return false;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public Header getHeader() {
        return getOddHeader();
    }

    public XSSFHeaderFooterProperties getHeaderFooterProperties() {
        return new XSSFHeaderFooterProperties(getSheetTypeHeaderFooter());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getHorizontallyCenter() {
        CTPrintOptions printOptions = this.worksheet.getPrintOptions();
        return printOptions != null && printOptions.getHorizontalCentered();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public List<XSSFHyperlink> getHyperlinkList() {
        return Collections.unmodifiableList(this.hyperlinks);
    }

    public Map<IgnoredErrorType, Set<CellRangeAddress>> getIgnoredErrors() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (this.worksheet.isSetIgnoredErrors()) {
            for (CTIgnoredError cTIgnoredError : this.worksheet.getIgnoredErrors().getIgnoredErrorList()) {
                for (IgnoredErrorType ignoredErrorType : XSSFIgnoredErrorHelper.getErrorTypes(cTIgnoredError)) {
                    if (!linkedHashMap.containsKey(ignoredErrorType)) {
                        linkedHashMap.put(ignoredErrorType, new LinkedHashSet());
                    }
                    Iterator it2 = cTIgnoredError.getSqref().iterator();
                    while (it2.hasNext()) {
                        ((Set) linkedHashMap.get(ignoredErrorType)).add(CellRangeAddress.valueOf(it2.next().toString()));
                    }
                }
            }
        }
        return linkedHashMap;
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
        String topLeftCell = this.worksheet.getSheetViews().getSheetViewArray(0).getTopLeftCell();
        if (topLeftCell == null) {
            return (short) 0;
        }
        return new CellReference(topLeftCell).getCol();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    @Removal(version = "7.0.0")
    @Deprecated
    public double getMargin(short s) {
        return getMargin(PageMargin.getByShortValue(s));
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellRangeAddress getMergedRegion(int i) {
        CTMergeCells mergeCells = this.worksheet.getMergeCells();
        if (mergeCells != null) {
            return CellRangeAddress.valueOf(mergeCells.getMergeCellArray(i).getRef());
        }
        throw new IllegalStateException("This worksheet does not contain merged regions");
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public List<CellRangeAddress> getMergedRegions() {
        ArrayList arrayList = new ArrayList();
        CTMergeCells mergeCells = this.worksheet.getMergeCells();
        if (mergeCells == null) {
            return arrayList;
        }
        for (CTMergeCell cTMergeCell : mergeCells.getMergeCellArray()) {
            arrayList.add(CellRangeAddress.valueOf(cTMergeCell.getRef()));
        }
        return arrayList;
    }

    public int getNumHyperlinks() {
        return this.hyperlinks.size();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getNumMergedRegions() {
        CTMergeCells mergeCells = this.worksheet.getMergeCells();
        if (mergeCells == null) {
            return 0;
        }
        return mergeCells.sizeOfMergeCellArray();
    }

    public int getNumberOfComments() {
        Comments comments = this.sheetComments;
        if (comments == null) {
            return 0;
        }
        return comments.getNumberOfComments();
    }

    public Footer getOddFooter() {
        return new XSSFOddFooter(getSheetTypeHeaderFooter());
    }

    public Header getOddHeader() {
        return new XSSFOddHeader(getSheetTypeHeaderFooter());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public PaneInformation getPaneInformation() {
        short s;
        short s2;
        CTPane pane = getPane(false);
        if (pane == null) {
            return null;
        }
        if (pane.isSetTopLeftCell()) {
            CellReference cellReference = new CellReference(pane.getTopLeftCell());
            short row = (short) cellReference.getRow();
            s2 = cellReference.getCol();
            s = row;
        } else {
            s = 0;
            s2 = 0;
        }
        return new PaneInformation((short) pane.getXSplit(), (short) pane.getYSplit(), s, s2, (byte) (pane.getActivePane().intValue() - 1), pane.getState() == STPaneState.FROZEN);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getPhysicalNumberOfRows() {
        return this._rows.size();
    }

    public List<XSSFPivotTable> getPivotTables() {
        ArrayList arrayList = new ArrayList();
        for (XSSFPivotTable xSSFPivotTable : getWorkbook().getPivotTables()) {
            if (xSSFPivotTable.getParent() == this) {
                arrayList.add(xSSFPivotTable);
            }
        }
        return arrayList;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getProtect() {
        return isSheetLocked();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellRangeAddress getRepeatingColumns() {
        return getRepeatingRowsOrColumns(false);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellRangeAddress getRepeatingRows() {
        return getRepeatingRowsOrColumns(true);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int[] getRowBreaks() {
        return this.worksheet.isSetRowBreaks() ? getBreaks(this.worksheet.getRowBreaks()) : new int[0];
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getRowSumsBelow() {
        CTSheetPr sheetPr = this.worksheet.getSheetPr();
        CTOutlinePr outlinePr = (sheetPr == null || !sheetPr.isSetOutlinePr()) ? null : sheetPr.getOutlinePr();
        return outlinePr == null || outlinePr.getSummaryBelow();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getRowSumsRight() {
        CTSheetPr sheetPr = this.worksheet.getSheetPr();
        return ((sheetPr == null || !sheetPr.isSetOutlinePr()) ? CTOutlinePr.Factory.newInstance() : sheetPr.getOutlinePr()).getSummaryRight();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getScenarioProtect() {
        return this.worksheet.isSetSheetProtection() && this.worksheet.getSheetProtection().getScenarios();
    }

    @Internal
    public CTCellFormula getSharedFormula(int i) {
        return this.sharedFormulas.get(Integer.valueOf(i));
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public String getSheetName() {
        return this.sheet.getName();
    }

    public CTSheetViews getSheetTypeSheetViews(boolean z) {
        CTSheetViews sheetViews = (this.worksheet.isSetSheetViews() || !z) ? this.worksheet.getSheetViews() : this.worksheet.addNewSheetViews();
        if (sheetViews == null) {
            return null;
        }
        if (sheetViews.sizeOfSheetViewArray() == 0 && z) {
            sheetViews.addNewSheetView();
        }
        return sheetViews;
    }

    public XSSFColor getTabColor() {
        CTSheetPr sheetPr = this.worksheet.getSheetPr();
        if (sheetPr == null) {
            sheetPr = this.worksheet.addNewSheetPr();
        }
        if (sheetPr.isSetTabColor()) {
            return XSSFColor.from(sheetPr.getTabColor(), getWorkbook().getStylesSource().getIndexedColors());
        }
        return null;
    }

    public List<XSSFTable> getTables() {
        return new ArrayList(this.tables.values());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public short getTopRow() {
        CTSheetView defaultSheetView = getDefaultSheetView(false);
        String topLeftCell = defaultSheetView == null ? null : defaultSheetView.getTopLeftCell();
        if (topLeftCell == null) {
            return (short) 0;
        }
        return (short) new CellReference(topLeftCell).getRow();
    }

    @Override // org.apache.poi.xssf.usermodel.OoxmlSheetExtensions
    public XSSFVMLDrawing getVMLDrawing(boolean z) {
        if (this.xssfvmlDrawing == null) {
            CTLegacyDrawing cTLegacyDrawing = getCTLegacyDrawing();
            XSSFVMLDrawing xSSFVMLDrawing = null;
            if (cTLegacyDrawing != null) {
                String id = cTLegacyDrawing.getId();
                Iterator<POIXMLDocumentPart.RelationPart> it2 = getRelationParts().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    POIXMLDocumentPart.RelationPart next = it2.next();
                    POIXMLDocumentPart documentPart = next.getDocumentPart();
                    if (documentPart instanceof XSSFVMLDrawing) {
                        XSSFVMLDrawing xSSFVMLDrawing2 = (XSSFVMLDrawing) documentPart;
                        if (next.getRelationship().getId().equals(id)) {
                            xSSFVMLDrawing = xSSFVMLDrawing2;
                            break;
                        }
                    }
                }
                if (xSSFVMLDrawing == null) {
                    LOG.atError().log("Can't find VML drawing with id={} in the list of the sheet's relationships", id);
                }
            } else if (z) {
                XSSFRelation xSSFRelation = XSSFRelation.VML_DRAWINGS;
                POIXMLDocumentPart.RelationPart createRelationship = createRelationship(xSSFRelation, getWorkbook().getXssfFactory(), getNextPartNumber(xSSFRelation, getPackagePart().getPackage().getPartsByContentType(xSSFRelation.getContentType()).size()), false);
                xSSFVMLDrawing = (XSSFVMLDrawing) createRelationship.getDocumentPart();
                this.worksheet.addNewLegacyDrawing().setId(createRelationship.getRelationship().getId());
            }
            this.xssfvmlDrawing = xSSFVMLDrawing;
        }
        return this.xssfvmlDrawing;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getVerticallyCenter() {
        CTPrintOptions printOptions = this.worksheet.getPrintOptions();
        return printOptions != null && printOptions.getVerticalCentered();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void groupColumn(int i, int i2) {
        groupColumn1Based(i + 1, i2 + 1);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void groupRow(int i, int i2) {
        while (i <= i2) {
            XSSFRow row = getRow(i);
            if (row == null) {
                row = createRow(i);
            }
            CTRow cTRow = row.getCTRow();
            cTRow.setOutlineLevel((short) (cTRow.getOutlineLevel() + 1));
            i++;
        }
        setSheetFormatPrOutlineLevelRow();
    }

    public boolean hasComments() {
        Comments comments = this.sheetComments;
        return comments != null && comments.getNumberOfComments() > 0;
    }

    public boolean isAutoFilterLocked() {
        return isSheetLocked() && safeGetProtectionField().getAutoFilter();
    }

    public boolean isCellInArrayFormulaContext(XSSFCell xSSFCell) {
        Iterator<CellRangeAddress> it2 = this.arrayFormulas.iterator();
        while (it2.hasNext()) {
            if (it2.next().isInRange(xSSFCell.getRowIndex(), xSSFCell.getColumnIndex())) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isColumnBroken(int i) {
        for (int i2 : getColumnBreaks()) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isColumnHidden(int i) {
        CTCol column = this.columnHelper.getColumn(i, false);
        return column != null && column.getHidden();
    }

    public boolean isDeleteColumnsLocked() {
        return isSheetLocked() && safeGetProtectionField().getDeleteColumns();
    }

    public boolean isDeleteRowsLocked() {
        return isSheetLocked() && safeGetProtectionField().getDeleteRows();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isDisplayFormulas() {
        CTSheetView defaultSheetView = getDefaultSheetView(false);
        return defaultSheetView != null && defaultSheetView.getShowFormulas();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isDisplayGridlines() {
        CTSheetView defaultSheetView = getDefaultSheetView(false);
        return defaultSheetView == null || defaultSheetView.getShowGridLines();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isDisplayRowColHeadings() {
        CTSheetView defaultSheetView = getDefaultSheetView(false);
        return defaultSheetView == null || defaultSheetView.getShowRowColHeaders();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isDisplayZeros() {
        CTSheetView defaultSheetView = getDefaultSheetView(false);
        return defaultSheetView == null || defaultSheetView.getShowZeros();
    }

    public boolean isFormatCellsLocked() {
        return isSheetLocked() && safeGetProtectionField().getFormatCells();
    }

    public boolean isFormatColumnsLocked() {
        return isSheetLocked() && safeGetProtectionField().getFormatColumns();
    }

    public boolean isFormatRowsLocked() {
        return isSheetLocked() && safeGetProtectionField().getFormatRows();
    }

    public boolean isInsertColumnsLocked() {
        return isSheetLocked() && safeGetProtectionField().getInsertColumns();
    }

    public boolean isInsertHyperlinksLocked() {
        return isSheetLocked() && safeGetProtectionField().getInsertHyperlinks();
    }

    public boolean isInsertRowsLocked() {
        return isSheetLocked() && safeGetProtectionField().getInsertRows();
    }

    public boolean isObjectsLocked() {
        return isSheetLocked() && safeGetProtectionField().getObjects();
    }

    public boolean isPivotTablesLocked() {
        return isSheetLocked() && safeGetProtectionField().getPivotTables();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isPrintGridlines() {
        CTPrintOptions printOptions = this.worksheet.getPrintOptions();
        return printOptions != null && printOptions.getGridLines();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isPrintRowAndColumnHeadings() {
        CTPrintOptions printOptions = this.worksheet.getPrintOptions();
        return printOptions != null && printOptions.getHeadings();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isRightToLeft() {
        CTSheetView defaultSheetView = getDefaultSheetView(false);
        return defaultSheetView != null && defaultSheetView.getRightToLeft();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isRowBroken(int i) {
        for (int i2 : getRowBreaks()) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public boolean isScenariosLocked() {
        return isSheetLocked() && safeGetProtectionField().getScenarios();
    }

    public boolean isSelectLockedCellsLocked() {
        return isSheetLocked() && safeGetProtectionField().getSelectLockedCells();
    }

    public boolean isSelectUnlockedCellsLocked() {
        return isSheetLocked() && safeGetProtectionField().getSelectUnlockedCells();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isSelected() {
        CTSheetView defaultSheetView = getDefaultSheetView(false);
        return defaultSheetView != null && defaultSheetView.getTabSelected();
    }

    public boolean isSheetLocked() {
        return this.worksheet.isSetSheetProtection() && safeGetProtectionField().getSheet();
    }

    boolean isSheetProtectionEnabled() {
        return this.worksheet.isSetSheetProtection();
    }

    public boolean isSortLocked() {
        return isSheetLocked() && safeGetProtectionField().getSort();
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

    public void onDeleteFormula(XSSFCell xSSFCell, BaseXSSFEvaluationWorkbook baseXSSFEvaluationWorkbook) {
        CTCellFormula f = xSSFCell.getCTCell().getF();
        if (f == null || f.getT() != STCellFormulaType.SHARED || !f.isSetRef() || f.getStringValue() == null) {
            return;
        }
        CellRangeAddress valueOf = CellRangeAddress.valueOf(f.getRef());
        if (valueOf.getNumberOfCells() > 1) {
            for (int rowIndex = xSSFCell.getRowIndex(); rowIndex <= valueOf.getLastRow(); rowIndex++) {
                XSSFRow row = getRow(rowIndex);
                if (row != null) {
                    for (int columnIndex = xSSFCell.getColumnIndex(); columnIndex <= valueOf.getLastColumn(); columnIndex++) {
                        XSSFCell cell = row.getCell(columnIndex);
                        if (cell != null && cell != xSSFCell && cell.getCellType() == CellType.FORMULA) {
                            CTCellFormula f2 = cell.getCTCell().getF();
                            if (f2.getT() == STCellFormulaType.SHARED && f2.getSi() == f.getSi()) {
                                f2.setStringValue(cell.getCellFormula(baseXSSFEvaluationWorkbook));
                                f2.setRef(new CellRangeAddress(cell.getRowIndex(), valueOf.getLastRow(), cell.getColumnIndex(), valueOf.getLastColumn()).formatAsString());
                                this.sharedFormulas.put(Integer.valueOf(Math.toIntExact(f2.getSi())), f2);
                                return;
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void onDocumentCreate() {
        CTWorksheet newSheet = newSheet();
        this.worksheet = newSheet;
        initRows(newSheet);
        this.columnHelper = new ColumnHelper(this.worksheet);
        this.hyperlinks = new ArrayList();
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void onDocumentRead() {
        try {
            InputStream inputStream = getPackagePart().getInputStream();
            try {
                read(inputStream);
                if (inputStream != null) {
                    inputStream.close();
                }
            } finally {
            }
        } catch (IOException e) {
            throw new POIXMLException(e);
        }
    }

    public void onReadCell(XSSFCell xSSFCell) {
        CTCellFormula f = xSSFCell.getCTCell().getF();
        if (f != null && f.getT() == STCellFormulaType.SHARED && f.isSetRef() && f.getStringValue() != null) {
            CTCellFormula cTCellFormula = (CTCellFormula) f.copy();
            CellRangeAddress valueOf = CellRangeAddress.valueOf(cTCellFormula.getRef());
            CellReference cellReference = new CellReference(xSSFCell);
            if (cellReference.getCol() > valueOf.getFirstColumn() || cellReference.getRow() > valueOf.getFirstRow()) {
                cTCellFormula.setRef(new CellRangeAddress(Math.max(cellReference.getRow(), valueOf.getFirstRow()), Math.max(cellReference.getRow(), valueOf.getLastRow()), Math.max((int) cellReference.getCol(), valueOf.getFirstColumn()), Math.max((int) cellReference.getCol(), valueOf.getLastColumn())).formatAsString());
            }
            this.sharedFormulas.put(Integer.valueOf(Math.toIntExact(f.getSi())), cTCellFormula);
        }
        if (f == null || f.getT() != STCellFormulaType.ARRAY || f.getRef() == null) {
            return;
        }
        this.arrayFormulas.add(CellRangeAddress.valueOf(f.getRef()));
    }

    public void onSheetDelete() {
        for (POIXMLDocumentPart.RelationPart relationPart : getRelationParts()) {
            if (relationPart.getDocumentPart() instanceof XSSFTable) {
                removeTable((XSSFTable) relationPart.getDocumentPart());
            } else {
                removeRelation(relationPart.getDocumentPart(), true);
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void protectSheet(String str) {
        if (str == null) {
            this.worksheet.unsetSheetProtection();
            return;
        }
        CTSheetProtection safeGetProtectionField = safeGetProtectionField();
        setSheetPassword(str, null);
        safeGetProtectionField.setSheet(true);
        safeGetProtectionField.setScenarios(true);
        safeGetProtectionField.setObjects(true);
    }

    public void read(InputStream inputStream) throws IOException {
        try {
            CTWorksheet worksheet = WorksheetDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getWorksheet();
            this.worksheet = worksheet;
            initRows(worksheet);
            this.columnHelper = new ColumnHelper(this.worksheet);
            for (POIXMLDocumentPart.RelationPart relationPart : getRelationParts()) {
                Object documentPart = relationPart.getDocumentPart();
                if (documentPart instanceof Comments) {
                    Comments comments = (Comments) documentPart;
                    this.sheetComments = comments;
                    comments.setSheet(this);
                }
                if (documentPart instanceof XSSFTable) {
                    this.tables.put(relationPart.getRelationship().getId(), (XSSFTable) documentPart);
                }
                if (documentPart instanceof XSSFPivotTable) {
                    getWorkbook().getPivotTables().add((XSSFPivotTable) documentPart);
                }
            }
            initHyperlinks();
        } catch (XmlException e) {
            throw new POIXMLException(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00c5 A[EDGE_INSN: B:37:0x00c5->B:38:0x00c5 BREAK  A[LOOP:0: B:8:0x0020->B:26:0x0020], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0020 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleObject readOleObject(long r7) {
        /*
            r6 = this;
            java.lang.String r0 = "can't close reader"
            org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet r1 = r6.getCTWorksheet()
            boolean r1 = r1.isSetOleObjects()
            r2 = 0
            if (r1 != 0) goto Le
            return r2
        Le:
            java.lang.String r1 = "declare namespace p='http://schemas.openxmlformats.org/spreadsheetml/2006/main' .//p:oleObject"
            org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet r6 = r6.getCTWorksheet()
            org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleObjects r6 = r6.getOleObjects()
            org.apache.xmlbeans.XmlCursor r6 = r6.newCursor()
            r6.selectPath(r1)     // Catch: java.lang.Throwable -> Lc9
            r1 = r2
        L20:
            boolean r3 = r6.toNextSelection()     // Catch: java.lang.Throwable -> Lc9
            if (r3 == 0) goto Lc5
            javax.xml.namespace.QName r3 = new javax.xml.namespace.QName     // Catch: java.lang.Throwable -> Lc9
            java.lang.String r4 = "shapeId"
            r3.<init>(r2, r4)     // Catch: java.lang.Throwable -> Lc9
            java.lang.String r3 = r6.getAttributeText(r3)     // Catch: java.lang.Throwable -> Lc9
            if (r3 == 0) goto L20
            long r3 = java.lang.Long.parseLong(r3)     // Catch: java.lang.Throwable -> Lc9
            int r3 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r3 == 0) goto L3c
            goto L20
        L3c:
            org.apache.xmlbeans.XmlObject r3 = r6.getObject()     // Catch: java.lang.Throwable -> Lc9
            boolean r4 = r3 instanceof org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleObject     // Catch: java.lang.Throwable -> Lc9
            if (r4 == 0) goto L48
            org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleObject r3 = (org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleObject) r3     // Catch: java.lang.Throwable -> Lc9
            r1 = r3
            goto La7
        L48:
            javax.xml.stream.XMLStreamReader r3 = r6.newXMLStreamReader()     // Catch: java.lang.Throwable -> Lc9
            org.apache.xmlbeans.impl.schema.DocumentFactory<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleObjects> r4 = org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleObjects.Factory     // Catch: java.lang.Throwable -> L85 org.apache.xmlbeans.XmlException -> L87
            java.lang.Object r4 = r4.parse(r3)     // Catch: java.lang.Throwable -> L85 org.apache.xmlbeans.XmlException -> L87
            org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleObjects r4 = (org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleObjects) r4     // Catch: java.lang.Throwable -> L85 org.apache.xmlbeans.XmlException -> L87
            int r5 = r4.sizeOfOleObjectArray()     // Catch: java.lang.Throwable -> L85 org.apache.xmlbeans.XmlException -> L87
            if (r5 != 0) goto L6d
            r3.close()     // Catch: javax.xml.stream.XMLStreamException -> L5e java.lang.Throwable -> Lc9
            goto L20
        L5e:
            r3 = move-exception
            org.apache.logging.log4j.Logger r4 = org.apache.poi.xssf.usermodel.XSSFSheet.LOG     // Catch: java.lang.Throwable -> Lc9
            org.apache.logging.log4j.LogBuilder r4 = r4.atInfo()     // Catch: java.lang.Throwable -> Lc9
            org.apache.logging.log4j.LogBuilder r3 = r4.withThrowable(r3)     // Catch: java.lang.Throwable -> Lc9
            r3.log(r0)     // Catch: java.lang.Throwable -> Lc9
            goto L20
        L6d:
            r5 = 0
            org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleObject r1 = r4.getOleObjectArray(r5)     // Catch: java.lang.Throwable -> L85 org.apache.xmlbeans.XmlException -> L87
            r3.close()     // Catch: javax.xml.stream.XMLStreamException -> L76 java.lang.Throwable -> Lc9
            goto La7
        L76:
            r3 = move-exception
            org.apache.logging.log4j.Logger r4 = org.apache.poi.xssf.usermodel.XSSFSheet.LOG     // Catch: java.lang.Throwable -> Lc9
            org.apache.logging.log4j.LogBuilder r4 = r4.atInfo()     // Catch: java.lang.Throwable -> Lc9
            org.apache.logging.log4j.LogBuilder r3 = r4.withThrowable(r3)     // Catch: java.lang.Throwable -> Lc9
        L81:
            r3.log(r0)     // Catch: java.lang.Throwable -> Lc9
            goto La7
        L85:
            r7 = move-exception
            goto Lb2
        L87:
            r4 = move-exception
            org.apache.logging.log4j.Logger r5 = org.apache.poi.xssf.usermodel.XSSFSheet.LOG     // Catch: java.lang.Throwable -> L85
            org.apache.logging.log4j.LogBuilder r5 = r5.atInfo()     // Catch: java.lang.Throwable -> L85
            org.apache.logging.log4j.LogBuilder r4 = r5.withThrowable(r4)     // Catch: java.lang.Throwable -> L85
            java.lang.String r5 = "can't parse CTOleObjects"
            r4.log(r5)     // Catch: java.lang.Throwable -> L85
            r3.close()     // Catch: javax.xml.stream.XMLStreamException -> L9b java.lang.Throwable -> Lc9
            goto La7
        L9b:
            r3 = move-exception
            org.apache.logging.log4j.Logger r4 = org.apache.poi.xssf.usermodel.XSSFSheet.LOG     // Catch: java.lang.Throwable -> Lc9
            org.apache.logging.log4j.LogBuilder r4 = r4.atInfo()     // Catch: java.lang.Throwable -> Lc9
            org.apache.logging.log4j.LogBuilder r3 = r4.withThrowable(r3)     // Catch: java.lang.Throwable -> Lc9
            goto L81
        La7:
            java.lang.String r3 = "http://schemas.openxmlformats.org/spreadsheetml/2006/main"
            java.lang.String r4 = "objectPr"
            boolean r3 = r6.toChild(r3, r4)     // Catch: java.lang.Throwable -> Lc9
            if (r3 == 0) goto L20
            goto Lc5
        Lb2:
            r3.close()     // Catch: javax.xml.stream.XMLStreamException -> Lb6 java.lang.Throwable -> Lc9
            goto Lc4
        Lb6:
            r8 = move-exception
            org.apache.logging.log4j.Logger r1 = org.apache.poi.xssf.usermodel.XSSFSheet.LOG     // Catch: java.lang.Throwable -> Lc9
            org.apache.logging.log4j.LogBuilder r1 = r1.atInfo()     // Catch: java.lang.Throwable -> Lc9
            org.apache.logging.log4j.LogBuilder r8 = r1.withThrowable(r8)     // Catch: java.lang.Throwable -> Lc9
            r8.log(r0)     // Catch: java.lang.Throwable -> Lc9
        Lc4:
            throw r7     // Catch: java.lang.Throwable -> Lc9
        Lc5:
            r6.close()
            return r1
        Lc9:
            r7 = move-exception
            throw r7     // Catch: java.lang.Throwable -> Lcb
        Lcb:
            r8 = move-exception
            if (r6 == 0) goto Ld6
            r6.close()     // Catch: java.lang.Throwable -> Ld2
            goto Ld6
        Ld2:
            r6 = move-exception
            r7.addSuppressed(r6)
        Ld6:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xssf.usermodel.XSSFSheet.readOleObject(long):org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleObject");
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellRange<XSSFCell> removeArrayFormula(Cell cell) {
        if (cell.getSheet() != this) {
            throw new IllegalArgumentException("Specified cell does not belong to this sheet.");
        }
        for (CellRangeAddress cellRangeAddress : this.arrayFormulas) {
            if (cellRangeAddress.isInRange(cell)) {
                this.arrayFormulas.remove(cellRangeAddress);
                CellRange<XSSFCell> cellRange = getCellRange(cellRangeAddress);
                Iterator<XSSFCell> it2 = cellRange.iterator();
                while (it2.hasNext()) {
                    it2.next().setBlank();
                }
                return cellRange;
            }
        }
        throw new IllegalArgumentException("Cell " + new CellReference(cell).formatAsString() + " is not part of an array formula.");
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void removeColumnBreak(int i) {
        if (this.worksheet.isSetColBreaks()) {
            removeBreak(i, this.worksheet.getColBreaks());
        }
    }

    public void removeHyperlink(XSSFHyperlink xSSFHyperlink) {
        this.hyperlinks.remove(xSSFHyperlink);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void removeMergedRegion(int i) {
        if (this.worksheet.isSetMergeCells()) {
            CTMergeCells mergeCells = this.worksheet.getMergeCells();
            if (mergeCells.sizeOfMergeCellArray() > 1) {
                mergeCells.removeMergeCell(i);
            } else {
                this.worksheet.unsetMergeCells();
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void removeMergedRegions(Collection<Integer> collection) {
        if (this.worksheet.isSetMergeCells()) {
            CTMergeCells mergeCells = this.worksheet.getMergeCells();
            ArrayList arrayList = new ArrayList(mergeCells.sizeOfMergeCellArray());
            CTMergeCell[] mergeCellArray = mergeCells.getMergeCellArray();
            int length = mergeCellArray.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                CTMergeCell cTMergeCell = mergeCellArray[i];
                int i3 = i2 + 1;
                if (!collection.contains(Integer.valueOf(i2))) {
                    arrayList.add(cTMergeCell);
                }
                i++;
                i2 = i3;
            }
            if (arrayList.isEmpty()) {
                this.worksheet.unsetMergeCells();
            } else {
                mergeCells.setMergeCellArray((CTMergeCell[]) arrayList.toArray(new CTMergeCell[arrayList.size()]));
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void removeRow(Row row) {
        if (row.getSheet() != this) {
            throw new IllegalArgumentException("Specified row does not belong to this sheet");
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Cell> it2 = row.iterator();
        while (it2.hasNext()) {
            arrayList.add((XSSFCell) it2.next());
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            row.removeCell((XSSFCell) it3.next());
        }
        int rowNum = row.getRowNum();
        Integer valueOf = Integer.valueOf(rowNum);
        int size = this._rows.headMap(valueOf).size();
        this._rows.remove(valueOf);
        this.worksheet.getSheetData().removeRow(size);
        if (this.sheetComments != null) {
            for (CellAddress cellAddress : getCellComments().keySet()) {
                if (cellAddress.getRow() == rowNum) {
                    this.sheetComments.removeComment(cellAddress);
                }
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void removeRowBreak(int i) {
        if (this.worksheet.isSetRowBreaks()) {
            removeBreak(i, this.worksheet.getRowBreaks());
        }
    }

    public void removeTable(XSSFTable xSSFTable) {
        int i;
        String relationId = getRelationId(xSSFTable);
        long id = xSSFTable.getCTTable().getId();
        Map.Entry<String, XSSFTable> entry = null;
        for (Map.Entry<String, XSSFTable> entry2 : this.tables.entrySet()) {
            if (entry2.getValue().getCTTable().getId() == id) {
                entry = entry2;
            }
        }
        if (entry != null) {
            removeRelation(getRelationById(entry.getKey()), true);
            this.tables.remove(entry.getKey());
            entry.getValue().onTableDelete();
            CTTableParts tableParts = this.worksheet.getTableParts();
            if (relationId != null) {
                i = 0;
                while (i < tableParts.sizeOfTablePartArray()) {
                    if (relationId.equals(tableParts.getTablePartArray(i).getId())) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
            i = -1;
            if (i != -1) {
                tableParts.removeTablePart(i);
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public Iterator<Row> rowIterator() {
        return this._rows.values().iterator();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setActiveCell(CellAddress cellAddress) {
        CTSelection sheetTypeSelection = getSheetTypeSelection(true);
        String formatAsString = cellAddress.formatAsString();
        sheetTypeSelection.setActiveCell(formatAsString);
        sheetTypeSelection.setSqref(Collections.singletonList(formatAsString));
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellRange<XSSFCell> setArrayFormula(String str, CellRangeAddress cellRangeAddress) {
        CellRange<XSSFCell> cellRange = getCellRange(cellRangeAddress);
        cellRange.getTopLeftCell().setCellArrayFormula(str, cellRangeAddress);
        this.arrayFormulas.add(cellRangeAddress);
        return cellRange;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setAutobreaks(boolean z) {
        CTSheetPr sheetTypeSheetPr = getSheetTypeSheetPr();
        (sheetTypeSheetPr.isSetPageSetUpPr() ? sheetTypeSheetPr.getPageSetUpPr() : sheetTypeSheetPr.addNewPageSetUpPr()).setAutoPageBreaks(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setColumnBreak(int i) {
        if (isColumnBroken(i)) {
            return;
        }
        setBreak(i, this.worksheet.isSetColBreaks() ? this.worksheet.getColBreaks() : this.worksheet.addNewColBreaks(), SpreadsheetVersion.EXCEL2007.getLastRowIndex());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setColumnGroupCollapsed(int i, boolean z) {
        if (z) {
            collapseColumn(i);
        } else {
            expandColumn(i);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setColumnHidden(int i, boolean z) {
        this.columnHelper.setColHidden(i, z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setColumnWidth(int i, int i2) {
        if (i2 > 65280) {
            throw new IllegalArgumentException("The maximum column width for an individual cell is 255 characters.");
        }
        long j = i;
        this.columnHelper.setColWidth(j, i2 / 256.0d);
        this.columnHelper.setCustomWidth(j, true);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDefaultColumnStyle(int i, CellStyle cellStyle) {
        this.columnHelper.setColDefaultStyle(i, cellStyle);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDefaultColumnWidth(int i) {
        getSheetTypeSheetFormatPr().setBaseColWidth(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDefaultRowHeight(short s) {
        setDefaultRowHeightInPoints(s / 20.0f);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDefaultRowHeightInPoints(float f) {
        CTSheetFormatPr sheetTypeSheetFormatPr = getSheetTypeSheetFormatPr();
        sheetTypeSheetFormatPr.setDefaultRowHeight(f);
        sheetTypeSheetFormatPr.setCustomHeight(true);
    }

    public void setDimensionOverride(CellRangeAddress cellRangeAddress) {
        this.dimensionOverride = cellRangeAddress;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDisplayFormulas(boolean z) {
        getDefaultSheetView(true).setShowFormulas(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDisplayGridlines(boolean z) {
        getDefaultSheetView(true).setShowGridLines(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDisplayGuts(boolean z) {
        CTSheetPr sheetTypeSheetPr = getSheetTypeSheetPr();
        (sheetTypeSheetPr.getOutlinePr() == null ? sheetTypeSheetPr.addNewOutlinePr() : sheetTypeSheetPr.getOutlinePr()).setShowOutlineSymbols(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDisplayRowColHeadings(boolean z) {
        getDefaultSheetView(true).setShowRowColHeaders(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDisplayZeros(boolean z) {
        getDefaultSheetView(true).setShowZeros(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setFitToPage(boolean z) {
        getSheetTypePageSetUpPr().setFitToPage(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setForceFormulaRecalculation(boolean z) {
        CTCalcPr calcPr = getWorkbook().getCTWorkbook().getCalcPr();
        if (this.worksheet.isSetSheetCalcPr()) {
            this.worksheet.getSheetCalcPr().setFullCalcOnLoad(z);
        } else if (z) {
            this.worksheet.addNewSheetCalcPr().setFullCalcOnLoad(z);
        }
        if (z && calcPr != null && calcPr.getCalcMode() == STCalcMode.MANUAL) {
            calcPr.setCalcMode(STCalcMode.AUTO);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setHorizontallyCenter(boolean z) {
        (this.worksheet.isSetPrintOptions() ? this.worksheet.getPrintOptions() : this.worksheet.addNewPrintOptions()).setHorizontalCentered(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    @Removal(version = "7.0.0")
    @Deprecated
    public void setMargin(short s, double d) {
        PageMargin byShortValue = PageMargin.getByShortValue(s);
        if (byShortValue != null) {
            setMargin(byShortValue, d);
            return;
        }
        throw new IllegalArgumentException("Unknown margin constant:  " + ((int) s));
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setPrintGridlines(boolean z) {
        (this.worksheet.isSetPrintOptions() ? this.worksheet.getPrintOptions() : this.worksheet.addNewPrintOptions()).setGridLines(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setPrintRowAndColumnHeadings(boolean z) {
        (this.worksheet.isSetPrintOptions() ? this.worksheet.getPrintOptions() : this.worksheet.addNewPrintOptions()).setHeadings(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRepeatingColumns(CellRangeAddress cellRangeAddress) {
        setRepeatingRowsAndColumns(getRepeatingRows(), cellRangeAddress);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRepeatingRows(CellRangeAddress cellRangeAddress) {
        setRepeatingRowsAndColumns(cellRangeAddress, getRepeatingColumns());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRightToLeft(boolean z) {
        getDefaultSheetView(true).setRightToLeft(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRowBreak(int i) {
        if (isRowBroken(i)) {
            return;
        }
        setBreak(i, this.worksheet.isSetRowBreaks() ? this.worksheet.getRowBreaks() : this.worksheet.addNewRowBreaks(), SpreadsheetVersion.EXCEL2007.getLastColumnIndex());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRowGroupCollapsed(int i, boolean z) {
        if (z) {
            collapseRow(i);
        } else {
            expandRow(i);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRowSumsBelow(boolean z) {
        ensureOutlinePr().setSummaryBelow(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRowSumsRight(boolean z) {
        ensureOutlinePr().setSummaryRight(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setSelected(boolean z) {
        for (CTSheetView cTSheetView : getSheetTypeSheetViews(true).getSheetViewArray()) {
            cTSheetView.setTabSelected(z);
        }
    }

    public void setSheetPassword(String str, HashAlgorithm hashAlgorithm) {
        if (str != null || isSheetProtectionEnabled()) {
            XSSFPasswordHelper.setPassword(safeGetProtectionField(), str, hashAlgorithm, null);
        }
    }

    public void setTabColor(XSSFColor xSSFColor) {
        CTSheetPr sheetPr = this.worksheet.getSheetPr();
        if (sheetPr == null) {
            sheetPr = this.worksheet.addNewSheetPr();
        }
        sheetPr.setTabColor(xSSFColor.getCTColor());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setVerticallyCenter(boolean z) {
        (this.worksheet.isSetPrintOptions() ? this.worksheet.getPrintOptions() : this.worksheet.addNewPrintOptions()).setVerticalCentered(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setZoom(int i) {
        if (i < 10 || i > 400) {
            throw new IllegalArgumentException("Valid scale values range from 10 to 400");
        }
        getDefaultSheetView(true).setZoomScale(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void shiftColumns(int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList();
        for (XSSFTable xSSFTable : getTables()) {
            if (xSSFTable.getStartColIndex() >= i || xSSFTable.getEndColIndex() >= i) {
                if (xSSFTable.getStartColIndex() <= i2 || xSSFTable.getEndColIndex() <= i2) {
                    arrayList.add(xSSFTable);
                }
            }
        }
        shiftCommentsForColumns(getVMLDrawing(false), i, i2, i3);
        FormulaShifter createForColumnShift = FormulaShifter.createForColumnShift(getWorkbook().getSheetIndex(this), getSheetName(), i, i2, i3, SpreadsheetVersion.EXCEL2007);
        XSSFColumnShifter xSSFColumnShifter = new XSSFColumnShifter(this);
        xSSFColumnShifter.shiftColumns(i, i2, i3);
        xSSFColumnShifter.shiftMergedRegions(i, i2, i3);
        xSSFColumnShifter.updateFormulas(createForColumnShift);
        xSSFColumnShifter.updateConditionalFormatting(createForColumnShift);
        xSSFColumnShifter.updateHyperlinks(createForColumnShift);
        xSSFColumnShifter.updateNamedRanges(createForColumnShift);
        rebuildRows();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            rebuildTableFormulas((XSSFTable) it2.next());
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void shiftRows(int i, int i2, int i3) {
        shiftRows(i, i2, i3, false, false);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void showInPane(int i, int i2) {
        getPane(true).setTopLeftCell(new CellReference(i, i2).formatAsString());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet, java.lang.Iterable
    public Spliterator<Row> spliterator() {
        return this._rows.values().spliterator();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void ungroupColumn(int i, int i2) {
        CTCols colsArray = this.worksheet.getColsArray(0);
        while (i <= i2) {
            CTCol column = this.columnHelper.getColumn(i, false);
            if (column != null) {
                column.setOutlineLevel((short) (column.getOutlineLevel() - 1));
                i = Math.toIntExact(column.getMax());
                if (column.getOutlineLevel() <= 0) {
                    this.worksheet.getColsArray(0).removeCol(this.columnHelper.getIndexOfColumn(colsArray, column));
                }
            }
            i++;
        }
        this.worksheet.setColsArray(0, colsArray);
        setSheetFormatPrOutlineLevelCol();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void ungroupRow(int i, int i2) {
        while (i <= i2) {
            XSSFRow row = getRow(i);
            if (row != null) {
                CTRow cTRow = row.getCTRow();
                short outlineLevel = cTRow.getOutlineLevel();
                cTRow.setOutlineLevel((short) (outlineLevel - 1));
                if (outlineLevel == 1 && row.getFirstCellNum() == -1) {
                    removeRow(row);
                }
            }
            i++;
        }
        setSheetFormatPrOutlineLevelRow();
    }

    public boolean validateSheetPassword(String str) {
        return !isSheetProtectionEnabled() ? str == null : XSSFPasswordHelper.validatePassword(safeGetProtectionField(), str, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(java.io.OutputStream r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xssf.usermodel.XSSFSheet.write(java.io.OutputStream):void");
    }

    private int addMergedRegion(CellRangeAddress cellRangeAddress, boolean z) {
        if (cellRangeAddress.getNumberOfCells() >= 2) {
            cellRangeAddress.validate(SpreadsheetVersion.EXCEL2007);
            if (z) {
                validateArrayFormulas(cellRangeAddress);
                validateMergedRegions(cellRangeAddress);
            }
            boolean isSetMergeCells = this.worksheet.isSetMergeCells();
            CTWorksheet cTWorksheet = this.worksheet;
            CTMergeCells mergeCells = isSetMergeCells ? cTWorksheet.getMergeCells() : cTWorksheet.addNewMergeCells();
            mergeCells.addNewMergeCell().setRef(cellRangeAddress.formatAsString());
            long count = mergeCells.getCount();
            long sizeOfMergeCellArray = count == 0 ? mergeCells.sizeOfMergeCellArray() : count + 1;
            mergeCells.setCount(sizeOfMergeCellArray);
            return Math.toIntExact(sizeOfMergeCellArray - 1);
        }
        throw new IllegalArgumentException("Merged region " + cellRangeAddress.formatAsString() + " must contain 2 or more cells");
    }

    public void addIgnoredErrors(CellRangeAddress cellRangeAddress, IgnoredErrorType... ignoredErrorTypeArr) {
        cellRangeAddress.validate(SpreadsheetVersion.EXCEL2007);
        addIgnoredErrors(cellRangeAddress.formatAsString(), ignoredErrorTypeArr);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void autoSizeColumn(int i, boolean z) {
        double columnWidth = SheetUtil.getColumnWidth(this, i, z);
        if (columnWidth != -1.0d) {
            double d = columnWidth * 256.0d;
            double d2 = 65280;
            if (d > d2) {
                d = d2;
            }
            setColumnWidth(i, Math.toIntExact(Math.round(d)));
            this.columnHelper.setColBestFit(i, true);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public XSSFDrawing createDrawingPatriarch() {
        XSSFDrawing drawingPatriarch = getDrawingPatriarch();
        if (drawingPatriarch != null) {
            return drawingPatriarch;
        }
        OPCPackage oPCPackage = getPackagePart().getPackage();
        XSSFRelation xSSFRelation = XSSFRelation.DRAWINGS;
        POIXMLDocumentPart.RelationPart createRelationship = createRelationship(xSSFRelation, getWorkbook().getXssfFactory(), getNextPartNumber(xSSFRelation, oPCPackage.getPartsByContentType(xSSFRelation.getContentType()).size() + 1), false);
        XSSFDrawing xSSFDrawing = (XSSFDrawing) createRelationship.getDocumentPart();
        this.worksheet.addNewDrawing().setId(createRelationship.getRelationship().getId());
        return xSSFDrawing;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void createFreezePane(int i, int i2, int i3, int i4) {
        boolean z = i == 0 && i2 == 0;
        CTSheetView defaultSheetView = getDefaultSheetView(!z);
        if (defaultSheetView != null) {
            defaultSheetView.setSelectionArray(null);
        }
        if (z) {
            if (defaultSheetView == null || !defaultSheetView.isSetPane()) {
                return;
            }
            defaultSheetView.unsetPane();
            return;
        }
        CTPane pane = defaultSheetView.isSetPane() ? defaultSheetView.getPane() : defaultSheetView.addNewPane();
        if (i > 0) {
            pane.setXSplit(i);
        } else if (pane.isSetXSplit()) {
            pane.unsetXSplit();
        }
        if (i2 > 0) {
            pane.setYSplit(i2);
        } else if (pane.isSetYSplit()) {
            pane.unsetYSplit();
        }
        STPane.Enum r2 = STPane.BOTTOM_RIGHT;
        if (i2 == 0) {
            r2 = STPane.TOP_RIGHT;
            i4 = 0;
        } else if (i == 0) {
            r2 = STPane.BOTTOM_LEFT;
            i3 = 0;
        }
        pane.setState(STPaneState.FROZEN);
        pane.setTopLeftCell(new CellReference(i4, i3).formatAsString());
        pane.setActivePane(r2);
        defaultSheetView.addNewSelection().setPane(r2);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public XSSFRow createRow(int i) {
        CTRow addNewRow;
        Integer valueOf = Integer.valueOf(i);
        XSSFRow xSSFRow = this._rows.get(valueOf);
        if (xSSFRow != null) {
            while (xSSFRow.getFirstCellNum() != -1) {
                xSSFRow.removeCell(xSSFRow.getCell((int) xSSFRow.getFirstCellNum()));
            }
            addNewRow = xSSFRow.getCTRow();
            addNewRow.set(CTRow.Factory.newInstance());
        } else if (!this._rows.isEmpty() && i <= this._rows.lastKey().intValue()) {
            addNewRow = this.worksheet.getSheetData().insertNewRow(this._rows.headMap(valueOf).size());
        } else {
            addNewRow = this.worksheet.getSheetData().addNewRow();
        }
        XSSFRow xSSFRow2 = new XSSFRow(addNewRow, this);
        xSSFRow2.setRowNum(i);
        this._rows.put(valueOf, xSSFRow2);
        return xSSFRow2;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public XSSFComment getCellComment(CellAddress cellAddress) {
        Comments comments = this.sheetComments;
        if (comments == null) {
            return null;
        }
        return comments.findCellComment(cellAddress);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public XSSFDrawing getDrawingPatriarch() {
        CTDrawing cTDrawing = getCTDrawing();
        if (cTDrawing == null) {
            return null;
        }
        for (POIXMLDocumentPart.RelationPart relationPart : getRelationParts()) {
            POIXMLDocumentPart documentPart = relationPart.getDocumentPart();
            if (documentPart instanceof XSSFDrawing) {
                XSSFDrawing xSSFDrawing = (XSSFDrawing) documentPart;
                if (relationPart.getRelationship().getId().equals(cTDrawing.getId())) {
                    return xSSFDrawing;
                }
            }
        }
        LOG.atError().log("Can't find drawing with id={} in the list of the sheet's relationships", cTDrawing.getId());
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public double getMargin(PageMargin pageMargin) {
        if (!this.worksheet.isSetPageMargins()) {
            return 0.0d;
        }
        CTPageMargins pageMargins = this.worksheet.getPageMargins();
        switch (C199651.$SwitchMap$org$apache$poi$ss$usermodel$PageMargin[pageMargin.ordinal()]) {
            case 1:
                return pageMargins.getLeft();
            case 2:
                return pageMargins.getRight();
            case 3:
                return pageMargins.getTop();
            case 4:
                return pageMargins.getBottom();
            case 5:
                return pageMargins.getHeader();
            case 6:
                return pageMargins.getFooter();
            default:
                throw new IllegalArgumentException("Unknown margin constant:  " + pageMargin);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public XSSFPrintSetup getPrintSetup() {
        return new XSSFPrintSetup(this.worksheet);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public XSSFRow getRow(int i) {
        return this._rows.get(Integer.valueOf(i));
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public XSSFSheetConditionalFormatting getSheetConditionalFormatting() {
        return new XSSFSheetConditionalFormatting(this);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public XSSFWorkbook getWorkbook() {
        return (XSSFWorkbook) getParent();
    }

    @Internal
    public void removeHyperlink(int i, int i2) {
        boolean z;
        XSSFHyperlink hyperlink = getHyperlink(i, i2);
        if (hyperlink != null) {
            if (hyperlink.getFirstRow() == i && hyperlink.getLastRow() == i && hyperlink.getFirstColumn() == i2 && hyperlink.getLastColumn() == i2) {
                removeHyperlink(hyperlink);
                return;
            }
            boolean z2 = false;
            if (hyperlink.getFirstColumn() < i2) {
                XSSFHyperlink xSSFHyperlink = new XSSFHyperlink(hyperlink);
                xSSFHyperlink.setFirstColumn(hyperlink.getFirstColumn());
                xSSFHyperlink.setLastColumn(i2 - 1);
                xSSFHyperlink.setFirstRow(hyperlink.getFirstRow());
                xSSFHyperlink.setLastRow(hyperlink.getLastRow());
                addHyperlink(xSSFHyperlink);
                z = true;
            } else {
                z = false;
            }
            if (hyperlink.getLastColumn() > i2) {
                XSSFHyperlink xSSFHyperlink2 = new XSSFHyperlink(hyperlink);
                xSSFHyperlink2.setFirstColumn(i2 + 1);
                xSSFHyperlink2.setLastColumn(hyperlink.getLastColumn());
                xSSFHyperlink2.setFirstRow(hyperlink.getFirstRow());
                xSSFHyperlink2.setLastRow(hyperlink.getLastRow());
                addHyperlink(xSSFHyperlink2);
                z2 = true;
            }
            if (hyperlink.getFirstRow() < i) {
                XSSFHyperlink xSSFHyperlink3 = new XSSFHyperlink(hyperlink);
                int firstColumn = z ? i : hyperlink.getFirstColumn();
                int lastColumn = z2 ? i : hyperlink.getLastColumn();
                xSSFHyperlink3.setFirstColumn(firstColumn);
                xSSFHyperlink3.setLastColumn(lastColumn);
                xSSFHyperlink3.setFirstRow(hyperlink.getFirstRow());
                xSSFHyperlink3.setLastRow(i - 1);
                addHyperlink(xSSFHyperlink3);
            }
            if (hyperlink.getLastRow() > i) {
                XSSFHyperlink xSSFHyperlink4 = new XSSFHyperlink(hyperlink);
                int firstColumn2 = z ? i : hyperlink.getFirstColumn();
                int lastColumn2 = z2 ? i : hyperlink.getLastColumn();
                xSSFHyperlink4.setFirstColumn(firstColumn2);
                xSSFHyperlink4.setLastColumn(lastColumn2);
                xSSFHyperlink4.setFirstRow(i + 1);
                xSSFHyperlink4.setLastRow(hyperlink.getLastRow());
                addHyperlink(xSSFHyperlink4);
            }
            removeHyperlink(hyperlink);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public XSSFAutoFilter setAutoFilter(CellRangeAddress cellRangeAddress) {
        CTAutoFilter autoFilter = this.worksheet.getAutoFilter();
        if (autoFilter == null) {
            autoFilter = this.worksheet.addNewAutoFilter();
        }
        autoFilter.setRef(new CellRangeAddress(cellRangeAddress.getFirstRow(), cellRangeAddress.getLastRow(), cellRangeAddress.getFirstColumn(), cellRangeAddress.getLastColumn()).formatAsString());
        XSSFWorkbook workbook = getWorkbook();
        int sheetIndex = getWorkbook().getSheetIndex(this);
        XSSFName builtInName = workbook.getBuiltInName(XSSFName.BUILTIN_FILTER_DB, sheetIndex);
        if (builtInName == null) {
            builtInName = workbook.createBuiltInName(XSSFName.BUILTIN_FILTER_DB, sheetIndex);
        }
        builtInName.getCTName().setHidden(true);
        builtInName.setRefersToFormula(new CellReference(getSheetName(), cellRangeAddress.getFirstRow(), cellRangeAddress.getFirstColumn(), true, true).formatAsString() + ":" + new CellReference(null, cellRangeAddress.getLastRow(), cellRangeAddress.getLastColumn(), true, true).formatAsString());
        return new XSSFAutoFilter(this);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void shiftRows(int i, int i2, int i3, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        for (XSSFTable xSSFTable : getTables()) {
            if (xSSFTable.getStartRowIndex() >= i || xSSFTable.getEndRowIndex() >= i) {
                if (xSSFTable.getStartRowIndex() <= i2 || xSSFTable.getEndRowIndex() <= i2) {
                    arrayList.add(xSSFTable);
                }
            }
        }
        int sheetIndex = getWorkbook().getSheetIndex(this);
        FormulaShifter createForRowShift = FormulaShifter.createForRowShift(sheetIndex, getWorkbook().getSheetName(sheetIndex), i, i2, i3, SpreadsheetVersion.EXCEL2007);
        removeOverwritten(i, i2, i3);
        shiftCommentsAndRows(i, i2, i3);
        XSSFRowShifter xSSFRowShifter = new XSSFRowShifter(this);
        xSSFRowShifter.shiftMergedRegions(i, i2, i3);
        xSSFRowShifter.updateNamedRanges(createForRowShift);
        xSSFRowShifter.updateFormulas(createForRowShift);
        xSSFRowShifter.updateConditionalFormatting(createForRowShift);
        xSSFRowShifter.updateHyperlinks(createForRowShift);
        rebuildRows();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            rebuildTableFormulas((XSSFTable) it2.next());
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public XSSFHyperlink getHyperlink(int i, int i2) {
        return getHyperlink(new CellAddress(i, i2));
    }

    private void addIgnoredErrors(String str, IgnoredErrorType... ignoredErrorTypeArr) {
        boolean isSetIgnoredErrors = this.worksheet.isSetIgnoredErrors();
        CTWorksheet cTWorksheet = this.worksheet;
        XSSFIgnoredErrorHelper.addIgnoredErrors((isSetIgnoredErrors ? cTWorksheet.getIgnoredErrors() : cTWorksheet.addNewIgnoredErrors()).addNewIgnoredError(), str, ignoredErrorTypeArr);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public XSSFHyperlink getHyperlink(CellAddress cellAddress) {
        for (XSSFHyperlink xSSFHyperlink : getHyperlinkList()) {
            if (cellAddress.getRow() >= xSSFHyperlink.getFirstRow() && cellAddress.getRow() <= xSSFHyperlink.getLastRow() && cellAddress.getColumn() >= xSSFHyperlink.getFirstColumn() && cellAddress.getColumn() <= xSSFHyperlink.getLastColumn()) {
                return xSSFHyperlink;
            }
        }
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setMargin(PageMargin pageMargin, double d) {
        CTPageMargins pageMargins = this.worksheet.isSetPageMargins() ? this.worksheet.getPageMargins() : this.worksheet.addNewPageMargins();
        switch (C199651.$SwitchMap$org$apache$poi$ss$usermodel$PageMargin[pageMargin.ordinal()]) {
            case 1:
                pageMargins.setLeft(d);
                return;
            case 2:
                pageMargins.setRight(d);
                return;
            case 3:
                pageMargins.setTop(d);
                return;
            case 4:
                pageMargins.setBottom(d);
                return;
            case 5:
                pageMargins.setHeader(d);
                return;
            case 6:
                pageMargins.setFooter(d);
                return;
            default:
                throw new IllegalArgumentException("Unknown margin constant:  " + pageMargin);
        }
    }

    public XSSFSheet(PackagePart packagePart) {
        super(packagePart);
        this._rows = new TreeMap();
        this.dataValidationHelper = new XSSFDataValidationHelper(this);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void createSplitPane(int i, int i2, int i3, int i4, PaneType paneType) {
        STPane.Enum r1;
        createFreezePane(i, i2, i3, i4);
        if (i > 0 || i2 > 0) {
            CTPane pane = getPane(true);
            pane.setState(STPaneState.SPLIT);
            int i5 = C199651.$SwitchMap$org$apache$poi$ss$usermodel$PaneType[paneType.ordinal()];
            if (i5 == 1) {
                r1 = STPane.BOTTOM_RIGHT;
            } else if (i5 == 2) {
                r1 = STPane.TOP_RIGHT;
            } else if (i5 != 3) {
                r1 = STPane.TOP_LEFT;
            } else {
                r1 = STPane.BOTTOM_LEFT;
            }
            pane.setActivePane(r1);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void validateMergedRegions() {
        checkForMergedRegionsIntersectingArrayFormulas();
        checkForIntersectingMergedRegions();
    }

    public XSSFPivotTable createPivotTable(final AreaReference areaReference, CellReference cellReference, Sheet sheet) {
        String sheetName = areaReference.getFirstCell().getSheetName();
        if (sheetName != null && !sheetName.equalsIgnoreCase(sheet.getSheetName())) {
            throw new IllegalArgumentException("The area is referenced in another sheet than the defined source sheet " + sheet.getSheetName() + ".");
        }
        return createPivotTable(cellReference, sheet, new XSSFPivotTable.PivotTableReferenceConfigurator() { // from class: com.sunia.HTREnginev2.mso
            @Override // org.apache.poi.xssf.usermodel.XSSFPivotTable.PivotTableReferenceConfigurator
            public final void configureReference(CTWorksheetSource cTWorksheetSource) {
                XSSFSheet.lambda$createPivotTable$2(AreaReference.this, cTWorksheetSource);
            }
        });
    }

    private XSSFPivotTable createPivotTable(CellReference cellReference, Sheet sheet, XSSFPivotTable.PivotTableReferenceConfigurator pivotTableReferenceConfigurator) {
        XSSFPivotTable createPivotTable = createPivotTable();
        createPivotTable.setDefaultPivotTableDefinition();
        createPivotTable.createSourceReferences(cellReference, sheet, pivotTableReferenceConfigurator);
        createPivotTable.getPivotCacheDefinition().createCacheFields(sheet);
        createPivotTable.createDefaultDataColumns();
        return createPivotTable;
    }

    public void copyRows(int i, int i2, int i3, CellCopyPolicy cellCopyPolicy) {
        copyRows(getRows(i, i2, false), i3, cellCopyPolicy);
    }

    public XSSFPivotTable createPivotTable(AreaReference areaReference, CellReference cellReference) {
        String sheetName = areaReference.getFirstCell().getSheetName();
        if (sheetName != null && !sheetName.equalsIgnoreCase(getSheetName())) {
            return createPivotTable(areaReference, cellReference, getWorkbook().getSheet(sheetName));
        }
        return createPivotTable(areaReference, cellReference, this);
    }

    public XSSFPivotTable createPivotTable(final Name name, CellReference cellReference, Sheet sheet) {
        if (name.getSheetName() != null && !name.getSheetName().equals(sheet.getSheetName())) {
            throw new IllegalArgumentException("The named range references another sheet than the defined source sheet " + sheet.getSheetName() + ".");
        }
        return createPivotTable(cellReference, sheet, new XSSFPivotTable.PivotTableReferenceConfigurator() { // from class: com.sunia.HTREnginev2.iso
            @Override // org.apache.poi.xssf.usermodel.XSSFPivotTable.PivotTableReferenceConfigurator
            public final void configureReference(CTWorksheetSource cTWorksheetSource) {
                XSSFSheet.lambda$createPivotTable$3(Name.this, cTWorksheetSource);
            }
        });
    }

    public XSSFPivotTable createPivotTable(Name name, CellReference cellReference) {
        return createPivotTable(name, cellReference, getWorkbook().getSheet(name.getSheetName()));
    }

    public XSSFPivotTable createPivotTable(final Table table, CellReference cellReference) {
        return createPivotTable(cellReference, getWorkbook().getSheet(table.getSheetName()), new XSSFPivotTable.PivotTableReferenceConfigurator() { // from class: com.sunia.HTREnginev2.jso
            @Override // org.apache.poi.xssf.usermodel.XSSFPivotTable.PivotTableReferenceConfigurator
            public final void configureReference(CTWorksheetSource cTWorksheetSource) {
                XSSFSheet.lambda$createPivotTable$4(Table.this, cTWorksheetSource);
            }
        });
    }
}
