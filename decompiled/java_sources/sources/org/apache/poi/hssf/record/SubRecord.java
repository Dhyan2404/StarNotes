package org.apache.poi.hssf.record;

import java.util.Arrays;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.CommonObjectDataSubRecord;
import org.apache.poi.hssf.record.EmbeddedObjectRefSubRecord;
import org.apache.poi.hssf.record.EndSubRecord;
import org.apache.poi.hssf.record.FtCblsSubRecord;
import org.apache.poi.hssf.record.FtCfSubRecord;
import org.apache.poi.hssf.record.FtPioGrbitSubRecord;
import org.apache.poi.hssf.record.GroupMarkerSubRecord;
import org.apache.poi.hssf.record.LbsDataSubRecord;
import org.apache.poi.hssf.record.NoteStructureSubRecord;
import org.apache.poi.hssf.record.SubRecord;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.LittleEndianOutputStream;

/* loaded from: classes12.dex */
public abstract class SubRecord implements Duplicatable, GenericRecord {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 1000000;
    private static int MAX_RECORD_LENGTH = 1000000;

    /* loaded from: classes12.dex */
    public enum SubRecordTypes {
        UNKNOWN(-1, new RecordConstructor() { // from class: org.apache.poi.hssf.record.q
            @Override // org.apache.poi.hssf.record.SubRecord.SubRecordTypes.RecordConstructor
            public final SubRecord apply(LittleEndianInput littleEndianInput, int i, int i2) {
                return new SubRecord.UnknownSubRecord(littleEndianInput, i, i2);
            }
        }),
        END(0, new RecordConstructor() { // from class: com.sunia.HTREnginev2.r4n
            @Override // org.apache.poi.hssf.record.SubRecord.SubRecordTypes.RecordConstructor
            public final SubRecord apply(LittleEndianInput littleEndianInput, int i, int i2) {
                return new EndSubRecord(littleEndianInput, i, i2);
            }
        }),
        GROUP_MARKER(6, new RecordConstructor() { // from class: com.sunia.HTREnginev2.s4n
            @Override // org.apache.poi.hssf.record.SubRecord.SubRecordTypes.RecordConstructor
            public final SubRecord apply(LittleEndianInput littleEndianInput, int i, int i2) {
                return new GroupMarkerSubRecord(littleEndianInput, i, i2);
            }
        }),
        FT_CF(7, new RecordConstructor() { // from class: com.sunia.HTREnginev2.t4n
            @Override // org.apache.poi.hssf.record.SubRecord.SubRecordTypes.RecordConstructor
            public final SubRecord apply(LittleEndianInput littleEndianInput, int i, int i2) {
                return new FtCfSubRecord(littleEndianInput, i, i2);
            }
        }),
        FT_PIO_GRBIT(8, new RecordConstructor() { // from class: com.sunia.HTREnginev2.u4n
            @Override // org.apache.poi.hssf.record.SubRecord.SubRecordTypes.RecordConstructor
            public final SubRecord apply(LittleEndianInput littleEndianInput, int i, int i2) {
                return new FtPioGrbitSubRecord(littleEndianInput, i, i2);
            }
        }),
        EMBEDDED_OBJECT_REF(9, new RecordConstructor() { // from class: com.sunia.HTREnginev2.v4n
            @Override // org.apache.poi.hssf.record.SubRecord.SubRecordTypes.RecordConstructor
            public final SubRecord apply(LittleEndianInput littleEndianInput, int i, int i2) {
                return new EmbeddedObjectRefSubRecord(littleEndianInput, i, i2);
            }
        }),
        FT_CBLS(12, new RecordConstructor() { // from class: com.sunia.HTREnginev2.w4n
            @Override // org.apache.poi.hssf.record.SubRecord.SubRecordTypes.RecordConstructor
            public final SubRecord apply(LittleEndianInput littleEndianInput, int i, int i2) {
                return new FtCblsSubRecord(littleEndianInput, i, i2);
            }
        }),
        NOTE_STRUCTURE(13, new RecordConstructor() { // from class: com.sunia.HTREnginev2.x4n
            @Override // org.apache.poi.hssf.record.SubRecord.SubRecordTypes.RecordConstructor
            public final SubRecord apply(LittleEndianInput littleEndianInput, int i, int i2) {
                return new NoteStructureSubRecord(littleEndianInput, i, i2);
            }
        }),
        LBS_DATA(19, new RecordConstructor() { // from class: com.sunia.HTREnginev2.y4n
            @Override // org.apache.poi.hssf.record.SubRecord.SubRecordTypes.RecordConstructor
            public final SubRecord apply(LittleEndianInput littleEndianInput, int i, int i2) {
                return new LbsDataSubRecord(littleEndianInput, i, i2);
            }
        }),
        COMMON_OBJECT_DATA(21, new RecordConstructor() { // from class: com.sunia.HTREnginev2.p4n
            @Override // org.apache.poi.hssf.record.SubRecord.SubRecordTypes.RecordConstructor
            public final SubRecord apply(LittleEndianInput littleEndianInput, int i, int i2) {
                return new CommonObjectDataSubRecord(littleEndianInput, i, i2);
            }
        });

