package com.sunia.HTREnginev2;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.alibaba.fastjson2.JSONB;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* loaded from: classes5.dex */
public final class zjf {

    /* renamed from: h */
    public static final String f91802h = "DvbParser";

    /* renamed from: i */
    public static final int f91803i = 16;

    /* renamed from: j */
    public static final int f91804j = 17;

    /* renamed from: k */
    public static final int f91805k = 18;

    /* renamed from: l */
    public static final int f91806l = 19;

    /* renamed from: m */
    public static final int f91807m = 20;

    /* renamed from: n */
    public static final int f91808n = 0;

    /* renamed from: o */
    public static final int f91809o = 2;

    /* renamed from: p */
    public static final int f91810p = 3;

    /* renamed from: q */
    public static final int f91811q = 0;

    /* renamed from: r */
    public static final int f91812r = 1;

    /* renamed from: s */
    public static final int f91813s = 16;

    /* renamed from: t */
    public static final int f91814t = 17;

    /* renamed from: u */
    public static final int f91815u = 18;

    /* renamed from: v */
    public static final int f91816v = 32;

    /* renamed from: w */
    public static final int f91817w = 33;

    /* renamed from: x */
    public static final int f91818x = 34;

    /* renamed from: y */
    public static final int f91819y = 240;

    /* renamed from: a */
    public final Paint f91821a;

    /* renamed from: b */
    public final Paint f91822b;

    /* renamed from: c */
    public final Canvas f91823c;

    /* renamed from: d */
    public final C14763b f91824d;

    /* renamed from: e */
    public final C14762a f91825e;

    /* renamed from: f */
    public final C14769h f91826f;

    /* renamed from: g */
    public Bitmap f91827g;

    /* renamed from: z */
    public static final byte[] f91820z = {0, 7, 8, 15};

    /* renamed from: A */
    public static final byte[] f91800A = {0, 119, -120, -1};

    /* renamed from: B */
    public static final byte[] f91801B = {0, 17, 34, TarConstants.LF_CHR, JSONB.Constants.BC_INT32_SHORT_ZERO, 85, 102, 119, -120, -103, JSONB.Constants.BC_TIMESTAMP_WITH_TIMEZONE, -69, -52, -35, -18, -1};

    /* renamed from: com.sunia.HTREnginev2.zjf$a */
    /* loaded from: classes5.dex */
    public static final class C14762a {

        /* renamed from: a */
        public final int f91828a;

        /* renamed from: b */
        public final int[] f91829b;

        /* renamed from: c */
        public final int[] f91830c;

        /* renamed from: d */
        public final int[] f91831d;

