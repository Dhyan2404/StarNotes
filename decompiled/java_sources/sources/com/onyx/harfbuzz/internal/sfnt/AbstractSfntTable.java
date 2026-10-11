package com.onyx.harfbuzz.internal.sfnt;

/* loaded from: classes9.dex */
public abstract class AbstractSfntTable implements SfntTable {
    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public float readFixed(int i) {
        return readInt32(i) / 65536.0f;
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public int readOffset32(int i) {
        return ((int) readUInt32(i)) & Integer.MAX_VALUE;
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public SfntTable subTable(int i) {
        return new SubTable(this, i);
    }
}
