package org.apache.poi.hssf.record;

import com.sunia.HTREnginev2.o9g;
import java.util.Arrays;
import java.util.Map;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import java.util.stream.Stream;
import org.apache.poi.hssf.record.MergeCellsRecord;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.CellRangeAddressList;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class MergeCellsRecord extends StandardRecord {
    public static final short sid = 229;
    private final int _numberOfRegions;
    private final CellRangeAddress[] _regions;
    private final int _startIndex;

    public MergeCellsRecord(MergeCellsRecord mergeCellsRecord) {
        super(mergeCellsRecord);
        CellRangeAddress[] cellRangeAddressArr = mergeCellsRecord._regions;
        this._regions = cellRangeAddressArr == null ? null : (CellRangeAddress[]) Stream.of((Object[]) cellRangeAddressArr).map(new o9g()).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.imj
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                CellRangeAddress[] lambda$new$0;
                lambda$new$0 = MergeCellsRecord.lambda$new$0(i);
                return lambda$new$0;
            }
        });
        this._startIndex = mergeCellsRecord._startIndex;
        this._numberOfRegions = mergeCellsRecord._numberOfRegions;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        CellRangeAddress[] cellRangeAddressArr = this._regions;
        int i = this._startIndex;
        return (CellRangeAddress[]) Arrays.copyOfRange(cellRangeAddressArr, i, this._numberOfRegions + i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ CellRangeAddress[] lambda$new$0(int i) {
        return new CellRangeAddress[i];
    }

    public CellRangeAddress getAreaAt(int i) {
        return this._regions[this._startIndex + i];
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return CellRangeAddressList.getEncodedSize(this._numberOfRegions);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("numRegions", new Supplier() { // from class: com.sunia.HTREnginev2.gmj
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(MergeCellsRecord.this.getNumAreas());
            }
        }, "regions", new Supplier() { // from class: com.sunia.HTREnginev2.hmj
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = MergeCellsRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
    }

    public short getNumAreas() {
        return (short) this._numberOfRegions;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this._numberOfRegions);
        for (int i = 0; i < this._numberOfRegions; i++) {
            this._regions[this._startIndex + i].serialize(littleEndianOutput);
        }
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.MERGE_CELLS;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public MergeCellsRecord copy() {
        return new MergeCellsRecord(this);
    }

    public MergeCellsRecord(CellRangeAddress[] cellRangeAddressArr, int i, int i2) {
        this._regions = cellRangeAddressArr;
        this._startIndex = i;
        this._numberOfRegions = i2;
    }

    public MergeCellsRecord(RecordInputStream recordInputStream) {
        int readUShort = recordInputStream.readUShort();
        CellRangeAddress[] cellRangeAddressArr = new CellRangeAddress[readUShort];
        for (int i = 0; i < readUShort; i++) {
            cellRangeAddressArr[i] = new CellRangeAddress(recordInputStream);
        }
        this._numberOfRegions = readUShort;
        this._startIndex = 0;
        this._regions = cellRangeAddressArr;
    }
}
