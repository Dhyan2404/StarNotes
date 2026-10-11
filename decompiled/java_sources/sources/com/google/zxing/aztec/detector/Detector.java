package com.google.zxing.aztec.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* loaded from: classes4.dex */
public final class Detector {

    /* renamed from: g */
    public static final int[] f38237g = {3808, TarConstants.XSTAR_ATIME_OFFSET, 2107, 1799};

    /* renamed from: a */
    public final BitMatrix f38238a;

    /* renamed from: b */
    public boolean f38239b;

    /* renamed from: c */
    public int f38240c;

    /* renamed from: d */
    public int f38241d;

    /* renamed from: e */
    public int f38242e;

    /* renamed from: f */
    public int f38243f;

    /* renamed from: com.google.zxing.aztec.detector.Detector$a */
    /* loaded from: classes4.dex */
    public static final class C6892a {

        /* renamed from: a */
        public final int f38244a;

        /* renamed from: b */
        public final int f38245b;

        public C6892a(int i, int i2) {
            this.f38244a = i;
            this.f38245b = i2;
        }

        /* renamed from: a */
        public int m30448a() {
            return this.f38244a;
        }

        /* renamed from: b */
        public int m30449b() {
            return this.f38245b;
        }

        /* renamed from: c */
        public ResultPoint m30450c() {
            return new ResultPoint(m30448a(), m30449b());
        }

        public String toString() {
            return "<" + this.f38244a + ' ' + this.f38245b + '>';
        }
    }

    public Detector(BitMatrix bitMatrix) {
        this.f38238a = bitMatrix;
    }

