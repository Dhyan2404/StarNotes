package org.apache.poi.ss.formula.ptg;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ss.formula.ptg.AreaErrPtg;
import org.apache.poi.ss.usermodel.FormulaError;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class AreaErrPtg extends OperandPtg {
    public static final byte sid = 43;
    private final int unused1;
    private final int unused2;

    public AreaErrPtg() {
        this.unused1 = 0;
        this.unused2 = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.unused1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this.unused2);
    }

    @Override // org.apache.poi.ss.formula.ptg.OperandPtg, org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public AreaErrPtg copy() {
        return this;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getDefaultOperandClass() {
        return (byte) 0;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("unused1", new Supplier() { // from class: com.sunia.HTREnginev2.ce
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = AreaErrPtg.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "unused2", new Supplier() { // from class: com.sunia.HTREnginev2.de
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = AreaErrPtg.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 43;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public int getSize() {
        return 9;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public String toFormulaString() {
        return FormulaError.REF.getString();
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getPtgClass() + 43);
        littleEndianOutput.writeInt(this.unused1);
        littleEndianOutput.writeInt(this.unused2);
    }

    public AreaErrPtg(LittleEndianInput littleEndianInput) {
        this.unused1 = littleEndianInput.readInt();
        this.unused2 = littleEndianInput.readInt();
    }
}
