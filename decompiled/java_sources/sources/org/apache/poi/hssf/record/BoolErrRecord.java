package org.apache.poi.hssf.record;

import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.BoolErrRecord;
import org.apache.poi.ss.usermodel.FormulaError;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class BoolErrRecord extends CellRecord {
    public static final short sid = 517;
    private boolean _isError;
    private int _value;

    /* renamed from: org.apache.poi.hssf.record.BoolErrRecord$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194961 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$FormulaError;

        static {
            int[] iArr = new int[FormulaError.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$FormulaError = iArr;
            try {
                iArr[FormulaError.NULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$FormulaError[FormulaError.DIV0.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$FormulaError[FormulaError.VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$FormulaError[FormulaError.REF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$FormulaError[FormulaError.NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$FormulaError[FormulaError.NUM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$FormulaError[FormulaError.NA.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public BoolErrRecord() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        if (isError()) {
            return FormulaError.forInt(getErrorValue()).getString();
        }
        return null;
    }

    public boolean getBooleanValue() {
        return this._value != 0;
    }

    public byte getErrorValue() {
        return (byte) this._value;
    }

    @Override // org.apache.poi.hssf.record.CellRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.gt
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = BoolErrRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "isBoolean", new Supplier() { // from class: com.sunia.HTREnginev2.ht
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(BoolErrRecord.this.isBoolean());
            }
        }, "booleanVal", new Supplier() { // from class: com.sunia.HTREnginev2.jt
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(BoolErrRecord.this.getBooleanValue());
            }
        }, "isError", new Supplier() { // from class: com.sunia.HTREnginev2.kt
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(BoolErrRecord.this.isError());
            }
        }, "errorVal", new Supplier() { // from class: com.sunia.HTREnginev2.lt
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(BoolErrRecord.this.getErrorValue());
            }
        }, "errorTxt", new Supplier() { // from class: com.sunia.HTREnginev2.mt
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = BoolErrRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
    }

    @Override // org.apache.poi.hssf.record.CellRecord
    public String getRecordName() {
        return "BOOLERR";
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.CellRecord
    public int getValueDataSize() {
        return 2;
    }

    public boolean isBoolean() {
        return !this._isError;
    }

    public boolean isError() {
        return this._isError;
    }

    @Override // org.apache.poi.hssf.record.CellRecord
    public void serializeValue(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(this._value);
        littleEndianOutput.writeByte(this._isError ? 1 : 0);
    }

    public void setValue(boolean z) {
        this._value = z ? 1 : 0;
        this._isError = false;
    }

    public BoolErrRecord(BoolErrRecord boolErrRecord) {
        super(boolErrRecord);
        this._value = boolErrRecord._value;
        this._isError = boolErrRecord._isError;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.BOOL_ERR;
    }

    public void setValue(byte b) {
        setValue(FormulaError.forInt(b));
    }

    public void setValue(FormulaError formulaError) {
        switch (C194961.$SwitchMap$org$apache$poi$ss$usermodel$FormulaError[formulaError.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                this._value = formulaError.getCode();
                this._isError = true;
                return;
            default:
                throw new IllegalArgumentException("Error Value can only be 0,7,15,23,29,36 or 42. It cannot be " + ((int) formulaError.getCode()) + " (" + formulaError + MotionUtils.f31762d);
        }
    }

    public BoolErrRecord(RecordInputStream recordInputStream) {
        super(recordInputStream);
        int remaining = recordInputStream.remaining();
        if (remaining == 2) {
            this._value = recordInputStream.readByte();
        } else if (remaining == 3) {
            this._value = recordInputStream.readUShort();
        } else {
            throw new RecordFormatException("Unexpected size (" + recordInputStream.remaining() + ") for BOOLERR record.");
        }
        int readUByte = recordInputStream.readUByte();
        if (readUByte == 0) {
            this._isError = false;
            return;
        }
        if (readUByte == 1) {
            this._isError = true;
            return;
        }
        throw new RecordFormatException("Unexpected isError flag (" + readUByte + ") for BOOLERR record.");
    }

    @Override // org.apache.poi.hssf.record.CellRecord, org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public BoolErrRecord copy() {
        return new BoolErrRecord(this);
    }
}
