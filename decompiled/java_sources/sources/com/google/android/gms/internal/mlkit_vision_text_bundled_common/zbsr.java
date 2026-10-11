package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zbsr {
    public static final /* synthetic */ int zba = 0;
    private static volatile int zbb = 100;

    public static int zba(byte[] bArr, int i, zbsq zbsqVar) throws zbuq {
        int zbk = zbk(bArr, i, zbsqVar);
        int i2 = zbsqVar.zba;
        if (i2 < 0) {
            throw new zbuq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i2 > bArr.length - zbk) {
            throw new zbuq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        if (i2 == 0) {
            zbsqVar.zbc = zbtc.zbb;
            return zbk;
        }
        zbsqVar.zbc = zbtc.zbj(bArr, zbk, i2);
        return zbk + i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x000f. Please report as an issue. */
    public static int zbb(int i, byte[] bArr, int i2, int i3, zbub zbubVar, zbud zbudVar, zbwl zbwlVar, zbsq zbsqVar) throws IOException {
        int i4;
        zbtu zbtuVar = zbubVar.zbb;
        zbww zbwwVar = zbudVar.zbb.zbb;
        Object obj = null;
        if (zbwwVar == zbww.zbn) {
            zbk(bArr, i2, zbsqVar);
            throw null;
        }
        switch (zbwwVar.ordinal()) {
            case 0:
                i4 = i2 + 8;
                obj = Double.valueOf(Double.longBitsToDouble(zbr(bArr, i2)));
                i2 = i4;
                zbtuVar.zbj(zbudVar.zbb, obj);
                return i2;
            case 1:
                i4 = i2 + 4;
                obj = Float.valueOf(Float.intBitsToFloat(zbc(bArr, i2)));
                i2 = i4;
                zbtuVar.zbj(zbudVar.zbb, obj);
                return i2;
            case 2:
            case 3:
                i2 = zbn(bArr, i2, zbsqVar);
                obj = Long.valueOf(zbsqVar.zbb);
                zbtuVar.zbj(zbudVar.zbb, obj);
                return i2;
            case 4:
            case 12:
                i2 = zbk(bArr, i2, zbsqVar);
                obj = Integer.valueOf(zbsqVar.zba);
                zbtuVar.zbj(zbudVar.zbb, obj);
                return i2;
            case 5:
            case 15:
                i4 = i2 + 8;
                obj = Long.valueOf(zbr(bArr, i2));
                i2 = i4;
                zbtuVar.zbj(zbudVar.zbb, obj);
                return i2;
            case 6:
            case 14:
                i4 = i2 + 4;
                obj = Integer.valueOf(zbc(bArr, i2));
                i2 = i4;
                zbtuVar.zbj(zbudVar.zbb, obj);
                return i2;
            case 7:
                i2 = zbn(bArr, i2, zbsqVar);
                obj = Boolean.valueOf(zbsqVar.zbb != 0);
                zbtuVar.zbj(zbudVar.zbb, obj);
                return i2;
            case 8:
                i2 = zbh(bArr, i2, zbsqVar);
                obj = zbsqVar.zbc;
                zbtuVar.zbj(zbudVar.zbb, obj);
                return i2;
            case 9:
                int i5 = ((i >>> 3) << 3) | 4;
                zbvx zbb2 = zbvu.zba().zbb(zbudVar.zba.getClass());
                Object zbf = zbtuVar.zbf(zbudVar.zbb);
                if (zbf == null) {
                    zbf = zbb2.zbe();
                    zbtuVar.zbj(zbudVar.zbb, zbf);
                }
                return zbo(zbf, zbb2, bArr, i2, i3, i5, zbsqVar);
            case 10:
                zbvx zbb3 = zbvu.zba().zbb(zbudVar.zba.getClass());
                Object zbf2 = zbtuVar.zbf(zbudVar.zbb);
                if (zbf2 == null) {
                    zbf2 = zbb3.zbe();
                    zbtuVar.zbj(zbudVar.zbb, zbf2);
                }
                return zbp(zbf2, zbb3, bArr, i2, i3, zbsqVar);
            case 11:
                i2 = zba(bArr, i2, zbsqVar);
                obj = zbsqVar.zbc;
                zbtuVar.zbj(zbudVar.zbb, obj);
                return i2;
            case 13:
                throw new IllegalStateException("Shouldn't reach here.");
            case 16:
                i2 = zbk(bArr, i2, zbsqVar);
                obj = Integer.valueOf(zbtg.zbb(zbsqVar.zba));
                zbtuVar.zbj(zbudVar.zbb, obj);
                return i2;
            case 17:
                i2 = zbn(bArr, i2, zbsqVar);
                obj = Long.valueOf(zbtg.zbc(zbsqVar.zbb));
                zbtuVar.zbj(zbudVar.zbb, obj);
                return i2;
            default:
                zbtuVar.zbj(zbudVar.zbb, obj);
                return i2;
        }
    }

    public static int zbc(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static int zbd(zbvx zbvxVar, byte[] bArr, int i, int i2, int i3, zbsq zbsqVar) throws IOException {
        Object zbe = zbvxVar.zbe();
        int zbo = zbo(zbe, zbvxVar, bArr, i, i2, i3, zbsqVar);
        zbvxVar.zbf(zbe);
        zbsqVar.zbc = zbe;
        return zbo;
    }

    public static int zbe(zbvx zbvxVar, byte[] bArr, int i, int i2, zbsq zbsqVar) throws IOException {
        Object zbe = zbvxVar.zbe();
        int zbp = zbp(zbe, zbvxVar, bArr, i, i2, zbsqVar);
        zbvxVar.zbf(zbe);
        zbsqVar.zbc = zbe;
        return zbp;
    }

    public static int zbf(zbvx zbvxVar, int i, byte[] bArr, int i2, int i3, zbun zbunVar, zbsq zbsqVar) throws IOException {
        int zbe = zbe(zbvxVar, bArr, i2, i3, zbsqVar);
        zbunVar.add(zbsqVar.zbc);
        while (zbe < i3) {
            int zbk = zbk(bArr, zbe, zbsqVar);
            if (i != zbsqVar.zba) {
                break;
            }
            zbe = zbe(zbvxVar, bArr, zbk, i3, zbsqVar);
            zbunVar.add(zbsqVar.zbc);
        }
        return zbe;
    }

    public static int zbg(byte[] bArr, int i, zbun zbunVar, zbsq zbsqVar) throws IOException {
        zbug zbugVar = (zbug) zbunVar;
        int zbk = zbk(bArr, i, zbsqVar);
        int i2 = zbsqVar.zba + zbk;
        while (zbk < i2) {
            zbk = zbk(bArr, zbk, zbsqVar);
            zbugVar.zbg(zbsqVar.zba);
        }
        if (zbk == i2) {
            return zbk;
        }
        throw new zbuq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static int zbh(byte[] bArr, int i, zbsq zbsqVar) throws zbuq {
        int zbk = zbk(bArr, i, zbsqVar);
        int i2 = zbsqVar.zba;
        if (i2 < 0) {
            throw new zbuq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i2 == 0) {
            zbsqVar.zbc = "";
            return zbk;
        }
        zbsqVar.zbc = new String(bArr, zbk, i2, zbuo.zba);
        return zbk + i2;
    }

    public static int zbi(byte[] bArr, int i, zbsq zbsqVar) throws zbuq {
        int zbk = zbk(bArr, i, zbsqVar);
        int i2 = zbsqVar.zba;
        if (i2 < 0) {
            throw new zbuq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i2 == 0) {
            zbsqVar.zbc = "";
            return zbk;
        }
        int i3 = zbwv.zba;
        int length = bArr.length;
        if ((((length - zbk) - i2) | zbk | i2) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(zbk), Integer.valueOf(i2)));
        }
        int i4 = zbk + i2;
        char[] cArr = new char[i2];
        int i5 = 0;
        while (zbk < i4) {
            byte b = bArr[zbk];
            if (!zbwt.zbd(b)) {
                break;
            }
            zbk++;
            cArr[i5] = (char) b;
            i5++;
        }
        int i6 = i5;
        while (zbk < i4) {
            int i7 = zbk + 1;
            byte b2 = bArr[zbk];
            if (zbwt.zbd(b2)) {
                int i8 = i6 + 1;
                cArr[i6] = (char) b2;
                zbk = i7;
                while (true) {
                    i6 = i8;
                    if (zbk < i4) {
                        byte b3 = bArr[zbk];
                        if (zbwt.zbd(b3)) {
                            zbk++;
                            i8 = i6 + 1;
                            cArr[i6] = (char) b3;
                        }
                    }
                }
            } else if (b2 < -32) {
                if (i7 >= i4) {
                    throw new zbuq("Protocol message had invalid UTF-8.");
                }
                zbwt.zbc(b2, bArr[i7], cArr, i6);
                i6++;
                zbk = i7 + 1;
            } else if (b2 < -16) {
                if (i7 >= i4 - 1) {
                    throw new zbuq("Protocol message had invalid UTF-8.");
                }
                int i9 = i7 + 1;
                zbwt.zbb(b2, bArr[i7], bArr[i9], cArr, i6);
                i6++;
                zbk = i9 + 1;
            } else {
                if (i7 >= i4 - 2) {
                    throw new zbuq("Protocol message had invalid UTF-8.");
                }
                int i10 = i7 + 1;
                byte b4 = bArr[i7];
                int i11 = i10 + 1;
                zbwt.zba(b2, b4, bArr[i10], bArr[i11], cArr, i6);
                i6 += 2;
                zbk = i11 + 1;
            }
        }
        zbsqVar.zbc = new String(cArr, 0, i6);
        return i4;
    }

    public static int zbj(int i, byte[] bArr, int i2, int i3, zbwm zbwmVar, zbsq zbsqVar) throws zbuq {
        if ((i >>> 3) == 0) {
            throw new zbuq("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int zbn = zbn(bArr, i2, zbsqVar);
            zbwmVar.zbj(i, Long.valueOf(zbsqVar.zbb));
            return zbn;
        }
        if (i4 == 1) {
            zbwmVar.zbj(i, Long.valueOf(zbr(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int zbk = zbk(bArr, i2, zbsqVar);
            int i5 = zbsqVar.zba;
            if (i5 < 0) {
                throw new zbuq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if (i5 > bArr.length - zbk) {
                throw new zbuq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if (i5 == 0) {
                zbwmVar.zbj(i, zbtc.zbb);
            } else {
                zbwmVar.zbj(i, zbtc.zbj(bArr, zbk, i5));
            }
            return zbk + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new zbuq("Protocol message contained an invalid tag (zero).");
            }
            zbwmVar.zbj(i, Integer.valueOf(zbc(bArr, i2)));
            return i2 + 4;
        }
        int i6 = (i & (-8)) | 4;
        zbwm zbf = zbwm.zbf();
        int i7 = zbsqVar.zbe + 1;
        zbsqVar.zbe = i7;
        zbs(i7);
        int i8 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int zbk2 = zbk(bArr, i2, zbsqVar);
            i8 = zbsqVar.zba;
            if (i8 == i6) {
                i2 = zbk2;
                break;
            }
            i2 = zbj(i8, bArr, zbk2, i3, zbf, zbsqVar);
        }
        zbsqVar.zbe--;
        if (i2 > i3 || i8 != i6) {
            throw new zbuq("Failed to parse the message.");
        }
        zbwmVar.zbj(i, zbf);
        return i2;
    }

    public static int zbk(byte[] bArr, int i, zbsq zbsqVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return zbl(b, bArr, i2, zbsqVar);
        }
        zbsqVar.zba = b;
        return i2;
    }

    public static int zbl(int i, byte[] bArr, int i2, zbsq zbsqVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b >= 0) {
            zbsqVar.zba = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i3 + 1;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            zbsqVar.zba = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zbsqVar.zba = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zbsqVar.zba = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zbsqVar.zba = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int zbm(int i, byte[] bArr, int i2, int i3, zbun zbunVar, zbsq zbsqVar) {
        zbug zbugVar = (zbug) zbunVar;
        int zbk = zbk(bArr, i2, zbsqVar);
        zbugVar.zbg(zbsqVar.zba);
        while (zbk < i3) {
            int zbk2 = zbk(bArr, zbk, zbsqVar);
            if (i != zbsqVar.zba) {
                break;
            }
            zbk = zbk(bArr, zbk2, zbsqVar);
            zbugVar.zbg(zbsqVar.zba);
        }
        return zbk;
    }

    public static int zbn(byte[] bArr, int i, zbsq zbsqVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zbsqVar.zbb = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        long j2 = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            byte b2 = bArr[i3];
            i4 += 7;
            j2 |= (b2 & Byte.MAX_VALUE) << i4;
            i3 = i5;
            b = b2;
        }
        zbsqVar.zbb = j2;
        return i3;
    }

    public static int zbo(Object obj, zbvx zbvxVar, byte[] bArr, int i, int i2, int i3, zbsq zbsqVar) throws IOException {
        zbvp zbvpVar = (zbvp) zbvxVar;
        int i4 = zbsqVar.zbe + 1;
        zbsqVar.zbe = i4;
        zbs(i4);
        int zbc = zbvpVar.zbc(obj, bArr, i, i2, i3, zbsqVar);
        zbsqVar.zbe--;
        zbsqVar.zbc = obj;
        return zbc;
    }

    public static int zbp(Object obj, zbvx zbvxVar, byte[] bArr, int i, int i2, zbsq zbsqVar) throws IOException {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = zbl(i4, bArr, i3, zbsqVar);
            i4 = zbsqVar.zba;
        }
        int i5 = i3;
        if (i4 < 0 || i4 > i2 - i5) {
            throw new zbuq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i6 = zbsqVar.zbe + 1;
        zbsqVar.zbe = i6;
        zbs(i6);
        int i7 = i4 + i5;
        zbvxVar.zbh(obj, bArr, i5, i7, zbsqVar);
        zbsqVar.zbe--;
        zbsqVar.zbc = obj;
        return i7;
    }

    public static int zbq(int i, byte[] bArr, int i2, int i3, zbsq zbsqVar) throws zbuq {
        if ((i >>> 3) == 0) {
            throw new zbuq("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return zbn(bArr, i2, zbsqVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return zbk(bArr, i2, zbsqVar) + zbsqVar.zba;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw new zbuq("Protocol message contained an invalid tag (zero).");
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = zbk(bArr, i2, zbsqVar);
            i6 = zbsqVar.zba;
            if (i6 == i5) {
                break;
            }
            i2 = zbq(i6, bArr, i2, i3, zbsqVar);
        }
        if (i2 > i3 || i6 != i5) {
            throw new zbuq("Failed to parse the message.");
        }
        return i2;
    }

    public static long zbr(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
    }

    private static void zbs(int i) throws zbuq {
        if (i >= zbb) {
            throw new zbuq("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
    }
}
