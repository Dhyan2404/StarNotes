package com.sunia.HTREnginev2;

import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes6.dex */
public class u8g {

    /* renamed from: a */
    public final int f86209a;

    /* renamed from: b */
    public final int f86210b;

    /* renamed from: c */
    public final boolean f86211c;

    public u8g(int i, int i2, boolean z) {
        this.f86209a = i;
        this.f86210b = i2;
        this.f86211c = z;
    }

    /* renamed from: a */
    public static u8g m57555a(int i, int i2) {
        return new u8g(i, i2, true);
    }

    /* renamed from: b */
    public static u8g m57556b(int i, int i2) {
        return new u8g(i, i2, false);
    }
}
