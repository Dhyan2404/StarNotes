package com.bumptech.glide.load.engine.bitmap_recycle;

import com.sunia.HTREnginev2.InterfaceC13482af;

/* loaded from: classes3.dex */
public final class ByteArrayAdapter implements InterfaceC13482af<byte[]> {

    /* renamed from: a */
    public static final String f14638a = "ByteArrayPool";

    @Override // com.sunia.HTREnginev2.InterfaceC13482af
    public int getElementSizeInBytes() {
        return 1;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13482af
    public String getTag() {
        return f14638a;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13482af
    public int getArrayLength(byte[] bArr) {
        return bArr.length;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13482af
    public byte[] newArray(int i) {
        return new byte[i];
    }
}
