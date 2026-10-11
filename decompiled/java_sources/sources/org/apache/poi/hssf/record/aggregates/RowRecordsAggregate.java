package org.apache.poi.hssf.record.aggregates;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Spliterator;
import java.util.TreeMap;
import java.util.function.Consumer;
import org.apache.poi.hssf.model.RecordStream;
import org.apache.poi.hssf.record.CellValueRecordInterface;
import org.apache.poi.hssf.record.DBCellRecord;
import org.apache.poi.hssf.record.DimensionsRecord;
import org.apache.poi.hssf.record.FormulaRecord;
import org.apache.poi.hssf.record.IndexRecord;
import org.apache.poi.hssf.record.MulBlankRecord;
import org.apache.poi.hssf.record.Record;
import org.apache.poi.hssf.record.RowRecord;
import org.apache.poi.hssf.record.UnknownRecord;
import org.apache.poi.hssf.record.aggregates.RecordAggregate;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.FormulaShifter;

/* loaded from: classes12.dex */
public final class RowRecordsAggregate extends RecordAggregate {
    private int _firstrow;
    private int _lastrow;
    private RowRecord[] _rowRecordValues;
    private final Map<Integer, RowRecord> _rowRecords;
    private final SharedValueManager _sharedValueManager;
    private final List<Record> _unknownRecords;
    private final ValueRecordsAggregate _valuesAgg;

    public RowRecordsAggregate() {
        this(SharedValueManager.createEmpty());
    }

    private void addUnknownRecord(Record record) {
        this._unknownRecords.add(record);
    }

    public static RowRecord createRow(int i) {
        return new RowRecord(i);
    }

    private int getEndRowNumberForBlock(int i) {
        int i2 = ((i + 1) * 32) - 1;
        if (i2 >= this._rowRecords.size()) {
            i2 = this._rowRecords.size() - 1;
        }
        if (this._rowRecordValues == null) {
            this._rowRecordValues = (RowRecord[]) this._rowRecords.values().toArray(new RowRecord[0]);
        }
        try {
            return this._rowRecordValues[i2].getRowNumber();
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("Did not find end row for block " + i);
        }
    }

    private int getRowBlockSize(int i) {
        return getRowCountForBlock(i) * 20;
    }

    private int getStartRowNumberForBlock(int i) {
        int i2 = i * 32;
        if (this._rowRecordValues == null) {
            this._rowRecordValues = (RowRecord[]) this._rowRecords.values().toArray(new RowRecord[0]);
        }
        try {
            return this._rowRecordValues[i2].getRowNumber();
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("Did not find start row for block " + i);
        }
    }

    private static short[] shortListToArray(List<Short> list) {
        short[] sArr = new short[list.size()];
        Iterator<Short> it2 = list.iterator();
        int i = 0;
        while (it2.hasNext()) {
            sArr[i] = it2.next().shortValue();
            i++;
        }
        return sArr;
    }

    private int visitRowRecordsForBlock(int i, RecordAggregate.RecordVisitor recordVisitor) {
        int i2 = i * 32;
        int i3 = i2 + 32;
        Iterator<RowRecord> it2 = this._rowRecords.values().iterator();
        int i4 = 0;
        int i5 = 0;
        while (i5 < i2) {
            it2.next();
            i5++;
        }
        while (it2.hasNext()) {
            int i6 = i5 + 1;
            if (i5 >= i3) {
                break;
            }
            RowRecord next = it2.next();
            i4 += next.getRecordSize();
            recordVisitor.visitRecord(next);
            i5 = i6;
        }
        return i4;
    }

    private int writeHidden(RowRecord rowRecord, int i) {
        short outlineLevel = rowRecord.getOutlineLevel();
        while (rowRecord != null && getRow(i).getOutlineLevel() >= outlineLevel) {
            rowRecord.setZeroHeight(true);
            i++;
            rowRecord = getRow(i);
        }
        return i;
    }

