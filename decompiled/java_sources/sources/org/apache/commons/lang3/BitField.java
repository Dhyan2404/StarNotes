package org.apache.commons.lang3;

/* loaded from: classes12.dex */
public class BitField {

    /* renamed from: a */
    public final int f107357a;

    /* renamed from: b */
    public final int f107358b;

    public BitField(int i) {
        this.f107357a = i;
        this.f107358b = i != 0 ? Integer.numberOfTrailingZeros(i) : 0;
    }

    public int clear(int i) {
        return (~this.f107357a) & i;
    }

    public byte clearByte(byte b) {
        return (byte) clear(b);
    }

    public short clearShort(short s) {
        return (short) clear(s);
    }

    public int getRawValue(int i) {
        return this.f107357a & i;
    }

    public short getShortRawValue(short s) {
        return (short) getRawValue(s);
    }

    public short getShortValue(short s) {
        return (short) getValue(s);
    }

    public int getValue(int i) {
        return getRawValue(i) >> this.f107358b;
    }

    public boolean isAllSet(int i) {
        int i2 = this.f107357a;
        return (i & i2) == i2;
    }

    public boolean isSet(int i) {
        return (this.f107357a & i) != 0;
    }

    public int set(int i) {
        return this.f107357a | i;
    }

    public int setBoolean(int i, boolean z) {
        return z ? set(i) : clear(i);
    }

    public byte setByte(byte b) {
        return (byte) set(b);
    }

    public byte setByteBoolean(byte b, boolean z) {
        return z ? setByte(b) : clearByte(b);
    }

    public short setShort(short s) {
        return (short) set(s);
    }

    public short setShortBoolean(short s, boolean z) {
        return z ? setShort(s) : clearShort(s);
    }

    public short setShortValue(short s, short s2) {
        return (short) setValue(s, s2);
    }

    public int setValue(int i, int i2) {
        int i3 = this.f107357a;
        return ((i2 << this.f107358b) & i3) | (i & (~i3));
    }
}
