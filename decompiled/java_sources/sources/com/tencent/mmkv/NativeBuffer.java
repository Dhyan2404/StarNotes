package com.tencent.mmkv;

/* loaded from: classes10.dex */
public final class NativeBuffer {
    public long pointer;
    public int size;

    public NativeBuffer(long ptr, int length) {
        this.pointer = ptr;
        this.size = length;
    }
}