    public void collapseRow(int i) {
        int findStartOfRowOutlineGroup = findStartOfRowOutlineGroup(i);
        int writeHidden = writeHidden(getRow(findStartOfRowOutlineGroup), findStartOfRowOutlineGroup);
        RowRecord row = getRow(writeHidden);
        if (row == null) {
            row = createRow(writeHidden);
            insertRow(row);
        }
        row.setColapsed(true);
    }

    public DimensionsRecord createDimensions() {
        DimensionsRecord dimensionsRecord = new DimensionsRecord();
        dimensionsRecord.setFirstRow(this._firstrow);
        dimensionsRecord.setLastRow(this._lastrow);
        dimensionsRecord.setFirstCol((short) this._valuesAgg.getFirstCellNum());
        dimensionsRecord.setLastCol((short) this._valuesAgg.getLastCellNum());
        return dimensionsRecord;
    }

    public FormulaRecordAggregate createFormula(int i, int i2) {
        FormulaRecord formulaRecord = new FormulaRecord();
        formulaRecord.setRow(i);
        formulaRecord.setColumn((short) i2);
        return new FormulaRecordAggregate(formulaRecord, null, this._sharedValueManager);
    }

    public IndexRecord createIndexRecord(int i, int i2) {
        IndexRecord indexRecord = new IndexRecord();
        indexRecord.setFirstRow(this._firstrow);
        indexRecord.setLastRowAdd1(this._lastrow + 1);
        int rowBlockCount = getRowBlockCount();
        int recordSizeForBlockCount = i + IndexRecord.getRecordSizeForBlockCount(rowBlockCount) + i2;
        for (int i3 = 0; i3 < rowBlockCount; i3++) {
            int rowBlockSize = recordSizeForBlockCount + getRowBlockSize(i3) + this._valuesAgg.getRowCellBlockSize(getStartRowNumberForBlock(i3), getEndRowNumberForBlock(i3));
            indexRecord.addDbcell(rowBlockSize);
            recordSizeForBlockCount = rowBlockSize + (getRowCountForBlock(i3) * 2) + 8;
        }
        return indexRecord;
    }

    public void expandRow(int i) {
        if (i != -1 && isRowGroupCollapsed(i)) {
            int findStartOfRowOutlineGroup = findStartOfRowOutlineGroup(i);
            RowRecord row = getRow(findStartOfRowOutlineGroup);
            int findEndOfRowOutlineGroup = findEndOfRowOutlineGroup(i);
            if (!isRowGroupHiddenByParent(i)) {
                while (findStartOfRowOutlineGroup <= findEndOfRowOutlineGroup) {
                    RowRecord row2 = getRow(findStartOfRowOutlineGroup);
                    if (row.getOutlineLevel() == row2.getOutlineLevel() || !isRowGroupCollapsed(findStartOfRowOutlineGroup)) {
                        row2.setZeroHeight(false);
                    }
                    findStartOfRowOutlineGroup++;
                }
            }
            getRow(findEndOfRowOutlineGroup + 1).setColapsed(false);
        }
    }

    public int findEndOfRowOutlineGroup(int i) {
        short outlineLevel = getRow(i).getOutlineLevel();
        while (i < getLastRowNum() && getRow(i) != null && getRow(i).getOutlineLevel() >= outlineLevel) {
            i++;
        }
        return i - 1;
    }

    public int findStartOfRowOutlineGroup(int i) {
        short outlineLevel = getRow(i).getOutlineLevel();
        while (i >= 0 && getRow(i) != null) {
            if (getRow(i).getOutlineLevel() < outlineLevel) {
                return i + 1;
            }
            i--;
        }
        return i + 1;
    }

    public Iterator<CellValueRecordInterface> getCellValueIterator() {
        return this._valuesAgg.iterator();
    }

    public Spliterator<CellValueRecordInterface> getCellValueSpliterator() {
        return this._valuesAgg.spliterator();
    }

