package com.tencent.beacon.base.net.adapter;

import com.tencent.beacon.base.net.BodyType;

/* renamed from: com.tencent.beacon.base.net.adapter.a */
/* loaded from: classes10.dex */
public /* synthetic */ class C14911a {

    /* renamed from: a */
    static final /* synthetic */ int[] f92665a;

    static {
        int[] iArr = new int[BodyType.values().length];
        f92665a = iArr;
        try {
            iArr[BodyType.DATA.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f92665a[BodyType.FORM.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f92665a[BodyType.JSON.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
