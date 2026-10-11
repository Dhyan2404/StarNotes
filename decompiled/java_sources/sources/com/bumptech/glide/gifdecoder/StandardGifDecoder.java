package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.sunia.HTREnginev2.u2h;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class StandardGifDecoder implements GifDecoder {

    /* renamed from: A */
    public static final int f14431A = 255;

    /* renamed from: B */
    @ColorInt
    public static final int f14432B = 0;

    /* renamed from: v */
    public static final String f14433v = "StandardGifDecoder";

    /* renamed from: w */
    public static final int f14434w = 4096;

    /* renamed from: x */
    public static final int f14435x = -1;

    /* renamed from: y */
    public static final int f14436y = -1;

    /* renamed from: z */
    public static final int f14437z = 4;

    /* renamed from: a */
    @ColorInt
    public int[] f14438a;

    /* renamed from: b */
    @ColorInt
    public final int[] f14439b;

    /* renamed from: c */
    public final GifDecoder.BitmapProvider f14440c;

    /* renamed from: d */
    public ByteBuffer f14441d;

    /* renamed from: e */
    public byte[] f14442e;

    /* renamed from: f */
    public GifHeaderParser f14443f;

    /* renamed from: g */
    public short[] f14444g;

    /* renamed from: h */
    public byte[] f14445h;

    /* renamed from: i */
    public byte[] f14446i;

    /* renamed from: j */
    public byte[] f14447j;

    /* renamed from: k */
    @ColorInt
    public int[] f14448k;

    /* renamed from: l */
    public int f14449l;

    /* renamed from: m */
    public GifHeader f14450m;

    /* renamed from: n */
    public Bitmap f14451n;

    /* renamed from: o */
    public boolean f14452o;

    /* renamed from: p */
    public int f14453p;

    /* renamed from: q */
    public int f14454q;

    /* renamed from: r */
    public int f14455r;

    /* renamed from: s */
    public int f14456s;

    /* renamed from: t */
    @Nullable
    public Boolean f14457t;

    /* renamed from: u */
    @NonNull
    public Bitmap.Config f14458u;

    public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer) {
        this(bitmapProvider, gifHeader, byteBuffer, 1);
    }

    @ColorInt
    /* renamed from: a */
    public final int m8658a(int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = i; i9 < this.f14454q + i; i9++) {
            byte[] bArr = this.f14447j;
            if (i9 >= bArr.length || i9 >= i2) {
                break;
            }
            int i10 = this.f14438a[bArr[i9] & 255];
            if (i10 != 0) {
                i4 += (i10 >> 24) & 255;
                i5 += (i10 >> 16) & 255;
                i6 += (i10 >> 8) & 255;
                i7 += i10 & 255;
                i8++;
            }
        }
        int i11 = i + i3;
        for (int i12 = i11; i12 < this.f14454q + i11; i12++) {
            byte[] bArr2 = this.f14447j;
            if (i12 >= bArr2.length || i12 >= i2) {
                break;
            }
            int i13 = this.f14438a[bArr2[i12] & 255];
            if (i13 != 0) {
                i4 += (i13 >> 24) & 255;
                i5 += (i13 >> 16) & 255;
                i6 += (i13 >> 8) & 255;
                i7 += i13 & 255;
                i8++;
            }
        }
        if (i8 == 0) {
            return 0;
        }
        return ((i4 / i8) << 24) | ((i5 / i8) << 16) | ((i6 / i8) << 8) | (i7 / i8);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void advance() {
        this.f14449l = (this.f14449l + 1) % this.f14450m.f14396c;
    }

    /* renamed from: b */
    public final void m8659b(u2h u2hVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr = this.f14448k;
        int i6 = u2hVar.f86042d;
        int i7 = this.f14454q;
        int i8 = i6 / i7;
        int i9 = u2hVar.f86040b / i7;
        int i10 = u2hVar.f86041c / i7;
        int i11 = u2hVar.f86039a / i7;
        boolean z = this.f14449l == 0;
        int i12 = this.f14456s;
        int i13 = this.f14455r;
        byte[] bArr = this.f14447j;
        int[] iArr2 = this.f14438a;
        Boolean bool = this.f14457t;
        int i14 = 8;
        int i15 = 0;
        int i16 = 0;
        int i17 = 1;
        while (i16 < i8) {
            Boolean bool2 = bool;
            if (u2hVar.f86043e) {
                if (i15 >= i8) {
                    int i18 = i17 + 1;
                    i = i8;
                    if (i18 == 2) {
                        i15 = 4;
                    } else if (i18 == 3) {
                        i14 = 4;
                        i17 = i18;
                        i15 = 2;
                    } else if (i18 == 4) {
                        i17 = i18;
                        i15 = 1;
                        i14 = 2;
                    }
                    i17 = i18;
                } else {
                    i = i8;
                }
                i2 = i15 + i14;
            } else {
                i = i8;
                i2 = i15;
                i15 = i16;
            }
            int i19 = i15 + i9;
            boolean z2 = i7 == 1;
            if (i19 < i13) {
                int i20 = i19 * i12;
                int i21 = i20 + i11;
                int i22 = i21 + i10;
                int i23 = i20 + i12;
                if (i23 < i22) {
                    i22 = i23;
                }
                i3 = i2;
                int i24 = i16 * i7 * u2hVar.f86041c;
                if (z2) {
                    int i25 = i21;
                    while (i25 < i22) {
                        int i26 = i9;
                        int i27 = iArr2[bArr[i24] & 255];
                        if (i27 != 0) {
                            iArr[i25] = i27;
                        } else if (z && bool2 == null) {
                            bool2 = Boolean.TRUE;
                        }
                        i24 += i7;
                        i25++;
                        i9 = i26;
                    }
                } else {
                    i5 = i9;
                    int i28 = ((i22 - i21) * i7) + i24;
                    int i29 = i21;
                    while (true) {
                        i4 = i10;
                        if (i29 < i22) {
                            int m8658a = m8658a(i24, i28, u2hVar.f86041c);
                            if (m8658a != 0) {
                                iArr[i29] = m8658a;
                            } else if (z && bool2 == null) {
                                bool2 = Boolean.TRUE;
                            }
                            i24 += i7;
                            i29++;
                            i10 = i4;
                        }
                    }
                    bool = bool2;
                    i16++;
                    i9 = i5;
                    i8 = i;
                    i10 = i4;
                    i15 = i3;
                }
            } else {
                i3 = i2;
            }
            i5 = i9;
            i4 = i10;
            bool = bool2;
            i16++;
            i9 = i5;
            i8 = i;
            i10 = i4;
            i15 = i3;
        }
        Boolean bool3 = bool;
        if (this.f14457t == null) {
            this.f14457t = Boolean.valueOf(bool3 == null ? false : bool3.booleanValue());
        }
    }

    /* renamed from: c */
    public final void m8660c(u2h u2hVar) {
        u2h u2hVar2 = u2hVar;
        int[] iArr = this.f14448k;
        int i = u2hVar2.f86042d;
        int i2 = u2hVar2.f86040b;
        int i3 = u2hVar2.f86041c;
        int i4 = u2hVar2.f86039a;
        boolean z = this.f14449l == 0;
        int i5 = this.f14456s;
        byte[] bArr = this.f14447j;
        int[] iArr2 = this.f14438a;
        int i6 = 0;
        byte b = -1;
        while (i6 < i) {
            int i7 = (i6 + i2) * i5;
            int i8 = i7 + i4;
            int i9 = i8 + i3;
            int i10 = i7 + i5;
            if (i10 < i9) {
                i9 = i10;
            }
            int i11 = u2hVar2.f86041c * i6;
            int i12 = i8;
            while (i12 < i9) {
                byte b2 = bArr[i11];
                int i13 = i;
                int i14 = b2 & 255;
                if (i14 != b) {
                    int i15 = iArr2[i14];
                    if (i15 != 0) {
                        iArr[i12] = i15;
                    } else {
                        b = b2;
                    }
                }
                i11++;
                i12++;
                i = i13;
            }
            i6++;
            u2hVar2 = u2hVar;
        }
        Boolean bool = this.f14457t;
        this.f14457t = Boolean.valueOf((bool != null && bool.booleanValue()) || (this.f14457t == null && z && b != -1));
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void clear() {
        this.f14450m = null;
        byte[] bArr = this.f14447j;
        if (bArr != null) {
            this.f14440c.release(bArr);
        }
        int[] iArr = this.f14448k;
        if (iArr != null) {
            this.f14440c.release(iArr);
        }
        Bitmap bitmap = this.f14451n;
        if (bitmap != null) {
            this.f14440c.release(bitmap);
        }
        this.f14451n = null;
        this.f14441d = null;
        this.f14457t = null;
        byte[] bArr2 = this.f14442e;
        if (bArr2 != null) {
            this.f14440c.release(bArr2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v15, types: [short] */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* renamed from: d */
    public final void m8661d(u2h u2hVar) {
        int i;
        int i2;
        short s;
        StandardGifDecoder standardGifDecoder = this;
        if (u2hVar != null) {
            standardGifDecoder.f14441d.position(u2hVar.f86048j);
        }
        if (u2hVar == null) {
            GifHeader gifHeader = standardGifDecoder.f14450m;
            i = gifHeader.f14399f;
            i2 = gifHeader.f14400g;
        } else {
            i = u2hVar.f86041c;
            i2 = u2hVar.f86042d;
        }
        int i3 = i * i2;
        byte[] bArr = standardGifDecoder.f14447j;
        if (bArr == null || bArr.length < i3) {
            standardGifDecoder.f14447j = standardGifDecoder.f14440c.obtainByteArray(i3);
        }
        byte[] bArr2 = standardGifDecoder.f14447j;
        if (standardGifDecoder.f14444g == null) {
            standardGifDecoder.f14444g = new short[4096];
        }
        short[] sArr = standardGifDecoder.f14444g;
        if (standardGifDecoder.f14445h == null) {
            standardGifDecoder.f14445h = new byte[4096];
        }
        byte[] bArr3 = standardGifDecoder.f14445h;
        if (standardGifDecoder.f14446i == null) {
            standardGifDecoder.f14446i = new byte[4097];
        }
        byte[] bArr4 = standardGifDecoder.f14446i;
        int m8665h = m8665h();
        int i4 = 1 << m8665h;
        int i5 = i4 + 1;
        int i6 = i4 + 2;
        int i7 = m8665h + 1;
        int i8 = (1 << i7) - 1;
        int i9 = 0;
        for (int i10 = 0; i10 < i4; i10++) {
            sArr[i10] = 0;
            bArr3[i10] = (byte) i10;
        }
        byte[] bArr5 = standardGifDecoder.f14442e;
        int i11 = i7;
        int i12 = i6;
        int i13 = i8;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = -1;
        while (true) {
            if (i9 >= i3) {
                break;
            }
            if (i14 == 0) {
                i14 = m8664g();
                if (i14 <= 0) {
                    standardGifDecoder.f14453p = 3;
                    break;
                }
                i15 = 0;
            }
            i17 += (bArr5[i15] & 255) << i16;
            i15++;
            i14--;
            int i22 = i16 + 8;
            int i23 = i12;
            int i24 = i11;
            int i25 = i21;
            int i26 = i7;
            int i27 = i19;
            while (true) {
                if (i22 < i24) {
                    i21 = i25;
                    i12 = i23;
                    i16 = i22;
                    standardGifDecoder = this;
                    i19 = i27;
                    i7 = i26;
                    i11 = i24;
                    break;
                }
                int i28 = i6;
                int i29 = i17 & i13;
                i17 >>= i24;
                i22 -= i24;
                if (i29 == i4) {
                    i13 = i8;
                    i24 = i26;
                    i23 = i28;
                    i6 = i23;
                    i25 = -1;
                } else {
                    if (i29 == i5) {
                        i16 = i22;
                        i19 = i27;
                        i12 = i23;
                        i7 = i26;
                        i6 = i28;
                        i21 = i25;
                        i11 = i24;
                        standardGifDecoder = this;
                        break;
                    }
                    if (i25 == -1) {
                        bArr2[i18] = bArr3[i29];
                        i18++;
                        i9++;
                        i25 = i29;
                        i27 = i25;
                        i6 = i28;
                        i22 = i22;
                    } else {
                        if (i29 >= i23) {
                            bArr4[i20] = (byte) i27;
                            i20++;
                            s = i25;
                        } else {
                            s = i29;
                        }
                        while (s >= i4) {
                            bArr4[i20] = bArr3[s];
                            i20++;
                            s = sArr[s];
                        }
                        i27 = bArr3[s] & 255;
                        byte b = (byte) i27;
                        bArr2[i18] = b;
                        while (true) {
                            i18++;
                            i9++;
                            if (i20 <= 0) {
                                break;
                            }
                            i20--;
                            bArr2[i18] = bArr4[i20];
                        }
                        byte[] bArr6 = bArr4;
                        if (i23 < 4096) {
                            sArr[i23] = (short) i25;
                            bArr3[i23] = b;
                            i23++;
                            if ((i23 & i13) == 0 && i23 < 4096) {
                                i24++;
                                i13 += i23;
                            }
                        }
                        i25 = i29;
                        i6 = i28;
                        i22 = i22;
                        bArr4 = bArr6;
                    }
                }
            }
        }
        Arrays.fill(bArr2, i18, i3, (byte) 0);
    }

    @NonNull
    /* renamed from: e */
    public final GifHeaderParser m8662e() {
        if (this.f14443f == null) {
            this.f14443f = new GifHeaderParser();
        }
        return this.f14443f;
    }

    /* renamed from: f */
    public final Bitmap m8663f() {
        Boolean bool = this.f14457t;
        Bitmap obtain = this.f14440c.obtain(this.f14456s, this.f14455r, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f14458u);
        obtain.setHasAlpha(true);
        return obtain;
    }

    /* renamed from: g */
    public final int m8664g() {
        int m8665h = m8665h();
        if (m8665h <= 0) {
            return m8665h;
        }
        ByteBuffer byteBuffer = this.f14441d;
        byteBuffer.get(this.f14442e, 0, Math.min(m8665h, byteBuffer.remaining()));
        return m8665h;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getByteSize() {
        return this.f14441d.limit() + this.f14447j.length + (this.f14448k.length * 4);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getCurrentFrameIndex() {
        return this.f14449l;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @NonNull
    public ByteBuffer getData() {
        return this.f14441d;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getDelay(int i) {
        if (i >= 0) {
            GifHeader gifHeader = this.f14450m;
            if (i < gifHeader.f14396c) {
                return gifHeader.f14398e.get(i).f86047i;
            }
        }
        return -1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getFrameCount() {
        return this.f14450m.f14396c;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getHeight() {
        return this.f14450m.f14400g;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @Deprecated
    public int getLoopCount() {
        int i = this.f14450m.f14406m;
        if (i == -1) {
            return 1;
        }
        return i;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getNetscapeLoopCount() {
        return this.f14450m.f14406m;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getNextDelay() {
        int i;
        if (this.f14450m.f14396c <= 0 || (i = this.f14449l) < 0) {
            return 0;
        }
        return getDelay(i);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @Nullable
    public synchronized Bitmap getNextFrame() {
        if (this.f14450m.f14396c <= 0 || this.f14449l < 0) {
            String str = f14433v;
            if (Log.isLoggable(str, 3)) {
                Log.d(str, "Unable to decode frame, frameCount=" + this.f14450m.f14396c + ", framePointer=" + this.f14449l);
            }
            this.f14453p = 1;
        }
        int i = this.f14453p;
        if (i != 1 && i != 2) {
            this.f14453p = 0;
            if (this.f14442e == null) {
                this.f14442e = this.f14440c.obtainByteArray(255);
            }
            u2h u2hVar = this.f14450m.f14398e.get(this.f14449l);
            int i2 = this.f14449l - 1;
            u2h u2hVar2 = i2 >= 0 ? this.f14450m.f14398e.get(i2) : null;
            int[] iArr = u2hVar.f86049k;
            if (iArr == null) {
                iArr = this.f14450m.f14394a;
            }
            this.f14438a = iArr;
            if (iArr == null) {
                String str2 = f14433v;
                if (Log.isLoggable(str2, 3)) {
                    Log.d(str2, "No valid color table found for frame #" + this.f14449l);
                }
                this.f14453p = 1;
                return null;
            }
            if (u2hVar.f86044f) {
                System.arraycopy(iArr, 0, this.f14439b, 0, iArr.length);
                int[] iArr2 = this.f14439b;
                this.f14438a = iArr2;
                iArr2[u2hVar.f86046h] = 0;
                if (u2hVar.f86045g == 2 && this.f14449l == 0) {
                    this.f14457t = Boolean.TRUE;
                }
            }
            return m8666i(u2hVar, u2hVar2);
        }
        String str3 = f14433v;
        if (Log.isLoggable(str3, 3)) {
            Log.d(str3, "Unable to decode frame, status=" + this.f14453p);
        }
        return null;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getStatus() {
        return this.f14453p;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getTotalIterationCount() {
        int i = this.f14450m.f14406m;
        if (i == -1) {
            return 1;
        }
        if (i == 0) {
            return 0;
        }
        return i + 1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getWidth() {
        return this.f14450m.f14399f;
    }

    /* renamed from: h */
    public final int m8665h() {
        return this.f14441d.get() & 255;
    }

    /* renamed from: i */
    public final Bitmap m8666i(u2h u2hVar, u2h u2hVar2) {
        int i;
        int i2;
        Bitmap bitmap;
        int[] iArr = this.f14448k;
        int i3 = 0;
        if (u2hVar2 == null) {
            Bitmap bitmap2 = this.f14451n;
            if (bitmap2 != null) {
                this.f14440c.release(bitmap2);
            }
            this.f14451n = null;
            Arrays.fill(iArr, 0);
        }
        if (u2hVar2 != null && u2hVar2.f86045g == 3 && this.f14451n == null) {
            Arrays.fill(iArr, 0);
        }
        if (u2hVar2 != null && (i2 = u2hVar2.f86045g) > 0) {
            if (i2 == 2) {
                if (!u2hVar.f86044f) {
                    GifHeader gifHeader = this.f14450m;
                    int i4 = gifHeader.f14405l;
                    if (u2hVar.f86049k == null || gifHeader.f14403j != u2hVar.f86046h) {
                        i3 = i4;
                    }
                }
                int i5 = u2hVar2.f86042d;
                int i6 = this.f14454q;
                int i7 = i5 / i6;
                int i8 = u2hVar2.f86040b / i6;
                int i9 = u2hVar2.f86041c / i6;
                int i10 = u2hVar2.f86039a / i6;
                int i11 = this.f14456s;
                int i12 = (i8 * i11) + i10;
                int i13 = (i7 * i11) + i12;
                while (i12 < i13) {
                    int i14 = i12 + i9;
                    for (int i15 = i12; i15 < i14; i15++) {
                        iArr[i15] = i3;
                    }
                    i12 += this.f14456s;
                }
            } else if (i2 == 3 && (bitmap = this.f14451n) != null) {
                int i16 = this.f14456s;
                bitmap.getPixels(iArr, 0, i16, 0, 0, i16, this.f14455r);
            }
        }
        m8661d(u2hVar);
        if (u2hVar.f86043e || this.f14454q != 1) {
            m8659b(u2hVar);
        } else {
            m8660c(u2hVar);
        }
        if (this.f14452o && ((i = u2hVar.f86045g) == 0 || i == 1)) {
            if (this.f14451n == null) {
                this.f14451n = m8663f();
            }
            Bitmap bitmap3 = this.f14451n;
            int i17 = this.f14456s;
            bitmap3.setPixels(iArr, 0, i17, 0, 0, i17, this.f14455r);
        }
        Bitmap m8663f = m8663f();
        int i18 = this.f14456s;
        m8663f.setPixels(iArr, 0, i18, 0, 0, i18, this.f14455r);
        return m8663f;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int read(@Nullable InputStream inputStream, int i) {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i > 0 ? i + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = inputStream.read(bArr, 0, 16384);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byteArrayOutputStream.flush();
                read(byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                Log.w(f14433v, "Error reading data from stream", e);
            }
        } else {
            this.f14453p = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                Log.w(f14433v, "Error closing stream", e2);
            }
        }
        return this.f14453p;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void resetFrameIndex() {
        this.f14449l = -1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized void setData(@NonNull GifHeader gifHeader, @NonNull byte[] bArr) {
        setData(gifHeader, ByteBuffer.wrap(bArr));
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void setDefaultBitmapConfig(@NonNull Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.f14458u = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }

    public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer, int i) {
        this(bitmapProvider);
        setData(gifHeader, byteBuffer, i);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized void setData(@NonNull GifHeader gifHeader, @NonNull ByteBuffer byteBuffer) {
        setData(gifHeader, byteBuffer, 1);
    }

    public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider bitmapProvider) {
        this.f14439b = new int[256];
        this.f14458u = Bitmap.Config.ARGB_8888;
        this.f14440c = bitmapProvider;
        this.f14450m = new GifHeader();
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized void setData(@NonNull GifHeader gifHeader, @NonNull ByteBuffer byteBuffer, int i) {
        if (i > 0) {
            int highestOneBit = Integer.highestOneBit(i);
            this.f14453p = 0;
            this.f14450m = gifHeader;
            this.f14449l = -1;
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.f14441d = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            this.f14441d.order(ByteOrder.LITTLE_ENDIAN);
            this.f14452o = false;
            Iterator<u2h> it2 = gifHeader.f14398e.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                } else if (it2.next().f86045g == 3) {
                    this.f14452o = true;
                    break;
                }
            }
            this.f14454q = highestOneBit;
            int i2 = gifHeader.f14399f;
            this.f14456s = i2 / highestOneBit;
            int i3 = gifHeader.f14400g;
            this.f14455r = i3 / highestOneBit;
            this.f14447j = this.f14440c.obtainByteArray(i2 * i3);
            this.f14448k = this.f14440c.obtainIntArray(this.f14456s * this.f14455r);
        } else {
            throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized int read(@Nullable byte[] bArr) {
        GifHeader parseHeader = m8662e().setData(bArr).parseHeader();
        this.f14450m = parseHeader;
        if (bArr != null) {
            setData(parseHeader, bArr);
        }
        return this.f14453p;
    }
}
