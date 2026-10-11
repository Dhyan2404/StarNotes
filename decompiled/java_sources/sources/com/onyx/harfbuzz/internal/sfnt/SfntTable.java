package com.onyx.harfbuzz.internal.sfnt;

import androidx.annotation.NonNull;

/* loaded from: classes9.dex */
public interface SfntTable {
    @NonNull
    byte[] readBytes(int i, int i2);

    float readFixed(int i);

    short readInt16(int i);

    int readInt32(int i);

    long readInt64(int i);

    byte readInt8(int i);

    int readOffset32(int i);

    int readUInt16(int i);

    long readUInt32(int i);

    short readUInt8(int i);

    SfntTable subTable(int i);
}
