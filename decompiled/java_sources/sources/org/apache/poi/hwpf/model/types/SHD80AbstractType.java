package org.apache.poi.hwpf.model.types;

import java.util.Objects;
import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class SHD80AbstractType {
    protected short field_1_value;
    private static final BitField icoFore = new BitField(31);
    private static final BitField icoBack = new BitField(992);
    private static final BitField ipat = new BitField(64512);

    public SHD80AbstractType() {
    }

    public static int getSize() {
        return 2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.field_1_value == ((SHD80AbstractType) obj).field_1_value;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_value = LittleEndian.getShort(bArr, i + 0);
    }

    @Internal
    public byte getIcoBack() {
        return (byte) icoBack.getValue(this.field_1_value);
    }

    @Internal
    public byte getIcoFore() {
        return (byte) icoFore.getValue(this.field_1_value);
    }

    @Internal
    public byte getIpat() {
        return (byte) ipat.getValue(this.field_1_value);
    }

    @Internal
    public short getValue() {
        return this.field_1_value;
    }

    public int hashCode() {
        return Objects.hash(Short.valueOf(this.field_1_value));
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putShort(bArr, i + 0, this.field_1_value);
    }

    @Internal
    public void setIcoBack(byte b) {
        this.field_1_value = (short) icoBack.setValue(this.field_1_value, b);
    }

    @Internal
    public void setIcoFore(byte b) {
        this.field_1_value = (short) icoFore.setValue(this.field_1_value, b);
    }

    @Internal
    public void setIpat(byte b) {
        this.field_1_value = (short) ipat.setValue(this.field_1_value, b);
    }

    @Internal
    public void setValue(short s) {
        this.field_1_value = s;
    }

    public String toString() {
        return "[SHD80]\n    .value                =  (" + ((int) getValue()) + " )\n         .icoFore                  = " + ((int) getIcoFore()) + "\n         .icoBack                  = " + ((int) getIcoBack()) + "\n         .ipat                     = " + ((int) getIpat()) + "\n[/SHD80]\n";
    }

    public SHD80AbstractType(SHD80AbstractType sHD80AbstractType) {
        this.field_1_value = sHD80AbstractType.field_1_value;
    }

    public byte[] serialize() {
        byte[] bArr = new byte[getSize()];
        serialize(bArr, 0);
        return bArr;
    }
}
