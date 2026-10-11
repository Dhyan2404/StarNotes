package org.apache.poi.hwpf.model.types;

import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public abstract class TBDAbstractType {
    protected byte field_1_value;

    /* renamed from: jc */
    private static final BitField f111451jc = new BitField(7);
    private static final BitField tlc = new BitField(56);
    private static final BitField reserved = new BitField(192);

    public TBDAbstractType() {
    }

    public static int getSize() {
        return 1;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_value = bArr[i + 0];
    }

    @Internal
    public byte getJc() {
        return (byte) f111451jc.getValue(this.field_1_value);
    }

    @Internal
    public byte getReserved() {
        return (byte) reserved.getValue(this.field_1_value);
    }

    @Internal
    public byte getTlc() {
        return (byte) tlc.getValue(this.field_1_value);
    }

    @Internal
    public byte getValue() {
        return this.field_1_value;
    }

    public void serialize(byte[] bArr, int i) {
        bArr[i + 0] = this.field_1_value;
    }

    @Internal
    public void setJc(byte b) {
        this.field_1_value = (byte) f111451jc.setValue(this.field_1_value, b);
    }

    @Internal
    public void setReserved(byte b) {
        this.field_1_value = (byte) reserved.setValue(this.field_1_value, b);
    }

    @Internal
    public void setTlc(byte b) {
        this.field_1_value = (byte) tlc.setValue(this.field_1_value, b);
    }

    @Internal
    public void setValue(byte b) {
        this.field_1_value = b;
    }

    public String toString() {
        return "[TBD]\n    .value                =  (" + ((int) getValue()) + " )\n         .jc                       = " + ((int) getJc()) + "\n         .tlc                      = " + ((int) getTlc()) + "\n         .reserved                 = " + ((int) getReserved()) + "\n[/TBD]\n";
    }

    public TBDAbstractType(TBDAbstractType tBDAbstractType) {
        this.field_1_value = tBDAbstractType.field_1_value;
    }
}
