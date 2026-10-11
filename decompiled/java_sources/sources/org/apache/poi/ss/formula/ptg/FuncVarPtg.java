package org.apache.poi.ss.formula.ptg;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ss.formula.function.FunctionMetadata;
import org.apache.poi.ss.formula.function.FunctionMetadataRegistry;
import org.apache.poi.ss.formula.ptg.FuncVarPtg;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class FuncVarPtg extends AbstractFunctionPtg {
    private static final int SIZE = 4;
    public static final byte sid = 34;
    private final boolean _isCetab;
    private static final BitField ceFunc = BitFieldFactory.getInstance(61440);
    public static final OperationPtg SUM = create("SUM", 1);

    private FuncVarPtg(int i, int i2, byte[] bArr, int i3, boolean z) {
        super(i, i2, bArr, i3);
        this._isCetab = z;
    }

    public static FuncVarPtg create(LittleEndianInput littleEndianInput) {
        return create(littleEndianInput.readByte(), littleEndianInput.readUShort());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Boolean.valueOf(this._isCetab);
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public FuncVarPtg copy() {
        return this;
    }

    @Override // org.apache.poi.ss.formula.ptg.AbstractFunctionPtg, org.apache.poi.ss.formula.ptg.OperationPtg, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.qwg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = FuncVarPtg.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "cetab", new Supplier() { // from class: com.sunia.HTREnginev2.rwg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = FuncVarPtg.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 34;
    }

    @Override // org.apache.poi.ss.formula.ptg.AbstractFunctionPtg, org.apache.poi.ss.formula.ptg.Ptg
    public int getSize() {
        return 4;
    }

    @Override // org.apache.poi.ss.formula.ptg.AbstractFunctionPtg
    public String lookupName(short s) {
        return lookupName(s, this._isCetab);
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getPtgClass() + 34);
        littleEndianOutput.writeByte(getNumberOfOperands());
        littleEndianOutput.writeShort(getFunctionIndex());
    }

    public static FuncVarPtg create(String str, int i) {
        return create(i, AbstractFunctionPtg.lookupIndex(str));
    }

    private static FuncVarPtg create(int i, int i2) {
        FunctionMetadata functionByIndex;
        BitField bitField = ceFunc;
        boolean isSet = bitField.isSet(i2);
        if (isSet) {
            i2 = bitField.clear(i2);
            functionByIndex = FunctionMetadataRegistry.getCetabFunctionByIndex(i2);
        } else {
            functionByIndex = FunctionMetadataRegistry.getFunctionByIndex(i2);
        }
        int i3 = i2;
        if (functionByIndex == null) {
            return new FuncVarPtg(i3, 32, new byte[]{32}, i, isSet);
        }
        return new FuncVarPtg(i3, functionByIndex.getReturnClassCode(), functionByIndex.getParameterClassCodes(), i, isSet);
    }
}
