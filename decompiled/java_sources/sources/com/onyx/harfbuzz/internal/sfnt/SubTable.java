package com.onyx.harfbuzz.internal.sfnt;

import androidx.annotation.NonNull;

/* loaded from: classes9.dex */
public class SubTable extends AbstractSfntTable {

    /* renamed from: a */
    public final SfntTable f62823a;

    /* renamed from: b */
    public final int f62824b;

    public SubTable(SfntTable sfntTable, int i) {
        this.f62823a = sfntTable;
        this.f62824b = i;
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    @NonNull
    public byte[] readBytes(int i, int i2) {
        return this.f62823a.readBytes(this.f62824b + i, i2);
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public short readInt16(int i) {
        return this.f62823a.readInt16(this.f62824b + i);
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public int readInt32(int i) {
        return this.f62823a.readInt32(this.f62824b + i);
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public long readInt64(int i) {
        return this.f62823a.readInt64(this.f62824b + i);
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public byte readInt8(int i) {
        return this.f62823a.readInt8(this.f62824b + i);
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public int readUInt16(int i) {
        return this.f62823a.readUInt16(this.f62824b + i);
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public long readUInt32(int i) {
        return this.f62823a.readUInt32(this.f62824b + i);
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public short readUInt8(int i) {
        return this.f62823a.readUInt8(this.f62824b + i);
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.AbstractSfntTable, com.onyx.harfbuzz.internal.sfnt.SfntTable
    public SfntTable subTable(int i) {
        return new SubTable(this.f62823a, this.f62824b + i);
    }
}
