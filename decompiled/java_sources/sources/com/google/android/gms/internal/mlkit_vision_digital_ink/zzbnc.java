package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.TimeZone;

/* loaded from: classes5.dex */
public final class zzbnc {
    private static final TimeZone zza = TimeZone.getTimeZone("UTC");

    /* JADX WARN: Removed duplicated region for block: B:54:0x00e7 A[Catch: IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d6, TryCatch #0 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d6, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:18:0x0055, B:20:0x0065, B:21:0x0067, B:23:0x0073, B:24:0x0075, B:26:0x007b, B:30:0x0085, B:35:0x0095, B:37:0x009d, B:38:0x00a1, B:40:0x00a7, B:44:0x00b4, B:47:0x00be, B:52:0x00e1, B:54:0x00e7, B:56:0x00ee, B:57:0x019c, B:63:0x00fa, B:64:0x0115, B:65:0x0116, B:67:0x0120, B:68:0x0131, B:70:0x013e, B:73:0x0147, B:75:0x0166, B:78:0x0175, B:79:0x0197, B:81:0x019a, B:82:0x01ce, B:83:0x01d5, B:84:0x00ce, B:85:0x00d1, B:88:0x00b9), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01ce A[Catch: IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d6, TryCatch #0 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d6, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:18:0x0055, B:20:0x0065, B:21:0x0067, B:23:0x0073, B:24:0x0075, B:26:0x007b, B:30:0x0085, B:35:0x0095, B:37:0x009d, B:38:0x00a1, B:40:0x00a7, B:44:0x00b4, B:47:0x00be, B:52:0x00e1, B:54:0x00e7, B:56:0x00ee, B:57:0x019c, B:63:0x00fa, B:64:0x0115, B:65:0x0116, B:67:0x0120, B:68:0x0131, B:70:0x013e, B:73:0x0147, B:75:0x0166, B:78:0x0175, B:79:0x0197, B:81:0x019a, B:82:0x01ce, B:83:0x01d5, B:84:0x00ce, B:85:0x00d1, B:88:0x00b9), top: B:2:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date zza(java.lang.String r17, java.text.ParsePosition r18) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbnc.zza(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    private static int zzb(String str, int i, int i2) throws NumberFormatException {
        int i3;
        int i4;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        if (i < i2) {
            i4 = i + 1;
            int digit = Character.digit(str.charAt(i), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: ".concat(String.valueOf(str.substring(i, i2))));
            }
            i3 = -digit;
        } else {
            i3 = 0;
            i4 = i;
        }
        while (i4 < i2) {
            int i5 = i4 + 1;
            int digit2 = Character.digit(str.charAt(i4), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: ".concat(String.valueOf(str.substring(i, i2))));
            }
            i3 = (i3 * 10) - digit2;
            i4 = i5;
        }
        return -i3;
    }

    private static boolean zzc(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }
}