        private static final Map<Short, SubRecordTypes> LOOKUP = (Map) Arrays.stream(values()).collect(Collectors.toMap(new Function() { // from class: com.sunia.HTREnginev2.q4n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Short.valueOf(((SubRecord.SubRecordTypes) obj).getSid());
            }
        }, Function.identity()));
        public final RecordConstructor<?> recordConstructor;
        public final short sid;

        @FunctionalInterface
        /* loaded from: classes12.dex */
        public interface RecordConstructor<T extends SubRecord> {
            T apply(LittleEndianInput littleEndianInput, int i, int i2);
        }

        SubRecordTypes(int i, RecordConstructor recordConstructor) {
            this.sid = (short) i;
            this.recordConstructor = recordConstructor;
        }

        public static SubRecordTypes forSID(int i) {
            return LOOKUP.getOrDefault(Short.valueOf((short) i), UNKNOWN);
        }

        public short getSid() {
            return this.sid;
        }
    }

    /* loaded from: classes12.dex */
    public static final class UnknownSubRecord extends SubRecord {
        private final byte[] _data;
        private final int _sid;

        public UnknownSubRecord(LittleEndianInput littleEndianInput, int i, int i2) {
            this._sid = i2;
            byte[] safelyAllocate = IOUtils.safelyAllocate(i, SubRecord.MAX_RECORD_LENGTH);
            littleEndianInput.readFully(safelyAllocate);
            this._data = safelyAllocate;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this._sid);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return this._data;
        }

        @Override // org.apache.poi.hssf.record.SubRecord, org.apache.poi.common.Duplicatable
        public UnknownSubRecord copy() {
            return this;
        }

        @Override // org.apache.poi.hssf.record.SubRecord
        public int getDataSize() {
            return this._data.length;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("sid", new Supplier() { // from class: org.apache.poi.hssf.record.r
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = SubRecord.UnknownSubRecord.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "data", new Supplier() { // from class: org.apache.poi.hssf.record.s
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = SubRecord.UnknownSubRecord.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            });
        }

        @Override // org.apache.poi.hssf.record.SubRecord
        public void serialize(LittleEndianOutput littleEndianOutput) {
            littleEndianOutput.writeShort(this._sid);
            littleEndianOutput.writeShort(this._data.length);
            littleEndianOutput.write(this._data);
        }

        @Override // org.apache.poi.hssf.record.SubRecord, org.apache.poi.common.usermodel.GenericRecord
        public SubRecordTypes getGenericRecordType() {
            return SubRecordTypes.UNKNOWN;
        }
    }

    public SubRecord() {
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [org.apache.poi.hssf.record.SubRecord] */
    public static SubRecord createSubRecord(LittleEndianInput littleEndianInput, int i) {
        int readUShort = littleEndianInput.readUShort();
        int readUShort2 = littleEndianInput.readUShort();
        SubRecordTypes forSID = SubRecordTypes.forSID(readUShort);
        SubRecordTypes.RecordConstructor<?> recordConstructor = forSID.recordConstructor;
        if (forSID == SubRecordTypes.UNKNOWN) {
            i = readUShort;
        }
        return recordConstructor.apply(littleEndianInput, readUShort2, i);
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    @Override // org.apache.poi.common.Duplicatable
    public abstract SubRecord copy();

    public abstract int getDataSize();

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public abstract SubRecordTypes getGenericRecordType();

    public boolean isTerminating() {
        return false;
    }

    public abstract void serialize(LittleEndianOutput littleEndianOutput);

    public byte[] serialize() {
        int dataSize = getDataSize() + 4;
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream(dataSize);
        serialize(new LittleEndianOutputStream(unsynchronizedByteArrayOutputStream));
        if (unsynchronizedByteArrayOutputStream.size() == dataSize) {
            return unsynchronizedByteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("write size mismatch");
    }

    public final String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    public SubRecord(SubRecord subRecord) {
    }
}
