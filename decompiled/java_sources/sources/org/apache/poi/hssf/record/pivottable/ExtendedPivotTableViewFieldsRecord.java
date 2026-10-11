package org.apache.poi.hssf.record.pivottable;

import com.google.android.material.motion.MotionUtils;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.pivottable.ExtendedPivotTableViewFieldsRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class ExtendedPivotTableViewFieldsRecord extends StandardRecord {
    private static final int STRING_NOT_PRESENT_LEN = 65535;
    public static final short sid = 256;
    private int _citmShow;
    private int _grbit1;
    private int _grbit2;
    private int _isxdiShow;
    private int _isxdiSort;
    private int _reserved1;
    private int _reserved2;
    private String _subtotalName;

    public ExtendedPivotTableViewFieldsRecord(ExtendedPivotTableViewFieldsRecord extendedPivotTableViewFieldsRecord) {
        super(extendedPivotTableViewFieldsRecord);
        this._grbit1 = extendedPivotTableViewFieldsRecord._grbit1;
        this._grbit2 = extendedPivotTableViewFieldsRecord._grbit2;
        this._citmShow = extendedPivotTableViewFieldsRecord._citmShow;
        this._isxdiSort = extendedPivotTableViewFieldsRecord._isxdiSort;
        this._isxdiShow = extendedPivotTableViewFieldsRecord._isxdiShow;
        this._reserved1 = extendedPivotTableViewFieldsRecord._reserved1;
        this._reserved2 = extendedPivotTableViewFieldsRecord._reserved2;
        this._subtotalName = extendedPivotTableViewFieldsRecord._subtotalName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this._grbit1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this._grbit2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Integer.valueOf(this._citmShow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return Integer.valueOf(this._isxdiSort);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return Integer.valueOf(this._isxdiShow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$5() {
        return this._subtotalName;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        String str = this._subtotalName;
        return (str == null ? 0 : str.length() * 2) + 20;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("grbit1", new Supplier() { // from class: com.sunia.HTREnginev2.e5g
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = ExtendedPivotTableViewFieldsRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "grbit2", new Supplier() { // from class: com.sunia.HTREnginev2.f5g
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = ExtendedPivotTableViewFieldsRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "citmShow", new Supplier() { // from class: com.sunia.HTREnginev2.g5g
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = ExtendedPivotTableViewFieldsRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, "isxdiSort", new Supplier() { // from class: com.sunia.HTREnginev2.h5g
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = ExtendedPivotTableViewFieldsRecord.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        }, "isxdiShow", new Supplier() { // from class: com.sunia.HTREnginev2.i5g
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = ExtendedPivotTableViewFieldsRecord.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        }, "subtotalName", new Supplier() { // from class: com.sunia.HTREnginev2.j5g
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$5;
                lambda$getGenericProperties$5 = ExtendedPivotTableViewFieldsRecord.this.lambda$getGenericProperties$5();
                return lambda$getGenericProperties$5;
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 256;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeInt(this._grbit1);
        littleEndianOutput.writeByte(this._grbit2);
        littleEndianOutput.writeByte(this._citmShow);
        littleEndianOutput.writeShort(this._isxdiSort);
        littleEndianOutput.writeShort(this._isxdiShow);
        String str = this._subtotalName;
        if (str == null) {
            littleEndianOutput.writeShort(65535);
        } else {
            littleEndianOutput.writeShort(str.length());
        }
        littleEndianOutput.writeInt(this._reserved1);
        littleEndianOutput.writeInt(this._reserved2);
        String str2 = this._subtotalName;
        if (str2 != null) {
            StringUtil.putUnicodeLE(str2, littleEndianOutput);
        }
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.EXTENDED_PIVOT_TABLE_VIEW_FIELDS;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ExtendedPivotTableViewFieldsRecord copy() {
        return new ExtendedPivotTableViewFieldsRecord(this);
    }

    public ExtendedPivotTableViewFieldsRecord(RecordInputStream recordInputStream) {
        this._grbit1 = recordInputStream.readInt();
        this._grbit2 = recordInputStream.readUByte();
        this._citmShow = recordInputStream.readUByte();
        this._isxdiSort = recordInputStream.readUShort();
        this._isxdiShow = recordInputStream.readUShort();
        int remaining = recordInputStream.remaining();
        if (remaining == 0) {
            this._reserved1 = 0;
            this._reserved2 = 0;
            this._subtotalName = null;
        } else {
            if (remaining == 10) {
                int readUShort = recordInputStream.readUShort();
                this._reserved1 = recordInputStream.readInt();
                this._reserved2 = recordInputStream.readInt();
                if (readUShort != 65535) {
                    this._subtotalName = recordInputStream.readUnicodeLEString(readUShort);
                    return;
                }
                return;
            }
            throw new RecordFormatException("Unexpected remaining size (" + recordInputStream.remaining() + MotionUtils.f31762d);
        }
    }
}
