package org.apache.poi.ss.formula.ptg;

import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ss.formula.ptg.MemAreaPtg;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class MemAreaPtg extends OperandPtg {
    private static final int SIZE = 7;
    public static final short sid = 38;
    private final int field_1_reserved;
    private final int field_2_subex_len;

    public MemAreaPtg(int i) {
        this.field_1_reserved = 0;
        this.field_2_subex_len = i;
    }

    @Override // org.apache.poi.ss.formula.ptg.OperandPtg, org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public MemAreaPtg copy() {
        return this;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getDefaultOperandClass() {
        return (byte) 32;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("lenRefSubexpression", new Supplier() { // from class: com.sunia.HTREnginev2.wlj
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(MemAreaPtg.this.getLenRefSubexpression());
            }
        });
    }

    public int getLenRefSubexpression() {
        return this.field_2_subex_len;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return Cea608Decoder.f26815X;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public int getSize() {
        return 7;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public String toFormulaString() {
        return "";
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getPtgClass() + Cea608Decoder.f26815X);
        littleEndianOutput.writeInt(this.field_1_reserved);
        littleEndianOutput.writeShort(this.field_2_subex_len);
    }

    public MemAreaPtg(LittleEndianInput littleEndianInput) {
        this.field_1_reserved = littleEndianInput.readInt();
        this.field_2_subex_len = littleEndianInput.readShort();
    }
}
