package org.apache.commons.math3.random;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.MathParseException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class SobolSequenceGenerator implements RandomVectorGenerator {

    /* renamed from: e */
    public static final int f109596e = 52;

    /* renamed from: f */
    public static final double f109597f = FastMath.pow(2.0d, 52);

    /* renamed from: g */
    public static final int f109598g = 1000;

    /* renamed from: h */
    public static final String f109599h = "/assets/org/apache/commons/math3/random/new-joe-kuo-6.1000";

    /* renamed from: i */
    public static final String f109600i = "US-ASCII";

    /* renamed from: a */
    public final int f109601a;

    /* renamed from: b */
    public int f109602b = 0;

    /* renamed from: c */
    public final long[][] f109603c;

    /* renamed from: d */
    public final long[] f109604d;

    public SobolSequenceGenerator(int i) throws OutOfRangeException {
        if (i >= 1 && i <= 1000) {
            InputStream resourceAsStream = getClass().getResourceAsStream(f109599h);
            if (resourceAsStream != null) {
                this.f109601a = i;
                this.f109603c = (long[][]) Array.newInstance((Class<?>) Long.TYPE, i, 53);
                this.f109604d = new long[i];
                try {
                    try {
                        try {
                            m68090b(resourceAsStream);
                            try {
                                resourceAsStream.close();
                                return;
                            } catch (IOException unused) {
                                return;
                            }
                        } catch (IOException unused2) {
                            throw new MathInternalError();
                        }
                    } catch (MathParseException unused3) {
                        throw new MathInternalError();
                    }
                } catch (Throwable th) {
                    try {
                        resourceAsStream.close();
                    } catch (IOException unused4) {
                    }
                    throw th;
                }
            }
            throw new MathInternalError();
        }
        throw new OutOfRangeException(Integer.valueOf(i), 1, 1000);
    }

    /* renamed from: a */
    public final void m68089a(int i, int i2, int[] iArr) {
        int length = iArr.length - 1;
        for (int i3 = 1; i3 <= length; i3++) {
            this.f109603c[i][i3] = iArr[i3] << (52 - i3);
        }
        for (int i4 = length + 1; i4 <= 52; i4++) {
            long[] jArr = this.f109603c[i];
            long j = jArr[i4 - length];
            jArr[i4] = j ^ (j >> length);
            int i5 = 1;
            while (true) {
                if (i5 <= length - 1) {
                    long[] jArr2 = this.f109603c[i];
                    jArr2[i4] = jArr2[i4] ^ (((i2 >> (r3 - i5)) & 1) * jArr2[i4 - i5]);
                    i5++;
                }
            }
        }
    }

    /* renamed from: b */
    public final int m68090b(InputStream inputStream) throws MathParseException, IOException {
        for (int i = 1; i <= 52; i++) {
            this.f109603c[0][i] = 1 << (52 - i);
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("US-ASCII")));
        try {
            bufferedReader.readLine();
            int i2 = -1;
            int i3 = 2;
            int i4 = 1;
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return i2;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(readLine, " ");
                try {
                    int parseInt = Integer.parseInt(stringTokenizer.nextToken());
                    if (parseInt >= 2 && parseInt <= this.f109601a) {
                        int parseInt2 = Integer.parseInt(stringTokenizer.nextToken());
                        int parseInt3 = Integer.parseInt(stringTokenizer.nextToken());
                        int[] iArr = new int[parseInt2 + 1];
                        for (int i5 = 1; i5 <= parseInt2; i5++) {
                            iArr[i5] = Integer.parseInt(stringTokenizer.nextToken());
                        }
                        m68089a(i4, parseInt3, iArr);
                        i4++;
                    }
                    if (parseInt > this.f109601a) {
                        return parseInt;
                    }
                    i3++;
                    i2 = parseInt;
                } catch (NumberFormatException unused) {
                    throw new MathParseException(readLine, i3);
                } catch (NoSuchElementException unused2) {
                    throw new MathParseException(readLine, i3);
                }
            }
        } finally {
            bufferedReader.close();
        }
    }

    public int getNextIndex() {
        return this.f109602b;
    }

    @Override // org.apache.commons.math3.random.RandomVectorGenerator
    public double[] nextVector() {
        double[] dArr = new double[this.f109601a];
        int i = this.f109602b;
        if (i == 0) {
            this.f109602b = i + 1;
            return dArr;
        }
        int i2 = i - 1;
        int i3 = 1;
        while ((i2 & 1) == 1) {
            i2 >>= 1;
            i3++;
        }
        for (int i4 = 0; i4 < this.f109601a; i4++) {
            long[] jArr = this.f109604d;
            long j = jArr[i4] ^ this.f109603c[i4][i3];
            jArr[i4] = j;
            dArr[i4] = j / f109597f;
        }
        this.f109602b++;
        return dArr;
    }

    public double[] skipTo(int i) throws NotPositiveException {
        if (i == 0) {
            Arrays.fill(this.f109604d, 0L);
        } else {
            int i2 = i - 1;
            long j = i2 ^ (i2 >> 1);
            for (int i3 = 0; i3 < this.f109601a; i3++) {
                long j2 = 0;
                for (int i4 = 1; i4 <= 52; i4++) {
                    long j3 = j >> (i4 - 1);
                    if (j3 == 0) {
                        break;
                    }
                    j2 ^= (j3 & 1) * this.f109603c[i3][i4];
                }
                this.f109604d[i3] = j2;
            }
        }
        this.f109602b = i;
        return nextVector();
    }

    public SobolSequenceGenerator(int i, InputStream inputStream) throws NotStrictlyPositiveException, MathParseException, IOException {
        if (i >= 1) {
            this.f109601a = i;
            this.f109603c = (long[][]) Array.newInstance((Class<?>) Long.TYPE, i, 53);
            this.f109604d = new long[i];
            int m68090b = m68090b(inputStream);
            if (m68090b < i) {
                throw new OutOfRangeException(Integer.valueOf(i), 1, Integer.valueOf(m68090b));
            }
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }
}
