package org.apache.poi.hssf.usermodel;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Spliterator;
import java.util.TreeMap;
import java.util.TreeSet;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.message.Message;
import org.apache.logging.log4j.message.SimpleMessage;
import org.apache.logging.log4j.util.Supplier;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.hssf.model.DrawingManager2;
import org.apache.poi.hssf.model.HSSFFormulaParser;
import org.apache.poi.hssf.model.InternalSheet;
import org.apache.poi.hssf.model.InternalWorkbook;
import org.apache.poi.hssf.record.AutoFilterInfoRecord;
import org.apache.poi.hssf.record.CellValueRecordInterface;
import org.apache.poi.hssf.record.DVRecord;
import org.apache.poi.hssf.record.DrawingRecord;
import org.apache.poi.hssf.record.EscherAggregate;
import org.apache.poi.hssf.record.HyperlinkRecord;
import org.apache.poi.hssf.record.NameRecord;
import org.apache.poi.hssf.record.Record;
import org.apache.poi.hssf.record.RecordBase;
import org.apache.poi.hssf.record.RowRecord;
import org.apache.poi.hssf.record.SCLRecord;
import org.apache.poi.hssf.record.WSBoolRecord;
import org.apache.poi.hssf.record.WindowTwoRecord;
import org.apache.poi.hssf.record.aggregates.DataValidityTable;
import org.apache.poi.hssf.record.aggregates.FormulaRecordAggregate;
import org.apache.poi.hssf.record.aggregates.RecordAggregate;
import org.apache.poi.hssf.record.aggregates.WorksheetProtectionBlock;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.helpers.HSSFColumnShifter;
import org.apache.poi.hssf.usermodel.helpers.HSSFRowShifter;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.FormulaShifter;
import org.apache.poi.ss.formula.FormulaType;
import org.apache.poi.ss.formula.ptg.Area3DPtg;
import org.apache.poi.ss.formula.ptg.MemFuncPtg;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.formula.ptg.UnionPtg;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellRange;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.DataValidation;
import org.apache.poi.ss.usermodel.DataValidationHelper;
import org.apache.poi.ss.usermodel.PageMargin;
import org.apache.poi.ss.usermodel.PaneType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Shape;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.util.CellAddress;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.ss.util.PaneInformation;
import org.apache.poi.ss.util.SSCellRange;
import org.apache.poi.ss.util.SheetUtil;
import org.apache.poi.util.Configurator;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Removal;

