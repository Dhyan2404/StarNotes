package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.MulRKRecord;
import org.apache.poi.hssf.util.RKUtil;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class MulRKRecord extends StandardRecord {
    public static final short sid = 189;
    private final int field_1_row;
    private final short field_2_first_col;
    private final RkRec[] field_3_rks;
    private final short field_4_last_col;

    /* loaded from: classes12.dex */
    public static final class RkRec implements GenericRecord {
        public static final int ENCODED_SIZE = 6;

        /* renamed from: rk */
        public final int f111398rk;

        /* renamed from: xf */
        public final short f111399xf;

        private RkRec(RecordInputStream recordInputStream) {
            this.f111399xf = recordInputStream.readShort();
            this.f111398rk = recordInputStream.readInt();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Short.valueOf(this.f111399xf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return Integer.valueOf(this.f111398rk);
        }

        public static RkRec[] parseRKs(RecordInputStream recordInputStream) {
            int remaining = (recordInputStream.remaining() - 2) / 6;
            RkRec[] rkRecArr = new RkRec[remaining];
            for (int i = 0; i < remaining; i++) {
                rkRecArr[i] = new RkRec(recordInputStream);
            }
            return rkRecArr;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("xf", new Supplier() { // from class: org.apache.poi.hssf.record.i
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = MulRKRecord.RkRec.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "rk", new Supplier() { // from class: org.apache.poi.hssf.record.j
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = MulRKRecord.RkRec.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            });
        }
    }

    public MulRKRecord(RecordInputStream recordInputStream) {
        this.field_1_row = recordInputStream.readUShort();
        this.field_2_first_col = recordInputStream.readShort();
        this.field_3_rks = RkRec.parseRKs(recordInputStream);
        this.field_4_last_col = recordInputStream.readShort();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this.field_3_rks;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public MulRKRecord copy() {
        return this;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        throw new RecordFormatException("Sorry, you can't serialize MulRK in this release");
    }

    public short getFirstColumn() {
        return this.field_2_first_col;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("row", new Supplier() { // from class: com.sunia.HTREnginev2.spj
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(MulRKRecord.this.getRow());
            }
        }, "firstColumn", new Supplier() { // from class: com.sunia.HTREnginev2.tpj
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(MulRKRecord.this.getFirstColumn());
            }
        }, "lastColumn", new Supplier() { // from class: com.sunia.HTREnginev2.upj
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(MulRKRecord.this.getLastColumn());
            }
        }, "rk", new Supplier() { // from class: com.sunia.HTREnginev2.vpj
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = MulRKRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
    }

    public short getLastColumn() {
        return this.field_4_last_col;
    }

    public int getNumColumns() {
        return (this.field_4_last_col - this.field_2_first_col) + 1;
    }

    public double getRKNumberAt(int i) {
        return RKUtil.decodeNumber(this.field_3_rks[i].f111398rk);
    }

    public int getRow() {
        return this.field_1_row;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 189;
    }

    public short getXFAt(int i) {
        return this.field_3_rks[i].f111399xf;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        throw new RecordFormatException("Sorry, you can't serialize MulRK in this release");
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.MUL_RK;
    }
}
