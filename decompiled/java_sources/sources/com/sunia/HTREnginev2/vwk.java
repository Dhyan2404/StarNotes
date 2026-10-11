package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
@nnf
/* loaded from: classes6.dex */
public final class vwk {

    /* renamed from: a */
    public final String f87994a;

    /* renamed from: b */
    public final int f87995b;

    public vwk(String str, int i) {
        this.f87994a = str;
        this.f87995b = i;
    }

    /* renamed from: a */
    public static vwk m57893a(String str) {
        if (str.length() == 0) {
            throw new NumberFormatException("empty string");
        }
        char charAt = str.charAt(0);
        int i = 16;
        if (str.startsWith("0x") || str.startsWith("0X")) {
            str = str.substring(2);
        } else if (charAt == '#') {
            str = str.substring(1);
        } else if (charAt != '0' || str.length() <= 1) {
            i = 10;
        } else {
            str = str.substring(1);
            i = 8;
        }
        return new vwk(str, i);
    }
}