        public C14762a(int i, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f91828a = i;
            this.f91829b = iArr;
            this.f91830c = iArr2;
            this.f91831d = iArr3;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.zjf$b */
    /* loaded from: classes5.dex */
    public static final class C14763b {

        /* renamed from: a */
        public final int f91832a;

        /* renamed from: b */
        public final int f91833b;

        /* renamed from: c */
        public final int f91834c;

        /* renamed from: d */
        public final int f91835d;

        /* renamed from: e */
        public final int f91836e;

        /* renamed from: f */
        public final int f91837f;

        public C14763b(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f91832a = i;
            this.f91833b = i2;
            this.f91834c = i3;
            this.f91835d = i4;
            this.f91836e = i5;
            this.f91837f = i6;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.zjf$c */
    /* loaded from: classes5.dex */
    public static final class C14764c {

        /* renamed from: a */
        public final int f91838a;

        /* renamed from: b */
        public final boolean f91839b;

        /* renamed from: c */
        public final byte[] f91840c;

        /* renamed from: d */
        public final byte[] f91841d;

        public C14764c(int i, boolean z, byte[] bArr, byte[] bArr2) {
            this.f91838a = i;
            this.f91839b = z;
            this.f91840c = bArr;
            this.f91841d = bArr2;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.zjf$d */
    /* loaded from: classes5.dex */
    public static final class C14765d {

        /* renamed from: a */
        public final int f91842a;

        /* renamed from: b */
        public final int f91843b;

        /* renamed from: c */
        public final int f91844c;

        /* renamed from: d */
        public final SparseArray<C14766e> f91845d;

        public C14765d(int i, int i2, int i3, SparseArray<C14766e> sparseArray) {
            this.f91842a = i;
            this.f91843b = i2;
            this.f91844c = i3;
            this.f91845d = sparseArray;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.zjf$e */
    /* loaded from: classes5.dex */
    public static final class C14766e {

        /* renamed from: a */
        public final int f91846a;

        /* renamed from: b */
        public final int f91847b;

        public C14766e(int i, int i2) {
            this.f91846a = i;
            this.f91847b = i2;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.zjf$f */
    /* loaded from: classes5.dex */
    public static final class C14767f {

        /* renamed from: a */
        public final int f91848a;

        /* renamed from: b */
        public final boolean f91849b;

        /* renamed from: c */
        public final int f91850c;

        /* renamed from: d */
        public final int f91851d;

        /* renamed from: e */
        public final int f91852e;

        /* renamed from: f */
        public final int f91853f;

        /* renamed from: g */
        public final int f91854g;

        /* renamed from: h */
        public final int f91855h;

        /* renamed from: i */
        public final int f91856i;

        /* renamed from: j */
        public final int f91857j;

        /* renamed from: k */
        public final SparseArray<C14768g> f91858k;

        public C14767f(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, SparseArray<C14768g> sparseArray) {
            this.f91848a = i;
            this.f91849b = z;
            this.f91850c = i2;
            this.f91851d = i3;
            this.f91852e = i4;
            this.f91853f = i5;
            this.f91854g = i6;
            this.f91855h = i7;
            this.f91856i = i8;
            this.f91857j = i9;
            this.f91858k = sparseArray;
        }

        /* renamed from: a */
        public void m58694a(C14767f c14767f) {
            SparseArray<C14768g> sparseArray = c14767f.f91858k;
            for (int i = 0; i < sparseArray.size(); i++) {
                this.f91858k.put(sparseArray.keyAt(i), sparseArray.valueAt(i));
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.zjf$g */
    /* loaded from: classes5.dex */
    public static final class C14768g {

        /* renamed from: a */
        public final int f91859a;

        /* renamed from: b */
        public final int f91860b;

        /* renamed from: c */
        public final int f91861c;

        /* renamed from: d */
        public final int f91862d;

        /* renamed from: e */
        public final int f91863e;

        /* renamed from: f */
        public final int f91864f;

        public C14768g(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f91859a = i;
            this.f91860b = i2;
            this.f91861c = i3;
            this.f91862d = i4;
            this.f91863e = i5;
            this.f91864f = i6;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.zjf$h */
    /* loaded from: classes5.dex */
    public static final class C14769h {

        /* renamed from: a */
        public final int f91865a;

        /* renamed from: b */
        public final int f91866b;

        /* renamed from: c */
        public final SparseArray<C14767f> f91867c = new SparseArray<>();

        /* renamed from: d */
        public final SparseArray<C14762a> f91868d = new SparseArray<>();

        /* renamed from: e */
        public final SparseArray<C14764c> f91869e = new SparseArray<>();

        /* renamed from: f */
        public final SparseArray<C14762a> f91870f = new SparseArray<>();

        /* renamed from: g */
        public final SparseArray<C14764c> f91871g = new SparseArray<>();

        /* renamed from: h */
        @Nullable
        public C14763b f91872h;

        /* renamed from: i */
        @Nullable
        public C14765d f91873i;

        public C14769h(int i, int i2) {
            this.f91865a = i;
            this.f91866b = i2;
        }

        /* renamed from: a */
        public void m58695a() {
            this.f91867c.clear();
            this.f91868d.clear();
            this.f91869e.clear();
            this.f91870f.clear();
            this.f91871g.clear();
            this.f91872h = null;
            this.f91873i = null;
        }
    }

    public zjf(int i, int i2) {
        Paint paint = new Paint();
        this.f91821a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f91822b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f91823c = new Canvas();
        this.f91824d = new C14763b(AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 575, 0, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 0, 575);
        this.f91825e = new C14762a(0, m58677c(), m58678d(), m58679e());
        this.f91826f = new C14769h(i, i2);
    }

    /* renamed from: a */
    public static byte[] m58676a(int i, int i2, ParsableBitArray parsableBitArray) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) parsableBitArray.readBits(i2);
        }
        return bArr;
    }

    /* renamed from: c */
    public static int[] m58677c() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    /* renamed from: d */
    public static int[] m58678d() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < 16; i++) {
            if (i < 8) {
                iArr[i] = m58680f(255, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                iArr[i] = m58680f(255, (i & 1) != 0 ? 127 : 0, (i & 2) != 0 ? 127 : 0, (i & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    /* renamed from: e */
    public static int[] m58679e() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i = 0; i < 256; i++) {
            if (i < 8) {
                iArr[i] = m58680f(63, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) == 0 ? 0 : 255);
            } else {
                int i2 = i & 136;
                if (i2 == 0) {
                    iArr[i] = m58680f(255, ((i & 1) != 0 ? 85 : 0) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i2 == 8) {
                    iArr[i] = m58680f(127, ((i & 1) != 0 ? 85 : 0) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i2 == 128) {
                    iArr[i] = m58680f(255, ((i & 1) != 0 ? 43 : 0) + 127 + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + 127 + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + 127 + ((i & 64) == 0 ? 0 : 85));
                } else if (i2 == 136) {
                    iArr[i] = m58680f(255, ((i & 1) != 0 ? 43 : 0) + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + ((i & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    /* renamed from: f */
    public static int m58680f(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    /* renamed from: g */
    public static int m58681g(ParsableBitArray parsableBitArray, int[] iArr, @Nullable byte[] bArr, int i, int i2, @Nullable Paint paint, Canvas canvas) {
        boolean z;
        int i3;
        int readBits;
        int readBits2;
        int i4 = i;
        boolean z2 = false;
        while (true) {
            int readBits3 = parsableBitArray.readBits(2);
            if (readBits3 != 0) {
                z = z2;
                i3 = 1;
            } else {
                if (parsableBitArray.readBit()) {
                    readBits = parsableBitArray.readBits(3) + 3;
                    readBits2 = parsableBitArray.readBits(2);
                } else {
                    if (parsableBitArray.readBit()) {
                        z = z2;
                        i3 = 1;
                    } else {
                        int readBits4 = parsableBitArray.readBits(2);
                        if (readBits4 == 0) {
                            z = true;
                        } else if (readBits4 == 1) {
                            z = z2;
                            i3 = 2;
                        } else if (readBits4 == 2) {
                            readBits = parsableBitArray.readBits(4) + 12;
                            readBits2 = parsableBitArray.readBits(2);
                        } else if (readBits4 != 3) {
                            z = z2;
                        } else {
                            readBits = parsableBitArray.readBits(8) + 29;
                            readBits2 = parsableBitArray.readBits(2);
                        }
                        readBits3 = 0;
                        i3 = 0;
                    }
                    readBits3 = 0;
                }
                z = z2;
                i3 = readBits;
                readBits3 = readBits2;
            }
            if (i3 != 0 && paint != null) {
                if (bArr != null) {
                    readBits3 = bArr[readBits3];
                }
                paint.setColor(iArr[readBits3]);
                canvas.drawRect(i4, i2, i4 + i3, i2 + 1, paint);
            }
            i4 += i3;
            if (z) {
                return i4;
            }
            z2 = z;
        }
    }

    /* renamed from: h */
    public static int m58682h(ParsableBitArray parsableBitArray, int[] iArr, @Nullable byte[] bArr, int i, int i2, @Nullable Paint paint, Canvas canvas) {
        boolean z;
        int i3;
        int readBits;
        int readBits2;
        int i4 = i;
        boolean z2 = false;
        while (true) {
            int readBits3 = parsableBitArray.readBits(4);
            if (readBits3 != 0) {
                z = z2;
                i3 = 1;
            } else if (parsableBitArray.readBit()) {
                if (parsableBitArray.readBit()) {
                    int readBits4 = parsableBitArray.readBits(2);
                    if (readBits4 == 0) {
                        z = z2;
                        i3 = 1;
                    } else if (readBits4 == 1) {
                        z = z2;
                        i3 = 2;
                    } else if (readBits4 == 2) {
                        readBits = parsableBitArray.readBits(4) + 9;
                        readBits2 = parsableBitArray.readBits(4);
                    } else if (readBits4 != 3) {
                        z = z2;
                        readBits3 = 0;
                        i3 = 0;
                    } else {
                        readBits = parsableBitArray.readBits(8) + 25;
                        readBits2 = parsableBitArray.readBits(4);
                    }
                    readBits3 = 0;
                } else {
                    readBits = parsableBitArray.readBits(2) + 4;
                    readBits2 = parsableBitArray.readBits(4);
                }
                z = z2;
                i3 = readBits;
                readBits3 = readBits2;
            } else {
                int readBits5 = parsableBitArray.readBits(3);
                if (readBits5 != 0) {
                    z = z2;
                    i3 = readBits5 + 2;
                    readBits3 = 0;
                } else {
                    z = true;
                    readBits3 = 0;
                    i3 = 0;
                }
            }
            if (i3 != 0 && paint != null) {
                if (bArr != null) {
                    readBits3 = bArr[readBits3];
                }
                paint.setColor(iArr[readBits3]);
                canvas.drawRect(i4, i2, i4 + i3, i2 + 1, paint);
            }
            i4 += i3;
            if (z) {
                return i4;
            }
            z2 = z;
        }
    }

    /* renamed from: i */
    public static int m58683i(ParsableBitArray parsableBitArray, int[] iArr, @Nullable byte[] bArr, int i, int i2, @Nullable Paint paint, Canvas canvas) {
        boolean z;
        int readBits;
        int i3 = i;
        boolean z2 = false;
        while (true) {
            int readBits2 = parsableBitArray.readBits(8);
            if (readBits2 != 0) {
                z = z2;
                readBits = 1;
            } else if (parsableBitArray.readBit()) {
                z = z2;
                readBits = parsableBitArray.readBits(7);
                readBits2 = parsableBitArray.readBits(8);
            } else {
                int readBits3 = parsableBitArray.readBits(7);
                if (readBits3 != 0) {
                    z = z2;
                    readBits = readBits3;
                    readBits2 = 0;
                } else {
                    z = true;
                    readBits2 = 0;
                    readBits = 0;
                }
            }
            if (readBits != 0 && paint != null) {
                if (bArr != null) {
                    readBits2 = bArr[readBits2];
                }
                paint.setColor(iArr[readBits2]);
                canvas.drawRect(i3, i2, i3 + readBits, i2 + 1, paint);
            }
            i3 += readBits;
            if (z) {
                return i3;
            }
            z2 = z;
        }
    }

    /* renamed from: j */
    public static void m58684j(byte[] bArr, int[] iArr, int i, int i2, int i3, @Nullable Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        int i4 = i2;
        int i5 = i3;
        byte[] bArr5 = null;
        byte[] bArr6 = null;
        byte[] bArr7 = null;
        while (parsableBitArray.bitsLeft() != 0) {
            int readBits = parsableBitArray.readBits(8);
            if (readBits != 240) {
                switch (readBits) {
                    case 16:
                        if (i != 3) {
                            if (i != 2) {
                                bArr2 = null;
                                i4 = m58681g(parsableBitArray, iArr, bArr2, i4, i5, paint, canvas);
                                parsableBitArray.byteAlign();
                                break;
                            } else {
                                bArr3 = bArr7 == null ? f91820z : bArr7;
                            }
                        } else {
                            bArr3 = bArr5 == null ? f91800A : bArr5;
                        }
                        bArr2 = bArr3;
                        i4 = m58681g(parsableBitArray, iArr, bArr2, i4, i5, paint, canvas);
                        parsableBitArray.byteAlign();
                    case 17:
                        if (i == 3) {
                            bArr4 = bArr6 == null ? f91801B : bArr6;
                        } else {
                            bArr4 = null;
                        }
                        i4 = m58682h(parsableBitArray, iArr, bArr4, i4, i5, paint, canvas);
                        parsableBitArray.byteAlign();
                        break;
                    case 18:
                        i4 = m58683i(parsableBitArray, iArr, null, i4, i5, paint, canvas);
                        break;
                    default:
                        switch (readBits) {
                            case 32:
                                bArr7 = m58676a(4, 4, parsableBitArray);
                                break;
                            case 33:
                                bArr5 = m58676a(4, 8, parsableBitArray);
                                break;
                            case 34:
                                bArr6 = m58676a(16, 8, parsableBitArray);
                                break;
                        }
                }
            } else {
                i5 += 2;
                i4 = i2;
            }
        }
    }

    /* renamed from: k */
    public static void m58685k(C14764c c14764c, C14762a c14762a, int i, int i2, int i3, @Nullable Paint paint, Canvas canvas) {
        int[] iArr = i == 3 ? c14762a.f91831d : i == 2 ? c14762a.f91830c : c14762a.f91829b;
        m58684j(c14764c.f91840c, iArr, i, i2, i3, paint, canvas);
        m58684j(c14764c.f91841d, iArr, i, i2, i3 + 1, paint, canvas);
    }

    /* renamed from: l */
    public static C14762a m58686l(ParsableBitArray parsableBitArray, int i) {
        int readBits;
        int i2;
        int readBits2;
        int i3;
        int i4;
        int i5 = 8;
        int readBits3 = parsableBitArray.readBits(8);
        parsableBitArray.skipBits(8);
        int i6 = 2;
        int i7 = i - 2;
        int[] m58677c = m58677c();
        int[] m58678d = m58678d();
        int[] m58679e = m58679e();
        while (i7 > 0) {
            int readBits4 = parsableBitArray.readBits(i5);
            int readBits5 = parsableBitArray.readBits(i5);
            int i8 = i7 - 2;
            int[] iArr = (readBits5 & 128) != 0 ? m58677c : (readBits5 & 64) != 0 ? m58678d : m58679e;
            if ((readBits5 & 1) != 0) {
                i3 = parsableBitArray.readBits(i5);
                i4 = parsableBitArray.readBits(i5);
                readBits = parsableBitArray.readBits(i5);
                readBits2 = parsableBitArray.readBits(i5);
                i2 = i8 - 4;
            } else {
                int readBits6 = parsableBitArray.readBits(6) << i6;
                int readBits7 = parsableBitArray.readBits(4) << 4;
                readBits = parsableBitArray.readBits(4) << 4;
                i2 = i8 - 2;
                readBits2 = parsableBitArray.readBits(i6) << 6;
                i3 = readBits6;
                i4 = readBits7;
            }
            if (i3 == 0) {
                readBits2 = 255;
                i4 = 0;
                readBits = 0;
            }
            double d = i3;
            double d2 = i4 - 128;
            double d3 = readBits - 128;
            iArr[readBits4] = m58680f((byte) (255 - (readBits2 & 255)), Util.constrainValue((int) (d + (1.402d * d2)), 0, 255), Util.constrainValue((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 0, 255), Util.constrainValue((int) (d + (d3 * 1.772d)), 0, 255));
            i7 = i2;
            readBits3 = readBits3;
            i5 = 8;
            i6 = 2;
        }
        return new C14762a(readBits3, m58677c, m58678d, m58679e);
    }

    /* renamed from: m */
    public static C14763b m58687m(ParsableBitArray parsableBitArray) {
        int i;
        int i2;
        int i3;
        int i4;
        parsableBitArray.skipBits(4);
        boolean readBit = parsableBitArray.readBit();
        parsableBitArray.skipBits(3);
        int readBits = parsableBitArray.readBits(16);
        int readBits2 = parsableBitArray.readBits(16);
        if (readBit) {
            int readBits3 = parsableBitArray.readBits(16);
            int readBits4 = parsableBitArray.readBits(16);
            int readBits5 = parsableBitArray.readBits(16);
            i4 = parsableBitArray.readBits(16);
            i3 = readBits4;
            i2 = readBits5;
            i = readBits3;
        } else {
            i = 0;
            i2 = 0;
            i3 = readBits;
            i4 = readBits2;
        }
        return new C14763b(readBits, readBits2, i, i3, i2, i4);
    }

    /* renamed from: n */
    public static C14764c m58688n(ParsableBitArray parsableBitArray) {
        byte[] bArr;
        int readBits = parsableBitArray.readBits(16);
        parsableBitArray.skipBits(4);
        int readBits2 = parsableBitArray.readBits(2);
        boolean readBit = parsableBitArray.readBit();
        parsableBitArray.skipBits(1);
        byte[] bArr2 = Util.EMPTY_BYTE_ARRAY;
        if (readBits2 == 1) {
            parsableBitArray.skipBits(parsableBitArray.readBits(8) * 16);
        } else if (readBits2 == 0) {
            int readBits3 = parsableBitArray.readBits(16);
            int readBits4 = parsableBitArray.readBits(16);
            if (readBits3 > 0) {
                bArr2 = new byte[readBits3];
                parsableBitArray.readBytes(bArr2, 0, readBits3);
            }
            if (readBits4 > 0) {
                bArr = new byte[readBits4];
                parsableBitArray.readBytes(bArr, 0, readBits4);
                return new C14764c(readBits, readBit, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new C14764c(readBits, readBit, bArr2, bArr);
    }

    /* renamed from: o */
    public static C14765d m58689o(ParsableBitArray parsableBitArray, int i) {
        int readBits = parsableBitArray.readBits(8);
        int readBits2 = parsableBitArray.readBits(4);
        int readBits3 = parsableBitArray.readBits(2);
        parsableBitArray.skipBits(2);
        int i2 = i - 2;
        SparseArray sparseArray = new SparseArray();
        while (i2 > 0) {
            int readBits4 = parsableBitArray.readBits(8);
            parsableBitArray.skipBits(8);
            i2 -= 6;
            sparseArray.put(readBits4, new C14766e(parsableBitArray.readBits(16), parsableBitArray.readBits(16)));
        }
        return new C14765d(readBits, readBits2, readBits3, sparseArray);
    }

    /* renamed from: p */
    public static C14767f m58690p(ParsableBitArray parsableBitArray, int i) {
        int readBits;
        int readBits2;
        int readBits3 = parsableBitArray.readBits(8);
        parsableBitArray.skipBits(4);
        boolean readBit = parsableBitArray.readBit();
        parsableBitArray.skipBits(3);
        int i2 = 16;
        int readBits4 = parsableBitArray.readBits(16);
        int readBits5 = parsableBitArray.readBits(16);
        int readBits6 = parsableBitArray.readBits(3);
        int readBits7 = parsableBitArray.readBits(3);
        int i3 = 2;
        parsableBitArray.skipBits(2);
        int readBits8 = parsableBitArray.readBits(8);
        int readBits9 = parsableBitArray.readBits(8);
        int readBits10 = parsableBitArray.readBits(4);
        int readBits11 = parsableBitArray.readBits(2);
        parsableBitArray.skipBits(2);
        int i4 = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (i4 > 0) {
            int readBits12 = parsableBitArray.readBits(i2);
            int readBits13 = parsableBitArray.readBits(i3);
            int readBits14 = parsableBitArray.readBits(i3);
            int readBits15 = parsableBitArray.readBits(12);
            int i5 = readBits11;
            parsableBitArray.skipBits(4);
            int readBits16 = parsableBitArray.readBits(12);
            i4 -= 6;
            if (readBits13 == 1 || readBits13 == 2) {
                i4 -= 2;
                readBits = parsableBitArray.readBits(8);
                readBits2 = parsableBitArray.readBits(8);
            } else {
                readBits = 0;
                readBits2 = 0;
            }
            sparseArray.put(readBits12, new C14768g(readBits13, readBits14, readBits15, readBits16, readBits, readBits2));
            readBits11 = i5;
            i3 = 2;
            i2 = 16;
        }
        return new C14767f(readBits3, readBit, readBits4, readBits5, readBits6, readBits7, readBits8, readBits9, readBits10, readBits11, sparseArray);
    }

    /* renamed from: q */
    public static void m58691q(ParsableBitArray parsableBitArray, C14769h c14769h) {
        C14767f c14767f;
        int readBits = parsableBitArray.readBits(8);
        int readBits2 = parsableBitArray.readBits(16);
        int readBits3 = parsableBitArray.readBits(16);
        int bytePosition = parsableBitArray.getBytePosition() + readBits3;
        if (readBits3 * 8 > parsableBitArray.bitsLeft()) {
            Log.m21493w(f91802h, "Data field length exceeds limit");
            parsableBitArray.skipBits(parsableBitArray.bitsLeft());
            return;
        }
        switch (readBits) {
            case 16:
                if (readBits2 == c14769h.f91865a) {
                    C14765d c14765d = c14769h.f91873i;
                    C14765d m58689o = m58689o(parsableBitArray, readBits3);
                    if (m58689o.f91844c == 0) {
                        if (c14765d != null && c14765d.f91843b != m58689o.f91843b) {
                            c14769h.f91873i = m58689o;
                            break;
                        }
                    } else {
                        c14769h.f91873i = m58689o;
                        c14769h.f91867c.clear();
                        c14769h.f91868d.clear();
                        c14769h.f91869e.clear();
                        break;
                    }
                }
                break;
            case 17:
                C14765d c14765d2 = c14769h.f91873i;
                if (readBits2 == c14769h.f91865a && c14765d2 != null) {
                    C14767f m58690p = m58690p(parsableBitArray, readBits3);
                    if (c14765d2.f91844c == 0 && (c14767f = c14769h.f91867c.get(m58690p.f91848a)) != null) {
                        m58690p.m58694a(c14767f);
                    }
                    c14769h.f91867c.put(m58690p.f91848a, m58690p);
                    break;
                }
                break;
            case 18:
                if (readBits2 != c14769h.f91865a) {
                    if (readBits2 == c14769h.f91866b) {
                        C14762a m58686l = m58686l(parsableBitArray, readBits3);
                        c14769h.f91870f.put(m58686l.f91828a, m58686l);
                        break;
                    }
                } else {
                    C14762a m58686l2 = m58686l(parsableBitArray, readBits3);
                    c14769h.f91868d.put(m58686l2.f91828a, m58686l2);
                    break;
                }
                break;
            case 19:
                if (readBits2 != c14769h.f91865a) {
                    if (readBits2 == c14769h.f91866b) {
                        C14764c m58688n = m58688n(parsableBitArray);
                        c14769h.f91871g.put(m58688n.f91838a, m58688n);
                        break;
                    }
                } else {
                    C14764c m58688n2 = m58688n(parsableBitArray);
                    c14769h.f91869e.put(m58688n2.f91838a, m58688n2);
                    break;
                }
                break;
            case 20:
                if (readBits2 == c14769h.f91865a) {
                    c14769h.f91872h = m58687m(parsableBitArray);
                    break;
                }
                break;
        }
        parsableBitArray.skipBytes(bytePosition - parsableBitArray.getBytePosition());
    }

    /* renamed from: b */
    public List<Cue> m58692b(byte[] bArr, int i) {
        int i2;
        SparseArray<C14768g> sparseArray;
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr, i);
        while (parsableBitArray.bitsLeft() >= 48 && parsableBitArray.readBits(8) == 15) {
            m58691q(parsableBitArray, this.f91826f);
        }
        C14769h c14769h = this.f91826f;
        C14765d c14765d = c14769h.f91873i;
        if (c14765d == null) {
            return Collections.emptyList();
        }
        C14763b c14763b = c14769h.f91872h;
        if (c14763b == null) {
            c14763b = this.f91824d;
        }
        Bitmap bitmap = this.f91827g;
        if (bitmap == null || c14763b.f91832a + 1 != bitmap.getWidth() || c14763b.f91833b + 1 != this.f91827g.getHeight()) {
            Bitmap createBitmap = Bitmap.createBitmap(c14763b.f91832a + 1, c14763b.f91833b + 1, Bitmap.Config.ARGB_8888);
            this.f91827g = createBitmap;
            this.f91823c.setBitmap(createBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<C14766e> sparseArray2 = c14765d.f91845d;
        for (int i3 = 0; i3 < sparseArray2.size(); i3++) {
            this.f91823c.save();
            C14766e valueAt = sparseArray2.valueAt(i3);
            C14767f c14767f = this.f91826f.f91867c.get(sparseArray2.keyAt(i3));
            int i4 = valueAt.f91846a + c14763b.f91834c;
            int i5 = valueAt.f91847b + c14763b.f91836e;
            this.f91823c.clipRect(i4, i5, Math.min(c14767f.f91850c + i4, c14763b.f91835d), Math.min(c14767f.f91851d + i5, c14763b.f91837f));
            C14762a c14762a = this.f91826f.f91868d.get(c14767f.f91854g);
            if (c14762a == null && (c14762a = this.f91826f.f91870f.get(c14767f.f91854g)) == null) {
                c14762a = this.f91825e;
            }
            SparseArray<C14768g> sparseArray3 = c14767f.f91858k;
            int i6 = 0;
            while (i6 < sparseArray3.size()) {
                int keyAt = sparseArray3.keyAt(i6);
                C14768g valueAt2 = sparseArray3.valueAt(i6);
                C14764c c14764c = this.f91826f.f91869e.get(keyAt);
                C14764c c14764c2 = c14764c == null ? this.f91826f.f91871g.get(keyAt) : c14764c;
                if (c14764c2 != null) {
                    i2 = i6;
                    sparseArray = sparseArray3;
                    m58685k(c14764c2, c14762a, c14767f.f91853f, valueAt2.f91861c + i4, i5 + valueAt2.f91862d, c14764c2.f91839b ? null : this.f91821a, this.f91823c);
                } else {
                    i2 = i6;
                    sparseArray = sparseArray3;
                }
                i6 = i2 + 1;
                sparseArray3 = sparseArray;
            }
            if (c14767f.f91849b) {
                int i7 = c14767f.f91853f;
                this.f91822b.setColor(i7 == 3 ? c14762a.f91831d[c14767f.f91855h] : i7 == 2 ? c14762a.f91830c[c14767f.f91856i] : c14762a.f91829b[c14767f.f91857j]);
                this.f91823c.drawRect(i4, i5, c14767f.f91850c + i4, c14767f.f91851d + i5, this.f91822b);
            }
            arrayList.add(new Cue.Builder().setBitmap(Bitmap.createBitmap(this.f91827g, i4, i5, c14767f.f91850c, c14767f.f91851d)).setPosition(i4 / c14763b.f91832a).setPositionAnchor(0).setLine(i5 / c14763b.f91833b, 0).setLineAnchor(0).setSize(c14767f.f91850c / c14763b.f91832a).setBitmapHeight(c14767f.f91851d / c14763b.f91833b).build());
            this.f91823c.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f91823c.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: r */
    public void m58693r() {
        this.f91826f.m58695a();
    }
}
