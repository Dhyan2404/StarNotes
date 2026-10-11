package com.sunia.HTREnginev2;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.ssa.SsaDecoder;
import com.google.android.exoplayer2.util.Assertions;
import com.google.common.base.Ascii;

/* loaded from: classes5.dex */
public final class bxm {

    /* renamed from: a */
    public final int f66222a;

    /* renamed from: b */
    public final int f66223b;

    /* renamed from: c */
    public final int f66224c;

    /* renamed from: d */
    public final int f66225d;

    /* renamed from: e */
    public final int f66226e;

    public bxm(int i, int i2, int i3, int i4, int i5) {
        this.f66222a = i;
        this.f66223b = i2;
        this.f66224c = i3;
        this.f66225d = i4;
        this.f66226e = i5;
    }

    @Nullable
    /* renamed from: a */
    public static bxm m53349a(String str) {
        char c;
        Assertions.checkArgument(str.startsWith(SsaDecoder.f27033v));
        String[] split = TextUtils.split(str.substring(7), ",");
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < split.length; i5++) {
            String lowerCase = Ascii.toLowerCase(split[i5].trim());
            lowerCase.hashCode();
            switch (lowerCase.hashCode()) {
                case 100571:
                    if (lowerCase.equals("end")) {
                        c = 0;
                        break;
                    }
                    break;
                case 3556653:
                    if (lowerCase.equals("text")) {
                        c = 1;
                        break;
                    }
                    break;
                case 109757538:
                    if (lowerCase.equals(gon.f71290o0)) {
                        c = 2;
                        break;
                    }
                    break;
                case 109780401:
                    if (lowerCase.equals("style")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            c = 65535;
            switch (c) {
                case 0:
                    i2 = i5;
                    break;
                case 1:
                    i4 = i5;
                    break;
                case 2:
                    i = i5;
                    break;
                case 3:
                    i3 = i5;
                    break;
            }
        }
        if (i == -1 || i2 == -1 || i4 == -1) {
            return null;
        }
        return new bxm(i, i2, i3, i4, split.length);
    }
}
