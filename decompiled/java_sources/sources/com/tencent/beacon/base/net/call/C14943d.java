package com.tencent.beacon.base.net.call;

import com.tencent.beacon.base.net.BodyType;

/* renamed from: com.tencent.beacon.base.net.call.d */
/* loaded from: classes10.dex */
public /* synthetic */ class C14943d {

    /* renamed from: a */
    static final /* synthetic */ int[] f92893a;

    static {
        int[] iArr = new int[BodyType.values().length];
        f92893a = iArr;
        try {
            iArr[BodyType.JSON.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f92893a[BodyType.FORM.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f92893a[BodyType.DATA.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