    /* renamed from: a */
    public static float m30431a(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.distance(resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    /* renamed from: b */
    public static float m30432b(C6892a c6892a, C6892a c6892a2) {
        return MathUtils.distance(c6892a.m30448a(), c6892a.m30449b(), c6892a2.m30448a(), c6892a2.m30449b());
    }

    /* renamed from: c */
    public static ResultPoint[] m30433c(ResultPoint[] resultPointArr, float f, float f2) {
        float f3 = f2 / (f * 2.0f);
        float x = resultPointArr[0].getX() - resultPointArr[2].getX();
        float y = resultPointArr[0].getY() - resultPointArr[2].getY();
        float x2 = (resultPointArr[0].getX() + resultPointArr[2].getX()) / 2.0f;
        float y2 = (resultPointArr[0].getY() + resultPointArr[2].getY()) / 2.0f;
        float f4 = x * f3;
        float f5 = y * f3;
        ResultPoint resultPoint = new ResultPoint(x2 + f4, y2 + f5);
        ResultPoint resultPoint2 = new ResultPoint(x2 - f4, y2 - f5);
        float x3 = resultPointArr[1].getX() - resultPointArr[3].getX();
        float y3 = resultPointArr[1].getY() - resultPointArr[3].getY();
        float x4 = (resultPointArr[1].getX() + resultPointArr[3].getX()) / 2.0f;
        float y4 = (resultPointArr[1].getY() + resultPointArr[3].getY()) / 2.0f;
        float f6 = x3 * f3;
        float f7 = f3 * y3;
        return new ResultPoint[]{resultPoint, new ResultPoint(x4 + f6, y4 + f7), resultPoint2, new ResultPoint(x4 - f6, y4 - f7)};
    }

    /* renamed from: g */
    public static int m30434g(long j, boolean z) throws NotFoundException {
        int i;
        int i2;
        if (z) {
            i = 7;
            i2 = 2;
        } else {
            i = 10;
            i2 = 4;
        }
        int i3 = i - i2;
        int[] iArr = new int[i];
        for (int i4 = i - 1; i4 >= 0; i4--) {
            iArr[i4] = ((int) j) & 15;
            j >>= 4;
        }
        try {
            new ReedSolomonDecoder(GenericGF.AZTEC_PARAM).decode(iArr, i3);
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                i5 = (i5 << 4) + iArr[i6];
            }
            return i5;
        } catch (ReedSolomonException unused) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    /* renamed from: l */
    public static int m30435l(int[] iArr, int i) throws NotFoundException {
        int i2 = 0;
        for (int i3 : iArr) {
            i2 = (i2 << 3) + ((i3 >> (i - 2)) << 1) + (i3 & 1);
        }
        int i4 = ((i2 & 1) << 11) + (i2 >> 1);
        for (int i5 = 0; i5 < 4; i5++) {
            if (Integer.bitCount(f38237g[i5] ^ i4) <= 2) {
                return i5;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* renamed from: d */
    public final void m30436d(ResultPoint[] resultPointArr) throws NotFoundException {
        long j;
        long j2;
        if (!m30444n(resultPointArr[0]) || !m30444n(resultPointArr[1]) || !m30444n(resultPointArr[2]) || !m30444n(resultPointArr[3])) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i = this.f38242e * 2;
        int[] iArr = {m30447q(resultPointArr[0], resultPointArr[1], i), m30447q(resultPointArr[1], resultPointArr[2], i), m30447q(resultPointArr[2], resultPointArr[3], i), m30447q(resultPointArr[3], resultPointArr[0], i)};
        this.f38243f = m30435l(iArr, i);
        long j3 = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            int i3 = iArr[(this.f38243f + i2) % 4];
            if (this.f38239b) {
                j = j3 << 7;
                j2 = (i3 >> 1) & 127;
            } else {
                j = j3 << 10;
                j2 = ((i3 >> 2) & 992) + ((i3 >> 1) & 31);
            }
            j3 = j + j2;
        }
        int m30434g = m30434g(j3, this.f38239b);
        if (this.f38239b) {
            this.f38240c = (m30434g >> 6) + 1;
            this.f38241d = (m30434g & 63) + 1;
        } else {
            this.f38240c = (m30434g >> 11) + 1;
            this.f38241d = (m30434g & 2047) + 1;
        }
    }

    public AztecDetectorResult detect() throws NotFoundException {
        return detect(false);
    }

    /* renamed from: e */
    public final ResultPoint[] m30437e(C6892a c6892a) throws NotFoundException {
        this.f38242e = 1;
        C6892a c6892a2 = c6892a;
        C6892a c6892a3 = c6892a2;
        C6892a c6892a4 = c6892a3;
        boolean z = true;
        while (this.f38242e < 9) {
            C6892a m30440i = m30440i(c6892a, z, 1, -1);
            C6892a m30440i2 = m30440i(c6892a2, z, 1, 1);
            C6892a m30440i3 = m30440i(c6892a3, z, -1, 1);
            C6892a m30440i4 = m30440i(c6892a4, z, -1, -1);
            if (this.f38242e > 2) {
                double m30432b = (m30432b(m30440i4, m30440i) * this.f38242e) / (m30432b(c6892a4, c6892a) * (this.f38242e + 2));
                if (m30432b < 0.75d || m30432b > 1.25d || !m30445o(m30440i, m30440i2, m30440i3, m30440i4)) {
                    break;
                }
            }
            z = !z;
            this.f38242e++;
            c6892a4 = m30440i4;
            c6892a = m30440i;
            c6892a2 = m30440i2;
            c6892a3 = m30440i3;
        }
        int i = this.f38242e;
        if (i != 5 && i != 7) {
            throw NotFoundException.getNotFoundInstance();
        }
        this.f38239b = i == 5;
        ResultPoint[] resultPointArr = {new ResultPoint(c6892a.m30448a() + 0.5f, c6892a.m30449b() - 0.5f), new ResultPoint(c6892a2.m30448a() + 0.5f, c6892a2.m30449b() + 0.5f), new ResultPoint(c6892a3.m30448a() - 0.5f, c6892a3.m30449b() + 0.5f), new ResultPoint(c6892a4.m30448a() - 0.5f, c6892a4.m30449b() - 0.5f)};
        int i2 = this.f38242e;
        return m30433c(resultPointArr, (i2 * 2) - 3, i2 * 2);
    }

    /* renamed from: f */
    public final int m30438f(C6892a c6892a, C6892a c6892a2) {
        float m30432b = m30432b(c6892a, c6892a2);
        float m30448a = (c6892a2.m30448a() - c6892a.m30448a()) / m30432b;
        float m30449b = (c6892a2.m30449b() - c6892a.m30449b()) / m30432b;
        float m30448a2 = c6892a.m30448a();
        float m30449b2 = c6892a.m30449b();
        boolean z = this.f38238a.get(c6892a.m30448a(), c6892a.m30449b());
        int ceil = (int) Math.ceil(m30432b);
        int i = 0;
        for (int i2 = 0; i2 < ceil; i2++) {
            m30448a2 += m30448a;
            m30449b2 += m30449b;
            if (this.f38238a.get(MathUtils.round(m30448a2), MathUtils.round(m30449b2)) != z) {
                i++;
            }
        }
        float f = i / m30432b;
        if (f <= 0.1f || f >= 0.9f) {
            return (f <= 0.1f) == z ? 1 : -1;
        }
        return 0;
    }

    /* renamed from: h */
    public final int m30439h() {
        if (this.f38239b) {
            return (this.f38240c * 4) + 11;
        }
        int i = this.f38240c;
        return i <= 4 ? (i * 4) + 15 : (i * 4) + ((((i - 4) / 8) + 1) * 2) + 15;
    }

    /* renamed from: i */
    public final C6892a m30440i(C6892a c6892a, boolean z, int i, int i2) {
        int m30448a = c6892a.m30448a() + i;
        int m30449b = c6892a.m30449b();
        while (true) {
            m30449b += i2;
            if (!m30443m(m30448a, m30449b) || this.f38238a.get(m30448a, m30449b) != z) {
                break;
            }
            m30448a += i;
        }
        int i3 = m30448a - i;
        int i4 = m30449b - i2;
        while (m30443m(i3, i4) && this.f38238a.get(i3, i4) == z) {
            i3 += i;
        }
        int i5 = i3 - i;
        while (m30443m(i5, i4) && this.f38238a.get(i5, i4) == z) {
            i4 += i2;
        }
        return new C6892a(i5, i4 - i2);
    }

    /* renamed from: j */
    public final C6892a m30441j() {
        ResultPoint m30450c;
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        ResultPoint m30450c2;
        ResultPoint m30450c3;
        ResultPoint m30450c4;
        ResultPoint m30450c5;
        try {
            ResultPoint[] detect = new WhiteRectangleDetector(this.f38238a).detect();
            resultPoint2 = detect[0];
            resultPoint3 = detect[1];
            resultPoint = detect[2];
            m30450c = detect[3];
        } catch (NotFoundException unused) {
            int width = this.f38238a.getWidth() / 2;
            int height = this.f38238a.getHeight() / 2;
            int i = width + 7;
            int i2 = height - 7;
            ResultPoint m30450c6 = m30440i(new C6892a(i, i2), false, 1, -1).m30450c();
            int i3 = height + 7;
            ResultPoint m30450c7 = m30440i(new C6892a(i, i3), false, 1, 1).m30450c();
            int i4 = width - 7;
            ResultPoint m30450c8 = m30440i(new C6892a(i4, i3), false, -1, 1).m30450c();
            m30450c = m30440i(new C6892a(i4, i2), false, -1, -1).m30450c();
            resultPoint = m30450c8;
            resultPoint2 = m30450c6;
            resultPoint3 = m30450c7;
        }
        int round = MathUtils.round((((resultPoint2.getX() + m30450c.getX()) + resultPoint3.getX()) + resultPoint.getX()) / 4.0f);
        int round2 = MathUtils.round((((resultPoint2.getY() + m30450c.getY()) + resultPoint3.getY()) + resultPoint.getY()) / 4.0f);
        try {
            ResultPoint[] detect2 = new WhiteRectangleDetector(this.f38238a, 15, round, round2).detect();
            m30450c2 = detect2[0];
            m30450c3 = detect2[1];
            m30450c4 = detect2[2];
            m30450c5 = detect2[3];
        } catch (NotFoundException unused2) {
            int i5 = round + 7;
            int i6 = round2 - 7;
            m30450c2 = this.m30440i(new C6892a(i5, i6), false, 1, -1).m30450c();
            int i7 = round2 + 7;
            m30450c3 = this.m30440i(new C6892a(i5, i7), false, 1, 1).m30450c();
            int i8 = round - 7;
            m30450c4 = this.m30440i(new C6892a(i8, i7), false, -1, 1).m30450c();
            m30450c5 = this.m30440i(new C6892a(i8, i6), false, -1, -1).m30450c();
        }
        return new C6892a(MathUtils.round((((m30450c2.getX() + m30450c5.getX()) + m30450c3.getX()) + m30450c4.getX()) / 4.0f), MathUtils.round((((m30450c2.getY() + m30450c5.getY()) + m30450c3.getY()) + m30450c4.getY()) / 4.0f));
    }

    /* renamed from: k */
    public final ResultPoint[] m30442k(ResultPoint[] resultPointArr) {
        return m30433c(resultPointArr, this.f38242e * 2, m30439h());
    }

    /* renamed from: m */
    public final boolean m30443m(int i, int i2) {
        return i >= 0 && i < this.f38238a.getWidth() && i2 > 0 && i2 < this.f38238a.getHeight();
    }

    /* renamed from: n */
    public final boolean m30444n(ResultPoint resultPoint) {
        return m30443m(MathUtils.round(resultPoint.getX()), MathUtils.round(resultPoint.getY()));
    }

    /* renamed from: o */
    public final boolean m30445o(C6892a c6892a, C6892a c6892a2, C6892a c6892a3, C6892a c6892a4) {
        C6892a c6892a5 = new C6892a(c6892a.m30448a() - 3, c6892a.m30449b() + 3);
        C6892a c6892a6 = new C6892a(c6892a2.m30448a() - 3, c6892a2.m30449b() - 3);
        C6892a c6892a7 = new C6892a(c6892a3.m30448a() + 3, c6892a3.m30449b() - 3);
        C6892a c6892a8 = new C6892a(c6892a4.m30448a() + 3, c6892a4.m30449b() + 3);
        int m30438f = m30438f(c6892a8, c6892a5);
        return m30438f != 0 && m30438f(c6892a5, c6892a6) == m30438f && m30438f(c6892a6, c6892a7) == m30438f && m30438f(c6892a7, c6892a8) == m30438f;
    }

    /* renamed from: p */
    public final BitMatrix m30446p(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) throws NotFoundException {
        GridSampler gridSampler = GridSampler.getInstance();
        int m30439h = m30439h();
        float f = m30439h / 2.0f;
        int i = this.f38242e;
        float f2 = f - i;
        float f3 = f + i;
        return gridSampler.sampleGrid(bitMatrix, m30439h, m30439h, f2, f2, f3, f2, f3, f3, f2, f3, resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint4.getX(), resultPoint4.getY());
    }

    /* renamed from: q */
    public final int m30447q(ResultPoint resultPoint, ResultPoint resultPoint2, int i) {
        float m30431a = m30431a(resultPoint, resultPoint2);
        float f = m30431a / i;
        float x = resultPoint.getX();
        float y = resultPoint.getY();
        float x2 = ((resultPoint2.getX() - resultPoint.getX()) * f) / m30431a;
        float y2 = (f * (resultPoint2.getY() - resultPoint.getY())) / m30431a;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            float f2 = i3;
            if (this.f38238a.get(MathUtils.round((f2 * x2) + x), MathUtils.round((f2 * y2) + y))) {
                i2 |= 1 << ((i - i3) - 1);
            }
        }
        return i2;
    }

    public AztecDetectorResult detect(boolean z) throws NotFoundException {
        ResultPoint[] m30437e = m30437e(m30441j());
        if (z) {
            ResultPoint resultPoint = m30437e[0];
            m30437e[0] = m30437e[2];
            m30437e[2] = resultPoint;
        }
        m30436d(m30437e);
        BitMatrix bitMatrix = this.f38238a;
        int i = this.f38243f;
        return new AztecDetectorResult(m30446p(bitMatrix, m30437e[i % 4], m30437e[(i + 1) % 4], m30437e[(i + 2) % 4], m30437e[(i + 3) % 4]), m30442k(m30437e), this.f38239b, this.f38241d, this.f38240c);
    }
}
