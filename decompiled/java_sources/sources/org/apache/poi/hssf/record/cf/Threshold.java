package org.apache.poi.hssf.record.cf;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.cf.Threshold;
import org.apache.poi.ss.formula.Formula;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.usermodel.ConditionalFormattingThreshold;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public abstract class Threshold implements GenericRecord {
    private Formula formula;
    private byte type;
    private Double value;

    public Threshold() {
        this.type = (byte) ConditionalFormattingThreshold.RangeType.NUMBER.f111558id;
        this.formula = Formula.create(null);
        this.value = Double.valueOf(0.0d);
    }

    public abstract Threshold copy();

    public int getDataLength() {
        int encodedSize = this.formula.getEncodedSize() + 1;
        return this.value != null ? encodedSize + 8 : encodedSize;
    }

    public Formula getFormula() {
        return this.formula;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("type", new Supplier() { // from class: com.sunia.HTREnginev2.hhn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(Threshold.this.getType());
            }
        }, "formula", new Supplier() { // from class: com.sunia.HTREnginev2.ihn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Threshold.this.getFormula();
            }
        }, "value", new Supplier() { // from class: com.sunia.HTREnginev2.jhn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Threshold.this.getValue();
            }
        });
    }

    public Ptg[] getParsedExpression() {
        return this.formula.getTokens();
    }

    public byte getType() {
        return this.type;
    }

    public Double getValue() {
        return this.value;
    }

    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(this.type);
        if (this.formula.getTokens().length == 0) {
            littleEndianOutput.writeShort(0);
        } else {
            this.formula.serialize(littleEndianOutput);
        }
        Double d = this.value;
        if (d != null) {
            littleEndianOutput.writeDouble(d.doubleValue());
        }
    }

    public void setParsedExpression(Ptg[] ptgArr) {
        this.formula = Formula.create(ptgArr);
        if (ptgArr.length > 0) {
            this.value = null;
        }
    }

    public void setType(byte b) {
        this.type = b;
        if (b != ConditionalFormattingThreshold.RangeType.MIN.f111558id && b != ConditionalFormattingThreshold.RangeType.MAX.f111558id && b != ConditionalFormattingThreshold.RangeType.FORMULA.f111558id) {
            if (this.value == null) {
                this.value = Double.valueOf(0.0d);
                return;
            }
            return;
        }
        this.value = null;
    }

    public void setValue(Double d) {
        this.value = d;
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    public Threshold(Threshold threshold) {
        this.type = threshold.type;
        this.formula = threshold.formula.copy();
        this.value = threshold.value;
    }

    public void setType(int i) {
        this.type = (byte) i;
    }

    public Threshold(LittleEndianInput littleEndianInput) {
        byte b;
        this.type = littleEndianInput.readByte();
        short readShort = littleEndianInput.readShort();
        if (readShort > 0) {
            this.formula = Formula.read(readShort, littleEndianInput);
        } else {
            this.formula = Formula.create(null);
        }
        if (readShort != 0 || (b = this.type) == ConditionalFormattingThreshold.RangeType.MIN.f111558id || b == ConditionalFormattingThreshold.RangeType.MAX.f111558id) {
            return;
        }
        this.value = Double.valueOf(littleEndianInput.readDouble());
    }
}
