package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import okio.Utf8;

/* loaded from: classes5.dex */
final class zbwt {
    public static /* bridge */ /* synthetic */ void zba(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (zbe(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || zbe(b3) || zbe(b4)) {
            throw new zbuq("Protocol message had invalid UTF-8.");
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    public static /* bridge */ /* synthetic */ void zbb(byte b, byte b2, byte b3, char[] cArr, int i) {
        if (!zbe(b2)) {
            if (b == -32) {
                if (b2 >= -96) {
                    b = -32;
                }
            }
            if (b == -19) {
                if (b2 < -96) {
                    b = -19;
                }
            }
            if (!zbe(b3)) {
                cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
                return;
            }
        }
        throw new zbuq("Protocol message had invalid UTF-8.");
    }

    public static /* bridge */ /* synthetic */ void zbc(byte b, byte b2, char[] cArr, int i) {
        if (b < -62 || zbe(b2)) {
            throw new zbuq("Protocol message had invalid UTF-8.");
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    public static /* bridge */ /* synthetic */ boolean zbd(byte b) {
        return b >= 0;
    }

    private static boolean zbe(byte b) {
        return b > -65;
    }
}
