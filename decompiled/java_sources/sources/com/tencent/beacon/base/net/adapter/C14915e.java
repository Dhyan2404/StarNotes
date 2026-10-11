package com.tencent.beacon.base.net.adapter;

import com.tencent.beacon.base.net.BodyType;

/* renamed from: com.tencent.beacon.base.net.adapter.e */
/* loaded from: classes10.dex */
public /* synthetic */ class C14915e {

    /* renamed from: a */
    static final /* synthetic */ int[] f92672a;

    static {
        int[] iArr = new int[BodyType.values().length];
        f92672a = iArr;
        try {
            iArr[BodyType.FORM.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f92672a[BodyType.JSON.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f92672a[BodyType.DATA.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
