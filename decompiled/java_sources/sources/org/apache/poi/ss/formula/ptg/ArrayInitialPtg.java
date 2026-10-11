package org.apache.poi.ss.formula.ptg;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ss.formula.constant.ConstantValueParser;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public final class ArrayInitialPtg extends Ptg {
    private final int _reserved0;
    private final int _reserved1;
    private final int _reserved2;

    public ArrayInitialPtg(LittleEndianInput littleEndianInput) {
        this._reserved0 = littleEndianInput.readInt();
        this._reserved1 = littleEndianInput.readUShort();
        this._reserved2 = littleEndianInput.readUByte();
    }

    private static RuntimeException invalid() {
        throw new IllegalStateException("This object is a partially initialised tArray, and cannot be used as a Ptg");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this._reserved0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this._reserved1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Integer.valueOf(this._reserved2);
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public ArrayInitialPtg copy() {
        return this;
    }

    public ArrayPtg finishReading(LittleEndianInput littleEndianInput) {
        int readUByte = littleEndianInput.readUByte() + 1;
        short readShort = (short) (littleEndianInput.readShort() + 1);
        ArrayPtg arrayPtg = new ArrayPtg(this._reserved0, this._reserved1, this._reserved2, readUByte, readShort, ConstantValueParser.parse(littleEndianInput, readShort * readUByte));
        arrayPtg.setClass(getPtgClass());
        return arrayPtg;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getDefaultOperandClass() {
        throw invalid();
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("reserved0", new Supplier() { // from class: org.apache.poi.ss.formula.ptg.a
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = ArrayInitialPtg.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "reserved1", new Supplier() { // from class: org.apache.poi.ss.formula.ptg.b
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = ArrayInitialPtg.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "reserved2", new Supplier() { // from class: org.apache.poi.ss.formula.ptg.c
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = ArrayInitialPtg.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        });
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) -1;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public int getSize() {
        return 8;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public boolean isBaseToken() {
        return false;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public String toFormulaString() {
        throw invalid();
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        throw invalid();
    }
}