    public int getFirstRowNum() {
        return this._firstrow;
    }

    public Iterator<RowRecord> getIterator() {
        return this._rowRecords.values().iterator();
    }

    public int getLastRowNum() {
        return this._lastrow;
    }

    public int getPhysicalNumberOfRows() {
        return this._rowRecords.size();
    }

    public RowRecord getRow(int i) {
        int lastRowIndex = SpreadsheetVersion.EXCEL97.getLastRowIndex();
        if (i >= 0 && i <= lastRowIndex) {
            return this._rowRecords.get(Integer.valueOf(i));
        }
        throw new IllegalArgumentException("The row number must be between 0 and " + lastRowIndex + ", but had: " + i);
    }

    public int getRowBlockCount() {
        int size = this._rowRecords.size() / 32;
        return this._rowRecords.size() % 32 != 0 ? size + 1 : size;
    }

    public int getRowCountForBlock(int i) {
        int i2 = i * 32;
        int i3 = (i2 + 32) - 1;
        if (i3 >= this._rowRecords.size()) {
            i3 = this._rowRecords.size() - 1;
        }
        return (i3 - i2) + 1;
    }

    public Spliterator<RowRecord> getSpliterator() {
        return this._rowRecords.values().spliterator();
    }

    public void insertCell(CellValueRecordInterface cellValueRecordInterface) {
        this._valuesAgg.insertCell(cellValueRecordInterface);
    }

    public void insertRow(RowRecord rowRecord) {
        this._rowRecords.put(Integer.valueOf(rowRecord.getRowNumber()), rowRecord);
        this._rowRecordValues = null;
        int rowNumber = rowRecord.getRowNumber();
        int i = this._firstrow;
        if (rowNumber < i || i == -1) {
            this._firstrow = rowRecord.getRowNumber();
        }
        int rowNumber2 = rowRecord.getRowNumber();
        int i2 = this._lastrow;
        if (rowNumber2 > i2 || i2 == -1) {
            this._lastrow = rowRecord.getRowNumber();
        }
    }

    public boolean isRowGroupCollapsed(int i) {
        int findEndOfRowOutlineGroup = findEndOfRowOutlineGroup(i) + 1;
        return getRow(findEndOfRowOutlineGroup) != null && getRow(findEndOfRowOutlineGroup).getColapsed();
    }

    public boolean isRowGroupHiddenByParent(int i) {
        short outlineLevel;
        boolean zeroHeight;
        boolean z;
        int findEndOfRowOutlineGroup = findEndOfRowOutlineGroup(i) + 1;
        short s = 0;
        if (getRow(findEndOfRowOutlineGroup) == null) {
            zeroHeight = false;
            outlineLevel = 0;
        } else {
            outlineLevel = getRow(findEndOfRowOutlineGroup).getOutlineLevel();
            zeroHeight = getRow(findEndOfRowOutlineGroup).getZeroHeight();
        }
        int findStartOfRowOutlineGroup = findStartOfRowOutlineGroup(i) - 1;
        if (findStartOfRowOutlineGroup < 0 || getRow(findStartOfRowOutlineGroup) == null) {
            z = false;
        } else {
            s = getRow(findStartOfRowOutlineGroup).getOutlineLevel();
            z = getRow(findStartOfRowOutlineGroup).getZeroHeight();
        }
        return outlineLevel > s ? zeroHeight : z;
    }

    public void removeCell(CellValueRecordInterface cellValueRecordInterface) {
        if (cellValueRecordInterface instanceof FormulaRecordAggregate) {
            ((FormulaRecordAggregate) cellValueRecordInterface).notifyFormulaChanging();
        }
        this._valuesAgg.removeCell(cellValueRecordInterface);
    }

