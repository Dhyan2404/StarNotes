package org.apache.poi.hssf.record;

import com.sunia.HTREnginev2.o9g;
import java.util.Map;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import java.util.stream.Stream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hssf.record.FeatRecord;
import org.apache.poi.hssf.record.common.FeatFormulaErr2;
import org.apache.poi.hssf.record.common.FeatProtection;
import org.apache.poi.hssf.record.common.FeatSmartTag;
import org.apache.poi.hssf.record.common.FtrHeader;
import org.apache.poi.hssf.record.common.SharedFeature;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class FeatRecord extends StandardRecord {
    private static final Logger LOG = LogManager.getLogger((Class<?>) FeatRecord.class);
    public static final short sid = 2152;
    public static final short v11_sid = 2162;
    public static final short v12_sid = 2168;
    private long cbFeatData;
    private CellRangeAddress[] cellRefs;
    private final FtrHeader futureHeader;
    private int isf_sharedFeatureType;
    private byte reserved1;
    private long reserved2;
    private int reserved3;
    private SharedFeature sharedFeature;

    public FeatRecord() {
        FtrHeader ftrHeader = new FtrHeader();
        this.futureHeader = ftrHeader;
        ftrHeader.setRecordType(sid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return this.futureHeader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Byte.valueOf(this.reserved1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return Long.valueOf(this.reserved2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return Integer.valueOf(this.reserved3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ CellRangeAddress[] lambda$new$0(int i) {
        return new CellRangeAddress[i];
    }

    public long getCbFeatData() {
        return this.cbFeatData;
    }

    public CellRangeAddress[] getCellRefs() {
        return this.cellRefs;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (this.cellRefs.length * 8) + 27 + this.sharedFeature.getDataSize();
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("futureHeader", new Supplier() { // from class: com.sunia.HTREnginev2.q9g
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = FeatRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "isf_sharedFeatureType", new Supplier() { // from class: com.sunia.HTREnginev2.r9g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(FeatRecord.this.getIsf_sharedFeatureType());
            }
        }, "reserved1", new Supplier() { // from class: com.sunia.HTREnginev2.s9g
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = FeatRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, "reserved2", new Supplier() { // from class: com.sunia.HTREnginev2.t9g
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = FeatRecord.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        }, "cbFeatData", new Supplier() { // from class: com.sunia.HTREnginev2.u9g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(FeatRecord.this.getCbFeatData());
            }
        }, "reserved3", new Supplier() { // from class: com.sunia.HTREnginev2.v9g
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = FeatRecord.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        }, "cellRefs", new Supplier() { // from class: com.sunia.HTREnginev2.w9g
            @Override // java.util.function.Supplier
            public final Object get() {
                return FeatRecord.this.getCellRefs();
            }
        }, "sharedFeature", new Supplier() { // from class: com.sunia.HTREnginev2.x9g
            @Override // java.util.function.Supplier
            public final Object get() {
                return FeatRecord.this.getSharedFeature();
            }
        });
    }

    public int getIsf_sharedFeatureType() {
        return this.isf_sharedFeatureType;
    }

    public SharedFeature getSharedFeature() {
        return this.sharedFeature;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        this.futureHeader.serialize(littleEndianOutput);
        littleEndianOutput.writeShort(this.isf_sharedFeatureType);
        littleEndianOutput.writeByte(this.reserved1);
        littleEndianOutput.writeInt((int) this.reserved2);
        littleEndianOutput.writeShort(this.cellRefs.length);
        littleEndianOutput.writeInt((int) this.cbFeatData);
        littleEndianOutput.writeShort(this.reserved3);
        for (CellRangeAddress cellRangeAddress : this.cellRefs) {
            cellRangeAddress.serialize(littleEndianOutput);
        }
        this.sharedFeature.serialize(littleEndianOutput);
    }

    public void setCbFeatData(long j) {
        this.cbFeatData = j;
    }

    public void setCellRefs(CellRangeAddress[] cellRangeAddressArr) {
        this.cellRefs = cellRangeAddressArr;
    }

    public void setSharedFeature(SharedFeature sharedFeature) {
        this.sharedFeature = sharedFeature;
        if (sharedFeature instanceof FeatProtection) {
            this.isf_sharedFeatureType = 2;
        }
        if (sharedFeature instanceof FeatFormulaErr2) {
            this.isf_sharedFeatureType = 3;
        }
        if (sharedFeature instanceof FeatSmartTag) {
            this.isf_sharedFeatureType = 4;
        }
        if (this.isf_sharedFeatureType == 3) {
            this.cbFeatData = sharedFeature.getDataSize();
        } else {
            this.cbFeatData = 0L;
        }
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.FEAT;
    }

    public FeatRecord(FeatRecord featRecord) {
        super(featRecord);
        this.futureHeader = featRecord.futureHeader.copy();
        this.isf_sharedFeatureType = featRecord.isf_sharedFeatureType;
        this.reserved1 = featRecord.reserved1;
        this.reserved2 = featRecord.reserved2;
        this.cbFeatData = featRecord.cbFeatData;
        this.reserved3 = featRecord.reserved3;
        CellRangeAddress[] cellRangeAddressArr = featRecord.cellRefs;
        this.cellRefs = cellRangeAddressArr == null ? null : (CellRangeAddress[]) Stream.of((Object[]) cellRangeAddressArr).map(new o9g()).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.p9g
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                CellRangeAddress[] lambda$new$0;
                lambda$new$0 = FeatRecord.lambda$new$0(i);
                return lambda$new$0;
            }
        });
        SharedFeature sharedFeature = featRecord.sharedFeature;
        this.sharedFeature = sharedFeature != null ? sharedFeature.copy() : null;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public FeatRecord copy() {
        return new FeatRecord(this);
    }

    public FeatRecord(RecordInputStream recordInputStream) {
        this.futureHeader = new FtrHeader(recordInputStream);
        this.isf_sharedFeatureType = recordInputStream.readShort();
        this.reserved1 = recordInputStream.readByte();
        this.reserved2 = recordInputStream.readInt();
        int readUShort = recordInputStream.readUShort();
        this.cbFeatData = recordInputStream.readInt();
        this.reserved3 = recordInputStream.readShort();
        this.cellRefs = new CellRangeAddress[readUShort];
        int i = 0;
        while (true) {
            CellRangeAddress[] cellRangeAddressArr = this.cellRefs;
            if (i >= cellRangeAddressArr.length) {
                break;
            }
            cellRangeAddressArr[i] = new CellRangeAddress(recordInputStream);
            i++;
        }
        int i2 = this.isf_sharedFeatureType;
        if (i2 == 2) {
            this.sharedFeature = new FeatProtection(recordInputStream);
            return;
        }
        if (i2 == 3) {
            this.sharedFeature = new FeatFormulaErr2(recordInputStream);
        } else if (i2 != 4) {
            LOG.atError().log("Unknown Shared Feature {} found!", Unbox.box(this.isf_sharedFeatureType));
        } else {
            this.sharedFeature = new FeatSmartTag(recordInputStream);
        }
    }
}
