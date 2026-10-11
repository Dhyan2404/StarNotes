package org.apache.poi.hssf.record;

import java.util.ArrayList;
import java.util.Map;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import java.util.stream.Stream;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.ExtSSTRecord;
import org.apache.poi.hssf.record.cont.ContinuableRecord;
import org.apache.poi.hssf.record.cont.ContinuableRecordOutput;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class ExtSSTRecord extends ContinuableRecord {
    public static final int DEFAULT_BUCKET_SIZE = 8;
    public static final int MAX_BUCKETS = 128;
    public static final short sid = 255;
    private InfoSubRecord[] _sstInfos;
    private short _stringsPerBucket;

    public ExtSSTRecord() {
        this._stringsPerBucket = (short) 8;
        this._sstInfos = new InfoSubRecord[0];
    }

    public static int getNumberOfInfoRecsForStrings(int i) {
        int i2 = i / 8;
        if (i % 8 != 0) {
            i2++;
        }
        if (i2 > 128) {
            return 128;
        }
        return i2;
    }

    public static int getRecordSizeForStrings(int i) {
        return (getNumberOfInfoRecsForStrings(i) * 8) + 6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InfoSubRecord[] lambda$new$0(int i) {
        return new InfoSubRecord[i];
    }

    public int getDataSize() {
        return (this._sstInfos.length * 8) + 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("dataSize", new Supplier() { // from class: com.sunia.HTREnginev2.r3g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExtSSTRecord.this.getDataSize());
            }
        }, "infoSubRecords", new Supplier() { // from class: com.sunia.HTREnginev2.s3g
            @Override // java.util.function.Supplier
            public final Object get() {
                return ExtSSTRecord.this.getInfoSubRecords();
            }
        });
    }

    public InfoSubRecord[] getInfoSubRecords() {
        return this._sstInfos;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 255;
    }

    @Override // org.apache.poi.hssf.record.cont.ContinuableRecord
    public void serialize(ContinuableRecordOutput continuableRecordOutput) {
        continuableRecordOutput.writeShort(this._stringsPerBucket);
        for (InfoSubRecord infoSubRecord : this._sstInfos) {
            infoSubRecord.serialize(continuableRecordOutput);
        }
    }

    public void setBucketOffsets(int[] iArr, int[] iArr2) {
        this._sstInfos = new InfoSubRecord[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            this._sstInfos[i] = new InfoSubRecord(iArr[i], iArr2[i]);
        }
    }

    public void setNumStringsPerBucket(short s) {
        this._stringsPerBucket = s;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.EXT_SST;
    }

    /* loaded from: classes12.dex */
    public static final class InfoSubRecord implements GenericRecord {
        public static final int ENCODED_SIZE = 8;
        private int field_1_stream_pos;
        private int field_2_bucket_sst_offset;
        private short field_3_zero;

        public InfoSubRecord(int i, int i2) {
            this.field_1_stream_pos = i;
            this.field_2_bucket_sst_offset = i2;
        }

        public int getBucketSSTOffset() {
            return this.field_2_bucket_sst_offset;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("streamPos", new Supplier() { // from class: com.sunia.HTREnginev2.t3g
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ExtSSTRecord.InfoSubRecord.this.getStreamPos());
                }
            }, "bucketSSTOffset", new Supplier() { // from class: com.sunia.HTREnginev2.u3g
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ExtSSTRecord.InfoSubRecord.this.getBucketSSTOffset());
                }
            });
        }

        public int getStreamPos() {
            return this.field_1_stream_pos;
        }

        public void serialize(LittleEndianOutput littleEndianOutput) {
            littleEndianOutput.writeInt(this.field_1_stream_pos);
            littleEndianOutput.writeShort(this.field_2_bucket_sst_offset);
            littleEndianOutput.writeShort(this.field_3_zero);
        }

        public InfoSubRecord(InfoSubRecord infoSubRecord) {
            this.field_1_stream_pos = infoSubRecord.field_1_stream_pos;
            this.field_2_bucket_sst_offset = infoSubRecord.field_2_bucket_sst_offset;
            this.field_3_zero = infoSubRecord.field_3_zero;
        }

        public InfoSubRecord(RecordInputStream recordInputStream) {
            this.field_1_stream_pos = recordInputStream.readInt();
            this.field_2_bucket_sst_offset = recordInputStream.readShort();
            this.field_3_zero = recordInputStream.readShort();
        }
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ExtSSTRecord copy() {
        return new ExtSSTRecord(this);
    }

    public ExtSSTRecord(ExtSSTRecord extSSTRecord) {
        this._stringsPerBucket = extSSTRecord._stringsPerBucket;
        InfoSubRecord[] infoSubRecordArr = extSSTRecord._sstInfos;
        this._sstInfos = infoSubRecordArr == null ? null : (InfoSubRecord[]) Stream.of((Object[]) infoSubRecordArr).map(new Function() { // from class: com.sunia.HTREnginev2.p3g
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new ExtSSTRecord.InfoSubRecord((ExtSSTRecord.InfoSubRecord) obj);
            }
        }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.q3g
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                ExtSSTRecord.InfoSubRecord[] lambda$new$0;
                lambda$new$0 = ExtSSTRecord.lambda$new$0(i);
                return lambda$new$0;
            }
        });
    }

    public ExtSSTRecord(RecordInputStream recordInputStream) {
        this._stringsPerBucket = recordInputStream.readShort();
        ArrayList arrayList = new ArrayList(recordInputStream.remaining() / 8);
        while (recordInputStream.available() > 0) {
            arrayList.add(new InfoSubRecord(recordInputStream));
            if (recordInputStream.available() == 0 && recordInputStream.hasNextRecord() && recordInputStream.getNextSid() == 60) {
                recordInputStream.nextRecord();
            }
        }
        this._sstInfos = (InfoSubRecord[]) arrayList.toArray(new InfoSubRecord[0]);
    }
}