    public void removeRow(RowRecord rowRecord) {
        int rowNumber = rowRecord.getRowNumber();
        this._valuesAgg.removeAllCellsValuesForRow(rowNumber);
        RowRecord remove = this._rowRecords.remove(Integer.valueOf(rowNumber));
        if (remove != null) {
            if (rowRecord == remove) {
                this._rowRecordValues = null;
                return;
            } else {
                this._rowRecords.put(Integer.valueOf(rowNumber), remove);
                throw new IllegalArgumentException("Attempt to remove row that does not belong to this sheet");
            }
        }
        throw new IllegalArgumentException("Invalid row index (" + rowNumber + MotionUtils.f31762d);
    }

    public void updateFormulasAfterRowShift(FormulaShifter formulaShifter, int i) {
        this._valuesAgg.updateFormulasAfterRowShift(formulaShifter, i);
    }

    @Override // org.apache.poi.hssf.record.aggregates.RecordAggregate
    public void visitContainedRecords(final RecordAggregate.RecordVisitor recordVisitor) {
        RecordAggregate.PositionTrackingVisitor positionTrackingVisitor = new RecordAggregate.PositionTrackingVisitor(recordVisitor, 0);
        int rowBlockCount = getRowBlockCount();
        for (int i = 0; i < rowBlockCount; i++) {
            int visitRowRecordsForBlock = visitRowRecordsForBlock(i, recordVisitor);
            int i2 = visitRowRecordsForBlock + 0;
            int endRowNumberForBlock = getEndRowNumberForBlock(i);
            ArrayList arrayList = new ArrayList();
            int i3 = visitRowRecordsForBlock - 20;
            for (int startRowNumberForBlock = getStartRowNumberForBlock(i); startRowNumberForBlock <= endRowNumberForBlock; startRowNumberForBlock++) {
                if (this._valuesAgg.rowHasCells(startRowNumberForBlock)) {
                    positionTrackingVisitor.setPosition(0);
                    this._valuesAgg.visitCellsForRow(startRowNumberForBlock, positionTrackingVisitor);
                    int position = positionTrackingVisitor.getPosition();
                    i2 += position;
                    arrayList.add(Short.valueOf((short) i3));
                    i3 = position;
                }
            }
            recordVisitor.visitRecord(new DBCellRecord(i2, shortListToArray(arrayList)));
        }
        List<Record> list = this._unknownRecords;
        recordVisitor.getClass();
        list.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.ysl
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RecordAggregate.RecordVisitor.this.visitRecord((Record) obj);
            }
        });
    }

    private RowRecordsAggregate(SharedValueManager sharedValueManager) {
        this._firstrow = -1;
        this._lastrow = -1;
        if (sharedValueManager != null) {
            this._rowRecords = new TreeMap();
            this._valuesAgg = new ValueRecordsAggregate();
            this._unknownRecords = new ArrayList();
            this._sharedValueManager = sharedValueManager;
            return;
        }
        throw new IllegalArgumentException("SharedValueManager must be provided.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RowRecordsAggregate(RecordStream recordStream, SharedValueManager sharedValueManager) {
        this(sharedValueManager);
        while (recordStream.hasNext()) {
            Record next = recordStream.getNext();
            short sid = next.getSid();
            if (sid == 81) {
                addUnknownRecord(next);
            } else if (sid != 215 && sid != 440) {
                if (sid != 520) {
                    if (next instanceof UnknownRecord) {
                        addUnknownRecord(next);
                        while (recordStream.peekNextSid() == 60) {
                            addUnknownRecord(recordStream.getNext());
                        }
                    } else if (next instanceof MulBlankRecord) {
                        this._valuesAgg.addMultipleBlanks((MulBlankRecord) next);
                    } else if (next instanceof CellValueRecordInterface) {
                        this._valuesAgg.construct((CellValueRecordInterface) next, recordStream, sharedValueManager);
                    } else {
                        throw new IllegalArgumentException("Unexpected record type (" + next.getClass().getName() + MotionUtils.f31762d);
                    }
                } else {
                    insertRow((RowRecord) next);
                }
            }
        }
    }
}
