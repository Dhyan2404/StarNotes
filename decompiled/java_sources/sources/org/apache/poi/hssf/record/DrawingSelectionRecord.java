package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.DrawingSelectionRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class DrawingSelectionRecord extends StandardRecord {
    public static final short sid = 237;
    private int _cpsp;
    private int _dgslk;
    private OfficeArtRecordHeader _header;
    private int[] _shapeIds;
    private int _spidFocus;

    /* loaded from: classes12.dex */
    public static final class OfficeArtRecordHeader implements GenericRecord {
        public static final int ENCODED_SIZE = 8;
        private final int _length;
        private final int _type;
        private final int _verAndInstance;

        public OfficeArtRecordHeader(LittleEndianInput littleEndianInput) {
            this._verAndInstance = littleEndianInput.readUShort();
            this._type = littleEndianInput.readUShort();
            this._length = littleEndianInput.readInt();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this._verAndInstance);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return Integer.valueOf(this._type);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return Integer.valueOf(this._length);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("verAndInstance", new Supplier() { // from class: org.apache.poi.hssf.record.a
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = DrawingSelectionRecord.OfficeArtRecordHeader.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "type", new Supplier() { // from class: org.apache.poi.hssf.record.b
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = DrawingSelectionRecord.OfficeArtRecordHeader.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "length", new Supplier() { // from class: org.apache.poi.hssf.record.c
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = DrawingSelectionRecord.OfficeArtRecordHeader.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            });
        }

        public void serialize(LittleEndianOutput littleEndianOutput) {
            littleEndianOutput.writeShort(this._verAndInstance);
            littleEndianOutput.writeShort(this._type);
            littleEndianOutput.writeInt(this._length);
        }
    }

    public DrawingSelectionRecord(RecordInputStream recordInputStream) {
        this._header = new OfficeArtRecordHeader(recordInputStream);
        this._cpsp = recordInputStream.readInt();
        this._dgslk = recordInputStream.readInt();
        this._spidFocus = recordInputStream.readInt();
        int available = recordInputStream.available() / 4;
        int[] iArr = new int[available];
        for (int i = 0; i < available; i++) {
            iArr[i] = recordInputStream.readInt();
        }
        this._shapeIds = iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this._header;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this._cpsp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Integer.valueOf(this._dgslk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return Integer.valueOf(this._spidFocus);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return this._shapeIds;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public DrawingSelectionRecord copy() {
        return this;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (this._shapeIds.length * 4) + 20;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("rh", new Supplier() { // from class: com.sunia.HTREnginev2.qif
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = DrawingSelectionRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "cpsp", new Supplier() { // from class: com.sunia.HTREnginev2.rif
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = DrawingSelectionRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "dgslk", new Supplier() { // from class: com.sunia.HTREnginev2.sif
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = DrawingSelectionRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, "spidFocus", new Supplier() { // from class: com.sunia.HTREnginev2.tif
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = DrawingSelectionRecord.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        }, "shapeIds", new Supplier() { // from class: com.sunia.HTREnginev2.uif
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = DrawingSelectionRecord.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        this._header.serialize(littleEndianOutput);
        littleEndianOutput.writeInt(this._cpsp);
        littleEndianOutput.writeInt(this._dgslk);
        littleEndianOutput.writeInt(this._spidFocus);
        for (int i : this._shapeIds) {
            littleEndianOutput.writeInt(i);
        }
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.DRAWING_SELECTION;
    }
}
