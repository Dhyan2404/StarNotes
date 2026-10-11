package org.apache.poi.hssf.record.aggregates;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.List;
import org.apache.poi.hssf.model.RecordStream;
import org.apache.poi.hssf.record.MergeCellsRecord;
import org.apache.poi.hssf.record.aggregates.RecordAggregate;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.CellRangeAddressList;

/* loaded from: classes12.dex */
public final class MergedCellsTable extends RecordAggregate {
    private static final int MAX_MERGED_REGIONS = 1027;
    private final List<CellRangeAddress> _mergedRegions = new ArrayList();

    private void addMergeCellsRecord(MergeCellsRecord mergeCellsRecord) {
        short numAreas = mergeCellsRecord.getNumAreas();
        for (int i = 0; i < numAreas; i++) {
            this._mergedRegions.add(mergeCellsRecord.getAreaAt(i));
        }
    }

    private void checkIndex(int i) {
        if (i < 0 || i >= this._mergedRegions.size()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Specified CF index ");
            sb.append(i);
            sb.append(" is outside the allowable range (0..");
            sb.append(this._mergedRegions.size() - 1);
            sb.append(MotionUtils.f31762d);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    public void addArea(int i, int i2, int i3, int i4) {
        this._mergedRegions.add(new CellRangeAddress(i, i3, i2, i4));
    }

    public void addRecords(MergeCellsRecord[] mergeCellsRecordArr) {
        for (MergeCellsRecord mergeCellsRecord : mergeCellsRecordArr) {
            addMergeCellsRecord(mergeCellsRecord);
        }
    }

    public CellRangeAddress get(int i) {
        checkIndex(i);
        return this._mergedRegions.get(i);
    }

    public int getNumberOfMergedRegions() {
        return this._mergedRegions.size();
    }

    @Override // org.apache.poi.hssf.record.aggregates.RecordAggregate, org.apache.poi.hssf.record.RecordBase
    public int getRecordSize() {
        int size = this._mergedRegions.size();
        if (size < 1) {
            return 0;
        }
        return ((size / 1027) * (CellRangeAddressList.getEncodedSize(1027) + 4)) + 4 + CellRangeAddressList.getEncodedSize(size % 1027);
    }

    public void read(RecordStream recordStream) {
        while (recordStream.peekNextClass() == MergeCellsRecord.class) {
            MergeCellsRecord mergeCellsRecord = (MergeCellsRecord) recordStream.getNext();
            short numAreas = mergeCellsRecord.getNumAreas();
            for (int i = 0; i < numAreas; i++) {
                this._mergedRegions.add(mergeCellsRecord.getAreaAt(i));
            }
        }
    }

    public void remove(int i) {
        checkIndex(i);
        this._mergedRegions.remove(i);
    }

    @Override // org.apache.poi.hssf.record.aggregates.RecordAggregate
    public void visitContainedRecords(RecordAggregate.RecordVisitor recordVisitor) {
        int size = this._mergedRegions.size();
        if (size < 1) {
            return;
        }
        int i = size / 1027;
        int i2 = size % 1027;
        CellRangeAddress[] cellRangeAddressArr = new CellRangeAddress[size];
        this._mergedRegions.toArray(cellRangeAddressArr);
        for (int i3 = 0; i3 < i; i3++) {
            recordVisitor.visitRecord(new MergeCellsRecord(cellRangeAddressArr, i3 * 1027, 1027));
        }
        if (i2 > 0) {
            recordVisitor.visitRecord(new MergeCellsRecord(cellRangeAddressArr, i * 1027, i2));
        }
    }
}
