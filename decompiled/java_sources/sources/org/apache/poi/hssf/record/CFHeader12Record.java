package org.apache.poi.hssf.record;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.CFHeader12Record;
import org.apache.poi.hssf.record.common.FtrHeader;
import org.apache.poi.hssf.record.common.FutureRecord;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class CFHeader12Record extends CFHeaderBase implements FutureRecord {
    public static final short sid = 2169;
    private FtrHeader futureHeader;

    public CFHeader12Record() {
        createEmpty();
        FtrHeader ftrHeader = new FtrHeader();
        this.futureHeader = ftrHeader;
        ftrHeader.setRecordType(sid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    @Override // org.apache.poi.hssf.record.common.FutureRecord
    public CellRangeAddress getAssociatedRange() {
        return this.futureHeader.getAssociatedRange();
    }

    @Override // org.apache.poi.hssf.record.CFHeaderBase, org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return FtrHeader.getDataSize() + super.getDataSize();
    }

    @Override // org.apache.poi.hssf.record.common.FutureRecord
    public FtrHeader getFutureHeader() {
        return this.futureHeader;
    }

    @Override // org.apache.poi.hssf.record.common.FutureRecord
    public short getFutureRecordType() {
        return this.futureHeader.getRecordType();
    }

    @Override // org.apache.poi.hssf.record.CFHeaderBase, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.a10
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = CFHeader12Record.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "futureHeader", new Supplier() { // from class: com.sunia.HTREnginev2.b10
            @Override // java.util.function.Supplier
            public final Object get() {
                return CFHeader12Record.this.getFutureHeader();
            }
        });
    }

    @Override // org.apache.poi.hssf.record.CFHeaderBase
    public String getRecordName() {
        return "CFHEADER12";
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.CFHeaderBase, org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        this.futureHeader.setAssociatedRange(getEnclosingCellRange());
        this.futureHeader.serialize(littleEndianOutput);
        super.serialize(littleEndianOutput);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.CF_HEADER_12;
    }

    public CFHeader12Record(CFHeader12Record cFHeader12Record) {
        super(cFHeader12Record);
        this.futureHeader = cFHeader12Record.futureHeader.copy();
    }

    @Override // org.apache.poi.hssf.record.CFHeaderBase, org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public CFHeader12Record copy() {
        return new CFHeader12Record(this);
    }

    public CFHeader12Record(CellRangeAddress[] cellRangeAddressArr, int i) {
        super(cellRangeAddressArr, i);
        FtrHeader ftrHeader = new FtrHeader();
        this.futureHeader = ftrHeader;
        ftrHeader.setRecordType(sid);
    }

    public CFHeader12Record(RecordInputStream recordInputStream) {
        this.futureHeader = new FtrHeader(recordInputStream);
        read(recordInputStream);
    }
}
