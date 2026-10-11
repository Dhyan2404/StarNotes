package com.tencent.qmsp.oaid2;

import android.text.TextUtils;
import com.google.android.material.internal.ManufacturerUtils;

/* renamed from: com.tencent.qmsp.oaid2.d */
/* loaded from: classes10.dex */
public enum EnumC16868d {
    UNSUPPORT(-1, "unsupport"),
    HUA_WEI(0, "HUAWEI"),
    XIAOMI(1, "Xiaomi"),
    VIVO(2, "vivo"),
    OPPO(3, "oppo"),
    MOTO(4, "motorola"),
    LENOVO(5, "lenovo"),
    ASUS(6, "asus"),
    SAMSUNG(7, ManufacturerUtils.f31579b),
    MEIZU(8, ManufacturerUtils.f31580c),
    ALPS(9, "alps"),
    NUBIA(10, "nubia"),
    ZTE(11, "ZTE"),
    ONEPLUS(12, "OnePlus"),
    BLACKSHARK(13, "blackshark"),
    FREEMEOS(14, "freemeos"),
    SSUIOS(15, "ssui");


    /* renamed from: a */
    public String f93732a;

    EnumC16868d(int i, String str) {
        this.f93732a = str;
    }

    /* renamed from: a */
    public static EnumC16868d m60158a(String str) {
        if (TextUtils.isEmpty(str)) {
            return UNSUPPORT;
        }
        for (EnumC16868d enumC16868d : values()) {
            if (enumC16868d.f93732a.equalsIgnoreCase(str)) {
                return enumC16868d;
            }
        }
        return UNSUPPORT;
    }
}
