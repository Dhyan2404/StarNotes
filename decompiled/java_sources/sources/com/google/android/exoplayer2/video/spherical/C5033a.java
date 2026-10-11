package com.google.android.exoplayer2.video.spherical;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.spherical.Projection;
import java.util.ArrayList;
import java.util.zip.Inflater;

/* renamed from: com.google.android.exoplayer2.video.spherical.a */
/* loaded from: classes5.dex */
public final class C5033a {

    /* renamed from: a */
    public static final int f28712a = 2037673328;

    /* renamed from: b */
    public static final int f28713b = 1836279920;

    /* renamed from: c */
    public static final int f28714c = 1918990112;

    /* renamed from: d */
    public static final int f28715d = 1684433976;

    /* renamed from: e */
    public static final int f28716e = 1835365224;

    /* renamed from: f */
    public static final int f28717f = 1886547818;

    /* renamed from: g */
    public static final int f28718g = 10000;

    /* renamed from: h */
    public static final int f28719h = 32000;

    /* renamed from: i */
    public static final int f28720i = 128000;

    @Nullable
    /* renamed from: a */
    public static Projection m21681a(byte[] bArr, int i) {
        ArrayList<Projection.Mesh> arrayList;
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
        try {
            arrayList = m21683c(parsableByteArray) ? m21686f(parsableByteArray) : m21685e(parsableByteArray);
        } catch (ArrayIndexOutOfBoundsException unused) {
            arrayList = null;
        }
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        if (size == 1) {
            return new Projection(arrayList.get(0), i);
        }
        if (size != 2) {
            return null;
        }
        return new Projection(arrayList.get(0), arrayList.get(1), i);
    }

    /* renamed from: b */
    public static int m21682b(int i) {
        return (-(i & 1)) ^ (i >> 1);
    }

    /* renamed from: c */
    public static boolean m21683c(ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(4);
        int readInt = parsableByteArray.readInt();
        parsableByteArray.setPosition(0);
        return readInt == 1886547818;
    }

    @Nullable
    /* renamed from: d */
    public static Projection.Mesh m21684d(ParsableByteArray parsableByteArray) {
        int readInt = parsableByteArray.readInt();
        if (readInt > 10000) {
            return null;
        }
        float[] fArr = new float[readInt];
        for (int i = 0; i < readInt; i++) {
            fArr[i] = parsableByteArray.readFloat();
        }
        int readInt2 = parsableByteArray.readInt();
        if (readInt2 > 32000) {
            return null;
        }
        double d = 2.0d;
        double log = Math.log(2.0d);
        int ceil = (int) Math.ceil(Math.log(readInt * 2.0d) / log);
        ParsableBitArray parsableBitArray = new ParsableBitArray(parsableByteArray.getData());
        int i2 = 8;
        parsableBitArray.setPosition(parsableByteArray.getPosition() * 8);
        float[] fArr2 = new float[readInt2 * 5];
        int i3 = 5;
        int[] iArr = new int[5];
        int i4 = 0;
        int i5 = 0;
        while (i4 < readInt2) {
            int i6 = 0;
            while (i6 < i3) {
                int m21682b = iArr[i6] + m21682b(parsableBitArray.readBits(ceil));
                if (m21682b >= readInt || m21682b < 0) {
                    return null;
                }
                fArr2[i5] = fArr[m21682b];
                iArr[i6] = m21682b;
                i6++;
                i5++;
                i3 = 5;
            }
            i4++;
            i3 = 5;
        }
        parsableBitArray.setPosition((parsableBitArray.getPosition() + 7) & (-8));
        int i7 = 32;
        int readBits = parsableBitArray.readBits(32);
        Projection.SubMesh[] subMeshArr = new Projection.SubMesh[readBits];
        int i8 = 0;
        while (i8 < readBits) {
            int readBits2 = parsableBitArray.readBits(i2);
            int readBits3 = parsableBitArray.readBits(i2);
            int readBits4 = parsableBitArray.readBits(i7);
            if (readBits4 > 128000) {
                return null;
            }
            int ceil2 = (int) Math.ceil(Math.log(readInt2 * d) / log);
            float[] fArr3 = new float[readBits4 * 3];
            float[] fArr4 = new float[readBits4 * 2];
            int i9 = 0;
            for (int i10 = 0; i10 < readBits4; i10++) {
                i9 += m21682b(parsableBitArray.readBits(ceil2));
                if (i9 < 0 || i9 >= readInt2) {
                    return null;
                }
                int i11 = i10 * 3;
                int i12 = i9 * 5;
                fArr3[i11] = fArr2[i12];
                fArr3[i11 + 1] = fArr2[i12 + 1];
                fArr3[i11 + 2] = fArr2[i12 + 2];
                int i13 = i10 * 2;
                fArr4[i13] = fArr2[i12 + 3];
                fArr4[i13 + 1] = fArr2[i12 + 4];
            }
            subMeshArr[i8] = new Projection.SubMesh(readBits2, fArr3, fArr4, readBits3);
            i8++;
            i7 = 32;
            d = 2.0d;
            i2 = 8;
        }
        return new Projection.Mesh(subMeshArr);
    }

    @Nullable
    /* renamed from: e */
    public static ArrayList<Projection.Mesh> m21685e(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.readUnsignedByte() != 0) {
            return null;
        }
        parsableByteArray.skipBytes(7);
        int readInt = parsableByteArray.readInt();
        if (readInt == 1684433976) {
            ParsableByteArray parsableByteArray2 = new ParsableByteArray();
            Inflater inflater = new Inflater(true);
            try {
                if (!Util.inflate(parsableByteArray, parsableByteArray2, inflater)) {
                    return null;
                }
                inflater.end();
                parsableByteArray = parsableByteArray2;
            } finally {
                inflater.end();
            }
        } else if (readInt != 1918990112) {
            return null;
        }
        return m21687g(parsableByteArray);
    }

    @Nullable
    /* renamed from: f */
    public static ArrayList<Projection.Mesh> m21686f(ParsableByteArray parsableByteArray) {
        int readInt;
        parsableByteArray.skipBytes(8);
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        while (position < limit && (readInt = parsableByteArray.readInt() + position) > position && readInt <= limit) {
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == 2037673328 || readInt2 == 1836279920) {
                parsableByteArray.setLimit(readInt);
                return m21685e(parsableByteArray);
            }
            parsableByteArray.setPosition(readInt);
            position = readInt;
        }
        return null;
    }

    @Nullable
    /* renamed from: g */
    public static ArrayList<Projection.Mesh> m21687g(ParsableByteArray parsableByteArray) {
        ArrayList<Projection.Mesh> arrayList = new ArrayList<>();
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        while (position < limit) {
            int readInt = parsableByteArray.readInt() + position;
            if (readInt <= position || readInt > limit) {
                return null;
            }
            if (parsableByteArray.readInt() == 1835365224) {
                Projection.Mesh m21684d = m21684d(parsableByteArray);
                if (m21684d == null) {
                    return null;
                }
                arrayList.add(m21684d);
            }
            parsableByteArray.setPosition(readInt);
            position = readInt;
        }
        return arrayList;
    }
}
