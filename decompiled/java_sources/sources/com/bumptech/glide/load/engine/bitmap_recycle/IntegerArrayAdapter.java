package com.bumptech.glide.load.engine.bitmap_recycle;

import com.sunia.HTREnginev2.InterfaceC13482af;

/* loaded from: classes3.dex */
public final class IntegerArrayAdapter implements InterfaceC13482af<int[]> {

    /* renamed from: a */
    public static final String f14639a = "IntegerArrayPool";

    @Override // com.sunia.HTREnginev2.InterfaceC13482af
    public int getElementSizeInBytes() {
        return 4;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13482af
    public String getTag() {
        return f14639a;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13482af
    public int getArrayLength(int[] iArr) {
        return iArr.length;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13482af
    public int[] newArray(int i) {
        return new int[i];
    }
}