/* loaded from: classes12.dex */
public final class HSSFSheet implements Sheet {
    private static final float PX_DEFAULT = 32.0f;
    private static final float PX_MODIFIED = 36.56f;
    protected final InternalWorkbook _book;
    private int _firstrow;
    private int _lastrow;
    private HSSFPatriarch _patriarch;
    private final TreeMap<Integer, HSSFRow> _rows;
    private final InternalSheet _sheet;
    protected final HSSFWorkbook _workbook;
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) HSSFSheet.class);
    public static final int INITIAL_CAPACITY = Configurator.getIntValue("HSSFSheet.RowInitialCapacity", 20);

    /* renamed from: org.apache.poi.hssf.usermodel.HSSFSheet$2 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195452 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$PageMargin;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$PaneType;

        static {
            int[] iArr = new int[PaneType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$PaneType = iArr;
            try {
                iArr[PaneType.LOWER_RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$PaneType[PaneType.UPPER_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$PaneType[PaneType.LOWER_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$PaneType[PaneType.UPPER_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[PageMargin.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$PageMargin = iArr2;
            try {
                iArr2[PageMargin.FOOTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$PageMargin[PageMargin.HEADER.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public HSSFSheet(HSSFWorkbook hSSFWorkbook) {
        this._firstrow = -1;
        this._lastrow = -1;
        this._sheet = InternalSheet.createSheet();
        this._rows = new TreeMap<>();
        this._workbook = hSSFWorkbook;
        this._book = hSSFWorkbook.getWorkbook();
    }

    private void addRow(HSSFRow hSSFRow, boolean z) {
        this._rows.put(Integer.valueOf(hSSFRow.getRowNum()), hSSFRow);
        if (z) {
            this._sheet.addRow(hSSFRow.getRowRecord());
        }
        boolean z2 = this._rows.size() == 1;
        if (hSSFRow.getRowNum() > getLastRowNum() || z2) {
            this._lastrow = hSSFRow.getRowNum();
        }
        if (hSSFRow.getRowNum() < getFirstRowNum() || z2) {
            this._firstrow = hSSFRow.getRowNum();
        }
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

    private static int clip(int i) {
        return Math.min(Math.max(0, i), SpreadsheetVersion.EXCEL97.getLastRowIndex());
    }

    private HSSFRow createRowFromRecord(RowRecord rowRecord) {
        HSSFRow hSSFRow = new HSSFRow(this._workbook, this, rowRecord);
        addRow(hSSFRow, false);
        return hSSFRow;
    }

    private void deleteOverwrittenHyperlinksForRowShift(int i, int i2, int i3) {
        int i4 = i + i3;
        int i5 = i2 + i3;
        for (HSSFHyperlink hSSFHyperlink : getHyperlinkList()) {
            int firstRow = hSSFHyperlink.getFirstRow();
            int lastRow = hSSFHyperlink.getLastRow();
            if (i4 <= firstRow && firstRow <= i5 && i5 <= lastRow && lastRow <= i5) {
                removeHyperlink(hSSFHyperlink);
            }
        }
    }

    private void findCellCommentLocations(HSSFShapeContainer hSSFShapeContainer, Map<CellAddress, HSSFComment> map) {
        for (HSSFShape hSSFShape : hSSFShapeContainer.getChildren()) {
            if (hSSFShape instanceof HSSFShapeGroup) {
                findCellCommentLocations((HSSFShapeGroup) hSSFShape, map);
            } else if (hSSFShape instanceof HSSFComment) {
                HSSFComment hSSFComment = (HSSFComment) hSSFShape;
                if (hSSFComment.hasPosition()) {
                    map.put(new CellAddress(hSSFComment.getRow(), hSSFComment.getColumn()), hSSFComment);
                }
            }
        }
    }

    private int findFirstRow(int i) {
        int i2 = i + 1;
        HSSFRow row = getRow(i2);
        while (row == null && i2 <= getLastRowNum()) {
            i2++;
            row = getRow(i2);
        }
        if (i2 > getLastRowNum()) {
            return 0;
        }
        return i2;
    }

    private int findLastRow(int i) {
        if (i < 1) {
            return 0;
        }
        int i2 = i - 1;
        HSSFRow row = getRow(i2);
        while (row == null && i2 > 0) {
            i2--;
            row = getRow(i2);
        }
        if (row == null) {
            return 0;
        }
        return i2;
    }

    private NameRecord getBuiltinNameRecord(byte b) {
        int findExistingBuiltinNameRecordIdx = this._workbook.findExistingBuiltinNameRecordIdx(this._workbook.getSheetIndex(this), b);
        if (findExistingBuiltinNameRecordIdx == -1) {
            return null;
        }
        return this._workbook.getNameRecord(findExistingBuiltinNameRecordIdx);
    }

    private CellRange<HSSFCell> getCellRange(CellRangeAddress cellRangeAddress) {
        int firstRow = cellRangeAddress.getFirstRow();
        int firstColumn = cellRangeAddress.getFirstColumn();
        int lastRow = cellRangeAddress.getLastRow();
        int lastColumn = cellRangeAddress.getLastColumn();
        int i = (lastRow - firstRow) + 1;
        int i2 = (lastColumn - firstColumn) + 1;
        ArrayList arrayList = new ArrayList(i * i2);
        for (int i3 = firstRow; i3 <= lastRow; i3++) {
            for (int i4 = firstColumn; i4 <= lastColumn; i4++) {
                HSSFRow row = getRow(i3);
                if (row == null) {
                    row = createRow(i3);
                }
                HSSFCell cell = row.getCell(i4);
                if (cell == null) {
                    cell = row.createCell(i4);
                }
                arrayList.add(cell);
            }
        }
        return SSCellRange.create(firstRow, firstColumn, i, i2, arrayList, HSSFCell.class);
    }

    private HSSFPatriarch getPatriarch(boolean z) {
        HSSFPatriarch hSSFPatriarch = this._patriarch;
        if (hSSFPatriarch != null) {
            return hSSFPatriarch;
        }
        DrawingManager2 findDrawingGroup = this._book.findDrawingGroup();
        if (findDrawingGroup == null) {
            if (!z) {
                return null;
            }
            this._book.createDrawingGroup();
            findDrawingGroup = this._book.getDrawingManager();
        }
        EscherAggregate escherAggregate = (EscherAggregate) this._sheet.findFirstRecordBySid(EscherAggregate.sid);
        if (escherAggregate == null) {
            int aggregateDrawingRecords = this._sheet.aggregateDrawingRecords(findDrawingGroup, false);
            if (-1 == aggregateDrawingRecords) {
                if (!z) {
                    return null;
                }
                HSSFPatriarch hSSFPatriarch2 = new HSSFPatriarch(this, (EscherAggregate) this._sheet.getRecords().get(this._sheet.aggregateDrawingRecords(findDrawingGroup, true)));
                hSSFPatriarch2.afterCreate();
                return hSSFPatriarch2;
            }
            escherAggregate = (EscherAggregate) this._sheet.getRecords().get(aggregateDrawingRecords);
        }
        return new HSSFPatriarch(this, escherAggregate);
    }

    private WorksheetProtectionBlock getProtectionBlock() {
        return this._sheet.getProtectionBlock();
    }

    private CellRangeAddress getRepeatingRowsOrColumns(boolean z) {
        Ptg[] nameDefinition;
        NameRecord builtinNameRecord = getBuiltinNameRecord((byte) 7);
        if (builtinNameRecord == null || (nameDefinition = builtinNameRecord.getNameDefinition()) == null) {
            return null;
        }
        SpreadsheetVersion spreadsheetVersion = SpreadsheetVersion.EXCEL97;
        int lastRowIndex = spreadsheetVersion.getLastRowIndex();
        int lastColumnIndex = spreadsheetVersion.getLastColumnIndex();
        for (Ptg ptg : nameDefinition) {
            if (ptg instanceof Area3DPtg) {
                Area3DPtg area3DPtg = (Area3DPtg) ptg;
                if (area3DPtg.getFirstColumn() == 0 && area3DPtg.getLastColumn() == lastColumnIndex) {
                    if (z) {
                        return new CellRangeAddress(area3DPtg.getFirstRow(), area3DPtg.getLastRow(), -1, -1);
                    }
                } else if (area3DPtg.getFirstRow() == 0 && area3DPtg.getLastRow() == lastRowIndex && !z) {
                    return new CellRangeAddress(-1, -1, area3DPtg.getFirstColumn(), area3DPtg.getLastColumn());
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Message lambda$setPropertiesFromSheet$0(CellValueRecordInterface cellValueRecordInterface) {
        if (cellValueRecordInterface instanceof Record) {
            return new SimpleMessage("record id = " + Integer.toHexString(((Record) cellValueRecordInterface).getSid()));
        }
        return new SimpleMessage("record = " + cellValueRecordInterface);
    }

    private HSSFComment lookForComment(HSSFShapeContainer hSSFShapeContainer, int i, int i2) {
        for (Shape shape : hSSFShapeContainer.getChildren()) {
            if (shape instanceof HSSFShapeGroup) {
                HSSFComment lookForComment = lookForComment((HSSFShapeContainer) shape, i, i2);
                if (lookForComment != null) {
                    return lookForComment;
                }
            } else if (shape instanceof HSSFComment) {
                HSSFComment hSSFComment = (HSSFComment) shape;
                if (hSSFComment.hasPosition() && hSSFComment.getColumn() == i2 && hSSFComment.getRow() == i) {
                    return hSSFComment;
                }
            } else {
                continue;
            }
        }
        return null;
    }

    private void moveCommentsForRowShift(int i, int i2, int i3) {
        HSSFComment hSSFComment;
        int row;
        for (HSSFShape hSSFShape : createDrawingPatriarch().getChildren()) {
            if ((hSSFShape instanceof HSSFComment) && i <= (row = (hSSFComment = (HSSFComment) hSSFShape).getRow()) && row <= i2) {
                hSSFComment.setRow(clip(row + i3));
            }
        }
    }

    private void notifyRowShifting(HSSFRow hSSFRow) {
        String str = "Row[rownum=" + hSSFRow.getRowNum() + "] contains cell(s) included in a multi-cell array formula. You cannot change part of an array.";
        Iterator<Cell> it2 = hSSFRow.iterator();
        while (it2.hasNext()) {
            HSSFCell hSSFCell = (HSSFCell) it2.next();
            if (hSSFCell.isPartOfArrayFormulaGroup()) {
                hSSFCell.tryToDeleteArrayFormula(str);
            }
        }
    }

    private void recomputeFirstAndLastRowsForRowShift(int i, int i2, int i3) {
        if (i3 > 0) {
            if (i == this._firstrow) {
                int i4 = i + i3;
                this._firstrow = Math.max(i4, 0);
                while (true) {
                    i++;
                    if (i < i4) {
                        if (getRow(i) != null) {
                            this._firstrow = i;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            int i5 = i2 + i3;
            if (i5 > this._lastrow) {
                this._lastrow = Math.min(i5, SpreadsheetVersion.EXCEL97.getLastRowIndex());
                return;
            }
            return;
        }
        int i6 = i + i3;
        if (i6 < this._firstrow) {
            this._firstrow = Math.max(i6, 0);
        }
        if (i2 == this._lastrow) {
            int i7 = i3 + i2;
            this._lastrow = Math.min(i7, SpreadsheetVersion.EXCEL97.getLastRowIndex());
            for (int i8 = i2 - 1; i8 > i7; i8--) {
                if (getRow(i8) != null) {
                    this._lastrow = i8;
                    return;
                }
            }
        }
    }

    private void setPropertiesFromSheet(InternalSheet internalSheet) {
        HSSFRow hSSFRow;
        RowRecord nextRow = internalSheet.getNextRow();
        while (nextRow != null) {
            createRowFromRecord(nextRow);
            nextRow = internalSheet.getNextRow();
        }
        Iterator<CellValueRecordInterface> cellValueIterator = internalSheet.getCellValueIterator();
        long currentTimeMillis = System.currentTimeMillis();
        LOGGER.atDebug().log("Time at start of cell creating in HSSF sheet = {}", Unbox.box(currentTimeMillis));
        HSSFRow hSSFRow2 = null;
        while (cellValueIterator.hasNext()) {
            final CellValueRecordInterface next = cellValueIterator.next();
            long currentTimeMillis2 = System.currentTimeMillis();
            if ((hSSFRow2 == null || hSSFRow2.getRowNum() != next.getRow()) && (hSSFRow2 = getRow(next.getRow())) == null) {
                RowRecord rowRecord = new RowRecord(next.getRow());
                internalSheet.addRow(rowRecord);
                HSSFRow createRowFromRecord = createRowFromRecord(rowRecord);
                hSSFRow = hSSFRow2;
                hSSFRow2 = createRowFromRecord;
            } else {
                hSSFRow = hSSFRow2;
            }
            Logger logger = LOGGER;
            logger.atTrace().log(new Supplier() { // from class: com.sunia.HTREnginev2.xeh
                @Override // org.apache.logging.log4j.util.Supplier
                public final Object get() {
                    Message lambda$setPropertiesFromSheet$0;
                    lambda$setPropertiesFromSheet$0 = HSSFSheet.lambda$setPropertiesFromSheet$0(CellValueRecordInterface.this);
                    return lambda$setPropertiesFromSheet$0;
                }
            });
            hSSFRow2.createCellFromRecord(next);
            logger.atTrace().log("record took {}ms", Unbox.box(System.currentTimeMillis() - currentTimeMillis2));
            hSSFRow2 = hSSFRow;
        }
        LOGGER.atDebug().log("total sheet cell creation took {}ms", Unbox.box(System.currentTimeMillis() - currentTimeMillis));
    }

    private void setRepeatingRowsAndColumns(CellRangeAddress cellRangeAddress, CellRangeAddress cellRangeAddress2) {
        int i;
        int i2;
        int i3;
        int i4;
        ArrayList arrayList;
        int sheetIndex = this._workbook.getSheetIndex(this);
        SpreadsheetVersion spreadsheetVersion = SpreadsheetVersion.EXCEL97;
        int lastRowIndex = spreadsheetVersion.getLastRowIndex();
        int lastColumnIndex = spreadsheetVersion.getLastColumnIndex();
        if (cellRangeAddress != null) {
            int firstRow = cellRangeAddress.getFirstRow();
            int lastRow = cellRangeAddress.getLastRow();
            if ((firstRow == -1 && lastRow != -1) || firstRow > lastRow || firstRow < 0 || firstRow > lastRowIndex || lastRow < 0 || lastRow > lastRowIndex) {
                throw new IllegalArgumentException("Invalid row range specification");
            }
            i = firstRow;
            i2 = lastRow;
        } else {
            i = -1;
            i2 = -1;
        }
        if (cellRangeAddress2 != null) {
            int firstColumn = cellRangeAddress2.getFirstColumn();
            int lastColumn = cellRangeAddress2.getLastColumn();
            if ((firstColumn == -1 && lastColumn != -1) || firstColumn > lastColumn || firstColumn < 0 || firstColumn > lastColumnIndex || lastColumn < 0 || lastColumn > lastColumnIndex) {
                throw new IllegalArgumentException("Invalid column range specification");
            }
            i4 = lastColumn;
            i3 = firstColumn;
        } else {
            i3 = -1;
            i4 = -1;
        }
        short checkExternSheet = this._workbook.getWorkbook().checkExternSheet(sheetIndex);
        boolean z = (cellRangeAddress == null || cellRangeAddress2 == null) ? false : true;
        boolean z2 = cellRangeAddress == null && cellRangeAddress2 == null;
        HSSFName builtInName = this._workbook.getBuiltInName((byte) 7, sheetIndex);
        if (z2) {
            if (builtInName != null) {
                this._workbook.removeName(builtInName);
                return;
            }
            return;
        }
        if (builtInName == null) {
            builtInName = this._workbook.createBuiltInName((byte) 7, sheetIndex);
        }
        HSSFName hSSFName = builtInName;
        ArrayList arrayList2 = new ArrayList();
        if (z) {
            arrayList2.add(new MemFuncPtg(23));
        }
        if (cellRangeAddress2 != null) {
            arrayList = arrayList2;
            arrayList.add(new Area3DPtg(0, lastRowIndex, i3, i4, false, false, false, false, checkExternSheet));
        } else {
            arrayList = arrayList2;
        }
        if (cellRangeAddress != null) {
            arrayList.add(new Area3DPtg(i, i2, 0, lastColumnIndex, false, false, false, false, checkExternSheet));
        }
        if (z) {
            arrayList.add(UnionPtg.instance);
        }
        Ptg[] ptgArr = new Ptg[arrayList.size()];
        arrayList.toArray(ptgArr);
        hSSFName.setNameDefinition(ptgArr);
        getPrintSetup().setValidSettings(false);
        setActive(true);
    }

    private void updateFormulasForShift(FormulaShifter formulaShifter) {
        this._sheet.updateFormulasAfterCellShift(formulaShifter, this._book.checkExternSheet(this._workbook.getSheetIndex(this)));
        int numberOfSheets = this._workbook.getNumberOfSheets();
        for (int i = 0; i < numberOfSheets; i++) {
            InternalSheet sheet = this._workbook.getSheetAt(i).getSheet();
            if (sheet != this._sheet) {
                sheet.updateFormulasAfterCellShift(formulaShifter, this._book.checkExternSheet(i));
            }
        }
        this._workbook.getWorkbook().updateNamesAfterCellShift(formulaShifter);
    }

    private void validateArrayFormulas(CellRangeAddress cellRangeAddress) {
        int firstColumn = cellRangeAddress.getFirstColumn();
        int lastRow = cellRangeAddress.getLastRow();
        int lastColumn = cellRangeAddress.getLastColumn();
        for (int firstRow = cellRangeAddress.getFirstRow(); firstRow <= lastRow; firstRow++) {
            HSSFRow row = getRow(firstRow);
            if (row != null) {
                for (int i = firstColumn; i <= lastColumn; i++) {
                    HSSFCell cell = row.getCell(i);
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
        if (dataValidation == null) {
            throw new IllegalArgumentException("objValidation must not be null");
        }
        this._sheet.getOrCreateDataValidityTable().addDataValidation(((HSSFDataValidation) dataValidation).createDVRecord(this));
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void autoSizeColumn(int i) {
        autoSizeColumn(i, false);
    }

    public HSSFSheet cloneSheet(HSSFWorkbook hSSFWorkbook) {
        getDrawingPatriarch();
        HSSFSheet hSSFSheet = new HSSFSheet(hSSFWorkbook, this._sheet.cloneSheet());
        int findFirstRecordLocBySid = hSSFSheet._sheet.findFirstRecordLocBySid((short) 236);
        DrawingRecord drawingRecord = (DrawingRecord) hSSFSheet._sheet.findFirstRecordBySid((short) 236);
        if (drawingRecord != null) {
            hSSFSheet._sheet.getRecords().remove(drawingRecord);
        }
        if (getDrawingPatriarch() != null) {
            HSSFPatriarch createPatriarch = HSSFPatriarch.createPatriarch(getDrawingPatriarch(), hSSFSheet);
            hSSFSheet._sheet.getRecords().add(findFirstRecordLocBySid, createPatriarch.getBoundAggregate());
            hSSFSheet._patriarch = createPatriarch;
        }
        return hSSFSheet;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void createFreezePane(int i, int i2, int i3, int i4) {
        validateColumn(i);
        validateRow(i2);
        if (i3 < i) {
            throw new IllegalArgumentException("leftmostColumn parameter must not be less than colSplit parameter");
        }
        if (i4 >= i2) {
            getSheet().createFreezePane(i, i2, i4, i3);
            return;
        }
        throw new IllegalArgumentException("topRow parameter must not be less than leftmostColumn parameter");
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    @Removal(version = "7.0.0")
    @Deprecated
    public void createSplitPane(int i, int i2, int i3, int i4, int i5) {
        getSheet().createSplitPane(i, i2, i4, i3, i5);
    }

    public void dumpDrawingRecords(boolean z, PrintWriter printWriter) {
        this._sheet.aggregateDrawingRecords(this._book.getDrawingManager(), false);
        for (EscherRecord escherRecord : ((EscherAggregate) getSheet().findFirstRecordBySid(EscherAggregate.sid)).getEscherRecords()) {
            if (z) {
                printWriter.println(escherRecord);
            } else {
                escherRecord.display(printWriter, 0);
            }
        }
        printWriter.flush();
    }

    public HSSFComment findCellComment(int i, int i2) {
        HSSFPatriarch drawingPatriarch = getDrawingPatriarch();
        if (drawingPatriarch == null) {
            return null;
        }
        return lookForComment(drawingPatriarch, i, i2);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellAddress getActiveCell() {
        return new CellAddress(this._sheet.getActiveCellRow(), this._sheet.getActiveCellCol());
    }

    public boolean getAlternateExpression() {
        return ((WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129)).getAlternateExpression();
    }

    public boolean getAlternateFormula() {
        return ((WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129)).getAlternateFormula();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getAutobreaks() {
        return ((WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129)).getAutobreaks();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public Map<CellAddress, HSSFComment> getCellComments() {
        HSSFPatriarch drawingPatriarch = getDrawingPatriarch();
        if (drawingPatriarch == null) {
            drawingPatriarch = createDrawingPatriarch();
        }
        TreeMap treeMap = new TreeMap();
        findCellCommentLocations(drawingPatriarch, treeMap);
        return treeMap;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int[] getColumnBreaks() {
        return this._sheet.getPageSettings().getColumnBreaks();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getColumnOutlineLevel(int i) {
        return this._sheet.getColumnOutlineLevel(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getColumnWidth(int i) {
        return this._sheet.getColumnWidth(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public float getColumnWidthInPixels(int i) {
        int columnWidth = getColumnWidth(i);
        return columnWidth / (columnWidth == getDefaultColumnWidth() * 256 ? PX_DEFAULT : PX_MODIFIED);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public DataValidationHelper getDataValidationHelper() {
        return new HSSFDataValidationHelper(this);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public List<HSSFDataValidation> getDataValidations() {
        DataValidityTable orCreateDataValidityTable = this._sheet.getOrCreateDataValidityTable();
        final ArrayList arrayList = new ArrayList();
        orCreateDataValidityTable.visitContainedRecords(new RecordAggregate.RecordVisitor() { // from class: org.apache.poi.hssf.usermodel.HSSFSheet.1
            private HSSFEvaluationWorkbook book;

            {
                this.book = HSSFEvaluationWorkbook.create(HSSFSheet.this.getWorkbook());
            }

            @Override // org.apache.poi.hssf.record.aggregates.RecordAggregate.RecordVisitor
            public void visitRecord(Record record) {
                if (record instanceof DVRecord) {
                    DVRecord dVRecord = (DVRecord) record;
                    HSSFDataValidation hSSFDataValidation = new HSSFDataValidation(dVRecord.getCellRangeAddress().copy(), DVConstraint.createDVConstraint(dVRecord, this.book));
                    hSSFDataValidation.setErrorStyle(dVRecord.getErrorStyle());
                    hSSFDataValidation.setEmptyCellAllowed(dVRecord.getEmptyCellAllowed());
                    hSSFDataValidation.setSuppressDropDownArrow(dVRecord.getSuppressDropdownArrow());
                    hSSFDataValidation.createPromptBox(dVRecord.getPromptTitle(), dVRecord.getPromptText());
                    hSSFDataValidation.setShowPromptBox(dVRecord.getShowPromptOnCellSelected());
                    hSSFDataValidation.createErrorBox(dVRecord.getErrorTitle(), dVRecord.getErrorText());
                    hSSFDataValidation.setShowErrorBox(dVRecord.getShowErrorOnInvalidValue());
                    arrayList.add(hSSFDataValidation);
                }
            }
        });
        return arrayList;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getDefaultColumnWidth() {
        return this._sheet.getDefaultColumnWidth();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public short getDefaultRowHeight() {
        return this._sheet.getDefaultRowHeight();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public float getDefaultRowHeightInPoints() {
        return this._sheet.getDefaultRowHeight() / 20.0f;
    }

    public boolean getDialog() {
        return ((WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129)).getDialog();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getDisplayGuts() {
        return ((WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129)).getDisplayGuts();
    }

    public EscherAggregate getDrawingEscherAggregate() {
        this._book.findDrawingGroup();
        if (this._book.getDrawingManager() == null || this._sheet.aggregateDrawingRecords(this._book.getDrawingManager(), false) == -1) {
            return null;
        }
        return (EscherAggregate) this._sheet.findFirstRecordBySid(EscherAggregate.sid);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getFirstRowNum() {
        return this._firstrow;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getFitToPage() {
        return ((WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129)).getFitToPage();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getForceFormulaRecalculation() {
        return this._sheet.getUncalced();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getHorizontallyCenter() {
        return this._sheet.getPageSettings().getHCenter().getHCenter();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public List<HSSFHyperlink> getHyperlinkList() {
        ArrayList arrayList = new ArrayList();
        for (RecordBase recordBase : this._sheet.getRecords()) {
            if (recordBase instanceof HyperlinkRecord) {
                arrayList.add(new HSSFHyperlink((HyperlinkRecord) recordBase));
            }
        }
        return arrayList;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getLastRowNum() {
        return this._lastrow;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public short getLeftCol() {
        return this._sheet.getLeftCol();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    @Removal(version = "7.0.0")
    @Deprecated
    public double getMargin(short s) {
        return getMargin(PageMargin.getByShortValue(s));
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellRangeAddress getMergedRegion(int i) {
        return this._sheet.getMergedRegionAt(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public List<CellRangeAddress> getMergedRegions() {
        ArrayList arrayList = new ArrayList();
        int numMergedRegions = this._sheet.getNumMergedRegions();
        for (int i = 0; i < numMergedRegions; i++) {
            arrayList.add(this._sheet.getMergedRegionAt(i));
        }
        return arrayList;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getNumMergedRegions() {
        return this._sheet.getNumMergedRegions();
    }

    public boolean getObjectProtect() {
        return getProtectionBlock().isObjectProtected();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public PaneInformation getPaneInformation() {
        return getSheet().getPaneInformation();
    }

    public short getPassword() {
        return (short) getProtectionBlock().getPasswordHash();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public int getPhysicalNumberOfRows() {
        return this._rows.size();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getProtect() {
        return getProtectionBlock().isSheetProtected();
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
        return this._sheet.getPageSettings().getRowBreaks();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getRowSumsBelow() {
        return ((WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129)).getRowSumsBelow();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getRowSumsRight() {
        return ((WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129)).getRowSumsRight();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getScenarioProtect() {
        return getProtectionBlock().isScenarioProtected();
    }

    @Internal
    public InternalSheet getSheet() {
        return this._sheet;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public String getSheetName() {
        HSSFWorkbook workbook = getWorkbook();
        return workbook.getSheetName(workbook.getSheetIndex(this));
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public short getTopRow() {
        return this._sheet.getTopRow();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean getVerticallyCenter() {
        return this._sheet.getPageSettings().getVCenter().getVCenter();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void groupColumn(int i, int i2) {
        this._sheet.groupColumnRange(i, i2, true);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void groupRow(int i, int i2) {
        this._sheet.groupRowRange(i, i2, true);
    }

    public void insertChartRecords(List<Record> list) {
        this._sheet.getRecords().addAll(this._sheet.findFirstRecordLocBySid(WindowTwoRecord.sid), list);
    }

    public boolean isActive() {
        return getSheet().getWindowTwo().isActive();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isColumnBroken(int i) {
        return this._sheet.getPageSettings().isColumnBroken(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isColumnHidden(int i) {
        return this._sheet.isColumnHidden(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isDisplayFormulas() {
        return this._sheet.isDisplayFormulas();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isDisplayGridlines() {
        return this._sheet.isDisplayGridlines();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isDisplayRowColHeadings() {
        return this._sheet.isDisplayRowColHeadings();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isDisplayZeros() {
        return this._sheet.getWindowTwo().getDisplayZeros();
    }

    public boolean isGridsPrinted() {
        return this._sheet.isGridsPrinted();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isPrintGridlines() {
        return getSheet().getPrintGridlines().getPrintGridlines();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isPrintRowAndColumnHeadings() {
        return getSheet().getPrintHeaders().getPrintHeaders();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isRightToLeft() {
        return this._sheet.getWindowTwo().getArabic();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isRowBroken(int i) {
        return this._sheet.getPageSettings().isRowBroken(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public boolean isSelected() {
        return getSheet().getWindowTwo().getSelected();
    }

    public void preSerialize() {
        HSSFPatriarch hSSFPatriarch = this._patriarch;
        if (hSSFPatriarch != null) {
            hSSFPatriarch.preSerialize();
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void protectSheet(String str) {
        getProtectionBlock().protectSheet(str, true, true);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellRange<HSSFCell> removeArrayFormula(Cell cell) {
        if (cell.getSheet() != this) {
            throw new IllegalArgumentException("Specified cell does not belong to this sheet.");
        }
        CellValueRecordInterface cellValueRecord = ((HSSFCell) cell).getCellValueRecord();
        if (cellValueRecord instanceof FormulaRecordAggregate) {
            CellRange<HSSFCell> cellRange = getCellRange(((FormulaRecordAggregate) cellValueRecord).removeArrayFormula(cell.getRowIndex(), cell.getColumnIndex()));
            Iterator<HSSFCell> it2 = cellRange.iterator();
            while (it2.hasNext()) {
                it2.next().setBlank();
            }
            return cellRange;
        }
        throw new IllegalArgumentException("Cell " + new CellReference(cell).formatAsString() + " is not part of an array formula.");
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void removeColumnBreak(int i) {
        this._sheet.getPageSettings().removeColumnBreak(i);
    }

    public void removeHyperlink(HSSFHyperlink hSSFHyperlink) {
        removeHyperlink(hSSFHyperlink.record);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void removeMergedRegion(int i) {
        this._sheet.removeMergedRegion(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void removeMergedRegions(Collection<Integer> collection) {
        Iterator it2 = new TreeSet(collection).descendingSet().iterator();
        while (it2.hasNext()) {
            this._sheet.removeMergedRegion(((Integer) it2.next()).intValue());
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void removeRow(Row row) {
        HSSFRow hSSFRow = (HSSFRow) row;
        if (row.getSheet() != this) {
            throw new IllegalArgumentException("Specified row does not belong to this sheet");
        }
        Iterator<Cell> it2 = row.iterator();
        while (it2.hasNext()) {
            HSSFCell hSSFCell = (HSSFCell) it2.next();
            if (hSSFCell.isPartOfArrayFormulaGroup()) {
                hSSFCell.tryToDeleteArrayFormula("Row[rownum=" + row.getRowNum() + "] contains cell(s) included in a multi-cell array formula. You cannot change part of an array.");
            }
        }
        if (this._rows.isEmpty()) {
            return;
        }
        if (this._rows.remove(Integer.valueOf(row.getRowNum())) != row) {
            throw new IllegalArgumentException("Specified row does not belong to this sheet");
        }
        if (hSSFRow.getRowNum() == getLastRowNum()) {
            this._lastrow = findLastRow(this._lastrow);
        }
        if (hSSFRow.getRowNum() == getFirstRowNum()) {
            this._firstrow = findFirstRow(this._firstrow);
        }
        this._sheet.removeRow(hSSFRow.getRowRecord());
        if (this._rows.isEmpty()) {
            this._firstrow = -1;
            this._lastrow = -1;
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void removeRowBreak(int i) {
        this._sheet.getPageSettings().removeRowBreak(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public Iterator<Row> rowIterator() {
        return this._rows.values().iterator();
    }

    public void setActive(boolean z) {
        getSheet().getWindowTwo().setActive(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setActiveCell(CellAddress cellAddress) {
        int row = cellAddress.getRow();
        short column = (short) cellAddress.getColumn();
        this._sheet.setActiveCellRow(row);
        this._sheet.setActiveCellCol(column);
    }

    public void setAlternativeExpression(boolean z) {
        ((WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129)).setAlternateExpression(z);
    }

    public void setAlternativeFormula(boolean z) {
        ((WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129)).setAlternateFormula(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public CellRange<HSSFCell> setArrayFormula(String str, CellRangeAddress cellRangeAddress) {
        Ptg[] parse = HSSFFormulaParser.parse(str, this._workbook, FormulaType.ARRAY, this._workbook.getSheetIndex(this));
        CellRange<HSSFCell> cellRange = getCellRange(cellRangeAddress);
        Iterator<HSSFCell> it2 = cellRange.iterator();
        while (it2.hasNext()) {
            it2.next().setCellArrayFormula(cellRangeAddress);
        }
        ((FormulaRecordAggregate) cellRange.getTopLeftCell().getCellValueRecord()).setArrayFormula(cellRangeAddress, parse);
        return cellRange;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setAutobreaks(boolean z) {
        ((WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129)).setAutobreaks(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setColumnBreak(int i) {
        short s = (short) i;
        validateColumn(s);
        this._sheet.getPageSettings().setColumnBreak(s, (short) 0, (short) SpreadsheetVersion.EXCEL97.getLastRowIndex());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setColumnGroupCollapsed(int i, boolean z) {
        this._sheet.setColumnGroupCollapsed(i, z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setColumnHidden(int i, boolean z) {
        this._sheet.setColumnHidden(i, z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setColumnWidth(int i, int i2) {
        this._sheet.setColumnWidth(i, i2);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDefaultColumnStyle(int i, CellStyle cellStyle) {
        this._sheet.setDefaultColumnStyle(i, cellStyle.getIndex());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDefaultColumnWidth(int i) {
        this._sheet.setDefaultColumnWidth(i);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDefaultRowHeight(short s) {
        this._sheet.setDefaultRowHeight(s);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDefaultRowHeightInPoints(float f) {
        this._sheet.setDefaultRowHeight((short) (f * 20.0f));
    }

    public void setDialog(boolean z) {
        ((WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129)).setDialog(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDisplayFormulas(boolean z) {
        this._sheet.setDisplayFormulas(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDisplayGridlines(boolean z) {
        this._sheet.setDisplayGridlines(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDisplayGuts(boolean z) {
        ((WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129)).setDisplayGuts(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDisplayRowColHeadings(boolean z) {
        this._sheet.setDisplayRowColHeadings(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setDisplayZeros(boolean z) {
        this._sheet.getWindowTwo().setDisplayZeros(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setFitToPage(boolean z) {
        ((WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129)).setFitToPage(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setForceFormulaRecalculation(boolean z) {
        this._sheet.setUncalced(z);
    }

    public void setGridsPrinted(boolean z) {
        this._sheet.setGridsPrinted(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setHorizontallyCenter(boolean z) {
        this._sheet.getPageSettings().getHCenter().setHCenter(z);
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
        getSheet().getPrintGridlines().setPrintGridlines(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setPrintRowAndColumnHeadings(boolean z) {
        getSheet().getPrintHeaders().setPrintHeaders(z);
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
        this._sheet.getWindowTwo().setArabic(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRowBreak(int i) {
        validateRow(i);
        this._sheet.getPageSettings().setRowBreak(i, (short) 0, (short) 255);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRowGroupCollapsed(int i, boolean z) {
        if (z) {
            this._sheet.getRowsAggregate().collapseRow(i);
        } else {
            this._sheet.getRowsAggregate().expandRow(i);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRowSumsBelow(boolean z) {
        WSBoolRecord wSBoolRecord = (WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129);
        wSBoolRecord.setRowSumsBelow(z);
        wSBoolRecord.setAlternateExpression(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setRowSumsRight(boolean z) {
        ((WSBoolRecord) this._sheet.findFirstRecordBySid((short) 129)).setRowSumsRight(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setSelected(boolean z) {
        getSheet().getWindowTwo().setSelected(z);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setVerticallyCenter(boolean z) {
        this._sheet.getPageSettings().getVCenter().setVCenter(z);
    }

    public void setZoom(int i, int i2) {
        if (i < 1 || i > 65535) {
            throw new IllegalArgumentException("Numerator must be greater than 0 and less than 65536");
        }
        if (i2 >= 1 && i2 <= 65535) {
            SCLRecord sCLRecord = new SCLRecord();
            sCLRecord.setNumerator((short) i);
            sCLRecord.setDenominator((short) i2);
            getSheet().setSCLRecord(sCLRecord);
            return;
        }
        throw new IllegalArgumentException("Denominator must be greater than 0 and less than 65536");
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void shiftColumns(int i, int i2, int i3) {
        new HSSFColumnShifter(this).shiftColumns(i, i2, i3);
        int sheetIndex = this._workbook.getSheetIndex(this);
        updateFormulasForShift(FormulaShifter.createForColumnShift(this._book.checkExternSheet(sheetIndex), this._workbook.getSheetName(sheetIndex), i, i2, i3, SpreadsheetVersion.EXCEL97));
    }

    @Deprecated
    public void shiftMerged(int i, int i2, int i3, boolean z) {
        new HSSFRowShifter(this).shiftMergedRegions(i, i2, i3);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void shiftRows(int i, int i2, int i3) {
        shiftRows(i, i2, i3, false, false);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void showInPane(int i, int i2) {
        int lastRowIndex = SpreadsheetVersion.EXCEL97.getLastRowIndex();
        if (i <= lastRowIndex) {
            showInPane((short) i, (short) i2);
            return;
        }
        throw new IllegalArgumentException("Maximum row number is " + lastRowIndex);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet, java.lang.Iterable
    public Spliterator<Row> spliterator() {
        return this._rows.values().spliterator();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void ungroupColumn(int i, int i2) {
        this._sheet.groupColumnRange(i, i2, false);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void ungroupRow(int i, int i2) {
        this._sheet.groupRowRange(i, i2, false);
    }

    public void validateColumn(int i) {
        int lastColumnIndex = SpreadsheetVersion.EXCEL97.getLastColumnIndex();
        if (i <= lastColumnIndex) {
            if (i < 0) {
                throw new IllegalArgumentException("Minimum column number is 0");
            }
        } else {
            throw new IllegalArgumentException("Maximum column number is " + lastColumnIndex);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void validateMergedRegions() {
        checkForMergedRegionsIntersectingArrayFormulas();
        checkForIntersectingMergedRegions();
    }

    public void validateRow(int i) {
        int lastRowIndex = SpreadsheetVersion.EXCEL97.getLastRowIndex();
        if (i <= lastRowIndex) {
            if (i < 0) {
                throw new IllegalArgumentException("Minumum row number is 0");
            }
        } else {
            throw new IllegalArgumentException("Maximum row number is " + lastRowIndex);
        }
    }

    private int addMergedRegion(CellRangeAddress cellRangeAddress, boolean z) {
        if (cellRangeAddress.getNumberOfCells() >= 2) {
            cellRangeAddress.validate(SpreadsheetVersion.EXCEL97);
            if (z) {
                validateArrayFormulas(cellRangeAddress);
                validateMergedRegions(cellRangeAddress);
            }
            return this._sheet.addMergedRegion(cellRangeAddress.getFirstRow(), cellRangeAddress.getFirstColumn(), cellRangeAddress.getLastRow(), cellRangeAddress.getLastColumn());
        }
        throw new IllegalArgumentException("Merged region " + cellRangeAddress.formatAsString() + " must contain 2 or more cells");
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
            setColumnWidth(i, (int) d);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public HSSFPatriarch createDrawingPatriarch() {
        HSSFPatriarch patriarch = getPatriarch(true);
        this._patriarch = patriarch;
        return patriarch;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public HSSFRow createRow(int i) {
        HSSFRow hSSFRow = new HSSFRow(this._workbook, this, i);
        hSSFRow.setHeight(getDefaultRowHeight());
        hSSFRow.getRowRecord().setBadFontHeight(false);
        addRow(hSSFRow, true);
        return hSSFRow;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void createSplitPane(int i, int i2, int i3, int i4, PaneType paneType) {
        int i5;
        int i6 = C195452.$SwitchMap$org$apache$poi$ss$usermodel$PaneType[paneType.ordinal()];
        int i7 = 1;
        if (i6 == 1) {
            i7 = 0;
        } else if (i6 != 2) {
            i7 = 3;
            if (i6 == 3) {
                i5 = 2;
                getSheet().createSplitPane(i, i2, i4, i3, i5);
            }
        }
        i5 = i7;
        getSheet().createSplitPane(i, i2, i4, i3, i5);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public HSSFComment getCellComment(CellAddress cellAddress) {
        return findCellComment(cellAddress.getRow(), cellAddress.getColumn());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public HSSFCellStyle getColumnStyle(int i) {
        short xFIndexForColAt = this._sheet.getXFIndexForColAt((short) i);
        if (xFIndexForColAt == 15) {
            return null;
        }
        return new HSSFCellStyle(xFIndexForColAt, this._book.getExFormatAt(xFIndexForColAt), this._book);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public HSSFPatriarch getDrawingPatriarch() {
        HSSFPatriarch patriarch = getPatriarch(false);
        this._patriarch = patriarch;
        return patriarch;
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public HSSFFooter getFooter() {
        return new HSSFFooter(this._sheet.getPageSettings());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public HSSFHeader getHeader() {
        return new HSSFHeader(this._sheet.getPageSettings());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public double getMargin(PageMargin pageMargin) {
        int i = C195452.$SwitchMap$org$apache$poi$ss$usermodel$PageMargin[pageMargin.ordinal()];
        if (i == 1) {
            return this._sheet.getPageSettings().getPrintSetup().getFooterMargin();
        }
        if (i != 2) {
            return this._sheet.getPageSettings().getMargin(pageMargin.getLegacyApiValue());
        }
        return this._sheet.getPageSettings().getPrintSetup().getHeaderMargin();
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public HSSFPrintSetup getPrintSetup() {
        return new HSSFPrintSetup(this._sheet.getPageSettings().getPrintSetup());
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public HSSFRow getRow(int i) {
        return this._rows.get(Integer.valueOf(i));
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public HSSFSheetConditionalFormatting getSheetConditionalFormatting() {
        return new HSSFSheetConditionalFormatting(this);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public HSSFWorkbook getWorkbook() {
        return this._workbook;
    }

    public void removeHyperlink(HyperlinkRecord hyperlinkRecord) {
        Iterator<RecordBase> it2 = this._sheet.getRecords().iterator();
        while (it2.hasNext()) {
            RecordBase next = it2.next();
            if ((next instanceof HyperlinkRecord) && hyperlinkRecord == ((HyperlinkRecord) next)) {
                it2.remove();
                return;
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public HSSFAutoFilter setAutoFilter(CellRangeAddress cellRangeAddress) {
        InternalWorkbook workbook = this._workbook.getWorkbook();
        int sheetIndex = this._workbook.getSheetIndex(this);
        int i = sheetIndex + 1;
        NameRecord specificBuiltinRecord = workbook.getSpecificBuiltinRecord((byte) 13, i);
        if (specificBuiltinRecord == null) {
            specificBuiltinRecord = workbook.createBuiltInName((byte) 13, i);
        }
        NameRecord nameRecord = specificBuiltinRecord;
        int firstRow = cellRangeAddress.getFirstRow();
        if (firstRow == -1) {
            firstRow = 0;
        }
        nameRecord.setNameDefinition(new Ptg[]{new Area3DPtg(firstRow, cellRangeAddress.getLastRow(), cellRangeAddress.getFirstColumn(), cellRangeAddress.getLastColumn(), false, false, false, false, sheetIndex)});
        AutoFilterInfoRecord autoFilterInfoRecord = new AutoFilterInfoRecord();
        autoFilterInfoRecord.setNumEntries((short) ((cellRangeAddress.getLastColumn() + 1) - cellRangeAddress.getFirstColumn()));
        this._sheet.getRecords().add(this._sheet.findFirstRecordLocBySid((short) 512), autoFilterInfoRecord);
        HSSFPatriarch createDrawingPatriarch = createDrawingPatriarch();
        int firstColumn = cellRangeAddress.getFirstColumn();
        int lastColumn = cellRangeAddress.getLastColumn();
        while (firstColumn <= lastColumn) {
            short s = (short) firstColumn;
            firstColumn++;
            createDrawingPatriarch.createComboBox(new HSSFClientAnchor(0, 0, 0, 0, s, firstRow, (short) firstColumn, firstRow + 1));
        }
        return new HSSFAutoFilter(this);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void shiftRows(int i, int i2, int i3, boolean z, boolean z2) {
        shiftRows(i, i2, i3, z, z2, true);
    }

    private void validateMergedRegions(CellRangeAddress cellRangeAddress) {
        for (CellRangeAddress cellRangeAddress2 : getMergedRegions()) {
            if (cellRangeAddress2.intersects(cellRangeAddress)) {
                throw new IllegalStateException("Cannot add merged region " + cellRangeAddress.formatAsString() + " to sheet because it overlaps with an existing merged region (" + cellRangeAddress2.formatAsString() + ").");
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public HSSFHyperlink getHyperlink(int i, int i2) {
        for (RecordBase recordBase : this._sheet.getRecords()) {
            if (recordBase instanceof HyperlinkRecord) {
                HyperlinkRecord hyperlinkRecord = (HyperlinkRecord) recordBase;
                if (hyperlinkRecord.getFirstColumn() == i2 && hyperlinkRecord.getFirstRow() == i) {
                    return new HSSFHyperlink(hyperlinkRecord);
                }
            }
        }
        return null;
    }

    public void shiftRows(int i, int i2, int i3, boolean z, boolean z2, boolean z3) {
        int i4;
        int i5;
        if (i2 >= i) {
            if (i3 < 0) {
                i4 = 1;
                i5 = i;
            } else {
                if (i3 <= 0) {
                    return;
                }
                i4 = -1;
                i5 = i2;
            }
            HSSFRowShifter hSSFRowShifter = new HSSFRowShifter(this);
            if (z3) {
                moveCommentsForRowShift(i, i2, i3);
            }
            hSSFRowShifter.shiftMergedRegions(i, i2, i3);
            this._sheet.getPageSettings().shiftRowBreaks(i, i2, i3);
            deleteOverwrittenHyperlinksForRowShift(i, i2, i3);
            while (i5 >= i && i5 <= i2 && i5 >= 0 && i5 < 65536) {
                HSSFRow row = getRow(i5);
                if (row != null) {
                    notifyRowShifting(row);
                }
                int i6 = i5 + i3;
                HSSFRow row2 = getRow(i6);
                if (row2 == null) {
                    row2 = createRow(i6);
                }
                row2.removeAllCells();
                if (row != null) {
                    if (z) {
                        row2.setHeight(row.getHeight());
                    }
                    if (z2) {
                        row.setHeight((short) 255);
                    }
                    Iterator<Cell> cellIterator = row.cellIterator();
                    while (cellIterator.hasNext()) {
                        HSSFCell hSSFCell = (HSSFCell) cellIterator.next();
                        HSSFHyperlink hyperlink = hSSFCell.getHyperlink();
                        row.removeCell(hSSFCell);
                        CellValueRecordInterface cellValueRecord = hSSFCell.getCellValueRecord();
                        cellValueRecord.setRow(i6);
                        row2.createCellFromRecord(cellValueRecord);
                        this._sheet.addValueRecord(i6, cellValueRecord);
                        if (hyperlink != null) {
                            hyperlink.setFirstRow(hyperlink.getFirstRow() + i3);
                            hyperlink.setLastRow(hyperlink.getLastRow() + i3);
                        }
                    }
                    row.removeAllCells();
                }
                i5 += i4;
            }
            recomputeFirstAndLastRowsForRowShift(i, i2, i3);
            int sheetIndex = this._workbook.getSheetIndex(this);
            updateFormulasForShift(FormulaShifter.createForRowShift(this._book.checkExternSheet(sheetIndex), this._workbook.getSheetName(sheetIndex), i, i2, i3, SpreadsheetVersion.EXCEL97));
            return;
        }
        throw new IllegalArgumentException("startRow must be less than or equal to endRow. To shift rows up, use n<0.");
    }

    private void showInPane(short s, short s2) {
        this._sheet.setTopRow(s);
        this._sheet.setLeftCol(s2);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setMargin(PageMargin pageMargin, double d) {
        int i = C195452.$SwitchMap$org$apache$poi$ss$usermodel$PageMargin[pageMargin.ordinal()];
        if (i == 1) {
            this._sheet.getPageSettings().getPrintSetup().setFooterMargin(d);
        } else if (i != 2) {
            this._sheet.getPageSettings().setMargin(pageMargin.getLegacyApiValue(), d);
        } else {
            this._sheet.getPageSettings().getPrintSetup().setHeaderMargin(d);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void createFreezePane(int i, int i2) {
        createFreezePane(i, i2, i, i2);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public void setZoom(int i) {
        setZoom(i, 100);
    }

    public HSSFSheet(HSSFWorkbook hSSFWorkbook, InternalSheet internalSheet) {
        this._firstrow = -1;
        this._lastrow = -1;
        this._sheet = internalSheet;
        this._rows = new TreeMap<>();
        this._workbook = hSSFWorkbook;
        this._book = hSSFWorkbook.getWorkbook();
        setPropertiesFromSheet(internalSheet);
    }

    @Override // org.apache.poi.ss.usermodel.Sheet
    public HSSFHyperlink getHyperlink(CellAddress cellAddress) {
        return getHyperlink(cellAddress.getRow(), cellAddress.getColumn());
    }
}
