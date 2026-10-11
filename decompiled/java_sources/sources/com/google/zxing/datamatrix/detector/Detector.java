package com.google.zxing.datamatrix.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public final class Detector {

    /* renamed from: a */
    public final BitMatrix f38462a;

    /* renamed from: b */
    public final WhiteRectangleDetector f38463b;

    /* loaded from: classes4.dex */
    public static final class ResultPointsAndTransitionsComparator implements Serializable, Comparator<C6900b> {
        private ResultPointsAndTransitionsComparator() {
        }

        @Override // java.util.Comparator
        public int compare(C6900b c6900b, C6900b c6900b2) {
            return c6900b.m30568c() - c6900b2.m30568c();
        }
    }

    /* renamed from: com.google.zxing.datamatrix.detector.Detector$b */
    /* loaded from: classes4.dex */
    public static final class C6900b {

        /* renamed from: a */
        public final ResultPoint f38464a;

        /* renamed from: b */
        public final ResultPoint f38465b;

        /* renamed from: c */
        public final int f38466c;

        /* renamed from: a */
        public ResultPoint m30566a() {
            return this.f38464a;
        }

        /* renamed from: b */
        public ResultPoint m30567b() {
            return this.f38465b;
        }

        /* renamed from: c */
        public int m30568c() {
            return this.f38466c;
        }

        public String toString() {
            return this.f38464a + "/" + this.f38465b + '/' + this.f38466c;
        }

        public C6900b(ResultPoint resultPoint, ResultPoint resultPoint2, int i) {
            this.f38464a = resultPoint;
            this.f38465b = resultPoint2;
            this.f38466c = i;
        }
    }

    public Detector(BitMatrix bitMatrix) throws NotFoundException {
        this.f38462a = bitMatrix;
        this.f38463b = new WhiteRectangleDetector(bitMatrix);
    }

    /* renamed from: c */
    public static int m30559c(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.round(ResultPoint.distance(resultPoint, resultPoint2));
    }

    /* renamed from: d */
    public static void m30560d(Map<ResultPoint, Integer> map, ResultPoint resultPoint) {
        Integer num = map.get(resultPoint);
        map.put(resultPoint, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    /* renamed from: f */
    public static BitMatrix m30561f(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i, int i2) throws NotFoundException {
        float f = i - 0.5f;
        float f2 = i2 - 0.5f;
        return GridSampler.getInstance().sampleGrid(bitMatrix, i, i2, 0.5f, 0.5f, f, 0.5f, f, f2, 0.5f, f2, resultPoint.getX(), resultPoint.getY(), resultPoint4.getX(), resultPoint4.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    /* renamed from: a */
    public final ResultPoint m30562a(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i) {
        float f = i;
        float m30559c = m30559c(resultPoint, resultPoint2) / f;
        float m30559c2 = m30559c(resultPoint3, resultPoint4);
        ResultPoint resultPoint5 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint3.getX()) / m30559c2) * m30559c), resultPoint4.getY() + (m30559c * ((resultPoint4.getY() - resultPoint3.getY()) / m30559c2)));
        float m30559c3 = m30559c(resultPoint, resultPoint3) / f;
        float m30559c4 = m30559c(resultPoint2, resultPoint4);
        ResultPoint resultPoint6 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint2.getX()) / m30559c4) * m30559c3), resultPoint4.getY() + (m30559c3 * ((resultPoint4.getY() - resultPoint2.getY()) / m30559c4)));
        if (m30564e(resultPoint5)) {
            return (m30564e(resultPoint6) && Math.abs(m30565g(resultPoint3, resultPoint5).m30568c() - m30565g(resultPoint2, resultPoint5).m30568c()) > Math.abs(m30565g(resultPoint3, resultPoint6).m30568c() - m30565g(resultPoint2, resultPoint6).m30568c())) ? resultPoint6 : resultPoint5;
        }
        if (m30564e(resultPoint6)) {
            return resultPoint6;
        }
        return null;
    }

    /* renamed from: b */
    public final ResultPoint m30563b(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i, int i2) {
        float m30559c = m30559c(resultPoint, resultPoint2) / i;
        float m30559c2 = m30559c(resultPoint3, resultPoint4);
        ResultPoint resultPoint5 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint3.getX()) / m30559c2) * m30559c), resultPoint4.getY() + (m30559c * ((resultPoint4.getY() - resultPoint3.getY()) / m30559c2)));
        float m30559c3 = m30559c(resultPoint, resultPoint3) / i2;
        float m30559c4 = m30559c(resultPoint2, resultPoint4);
        ResultPoint resultPoint6 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint2.getX()) / m30559c4) * m30559c3), resultPoint4.getY() + (m30559c3 * ((resultPoint4.getY() - resultPoint2.getY()) / m30559c4)));
        if (m30564e(resultPoint5)) {
            return (m30564e(resultPoint6) && Math.abs(i - m30565g(resultPoint3, resultPoint5).m30568c()) + Math.abs(i2 - m30565g(resultPoint2, resultPoint5).m30568c()) > Math.abs(i - m30565g(resultPoint3, resultPoint6).m30568c()) + Math.abs(i2 - m30565g(resultPoint2, resultPoint6).m30568c())) ? resultPoint6 : resultPoint5;
        }
        if (m30564e(resultPoint6)) {
            return resultPoint6;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v3, types: [com.google.zxing.ResultPoint] */
    /* JADX WARN: Type inference failed for: r16v3, types: [com.google.zxing.ResultPoint] */
    /* JADX WARN: Type inference failed for: r22v0, types: [com.google.zxing.ResultPoint] */
    /* JADX WARN: Type inference failed for: r23v0, types: [com.google.zxing.datamatrix.detector.Detector] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.google.zxing.ResultPoint[]] */
    /* JADX WARN: Type inference failed for: r4v6, types: [com.google.zxing.ResultPoint[]] */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.google.zxing.ResultPoint] */
    public DetectorResult detect() throws NotFoundException {
        ResultPoint resultPoint;
        BitMatrix m30561f;
        ResultPoint[] detect = this.f38463b.detect();
        ResultPoint resultPoint2 = detect[0];
        ResultPoint resultPoint3 = detect[1];
        ResultPoint resultPoint4 = detect[2];
        ResultPoint resultPoint5 = detect[3];
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(m30565g(resultPoint2, resultPoint3));
        arrayList.add(m30565g(resultPoint2, resultPoint4));
        arrayList.add(m30565g(resultPoint3, resultPoint5));
        arrayList.add(m30565g(resultPoint4, resultPoint5));
        C6899a c6899a = null;
        Collections.sort(arrayList, new ResultPointsAndTransitionsComparator());
        C6900b c6900b = (C6900b) arrayList.get(0);
        C6900b c6900b2 = (C6900b) arrayList.get(1);
        HashMap hashMap = new HashMap();
        m30560d(hashMap, c6900b.m30566a());
        m30560d(hashMap, c6900b.m30567b());
        m30560d(hashMap, c6900b2.m30566a());
        m30560d(hashMap, c6900b2.m30567b());
        Object obj = null;
        Object obj2 = null;
        for (Map.Entry entry : hashMap.entrySet()) {
            ?? r16 = (ResultPoint) entry.getKey();
            if (((Integer) entry.getValue()).intValue() == 2) {
                obj = r16;
            } else if (c6899a == null) {
                c6899a = r16;
            } else {
                obj2 = r16;
            }
        }
        if (c6899a == null || obj == null || obj2 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ?? r4 = {c6899a, obj, obj2};
        ResultPoint.orderBestPatterns(r4);
        ?? r14 = r4[0];
        ?? r22 = r4[1];
        ?? r6 = r4[2];
        ResultPoint resultPoint6 = !hashMap.containsKey(resultPoint2) ? resultPoint2 : !hashMap.containsKey(resultPoint3) ? resultPoint3 : !hashMap.containsKey(resultPoint4) ? resultPoint4 : resultPoint5;
        int m30568c = m30565g(r6, resultPoint6).m30568c();
        int m30568c2 = m30565g(r14, resultPoint6).m30568c();
        if ((m30568c & 1) == 1) {
            m30568c++;
        }
        int i = m30568c + 2;
        if ((m30568c2 & 1) == 1) {
            m30568c2++;
        }
        int i2 = m30568c2 + 2;
        if (i * 4 >= i2 * 7 || i2 * 4 >= i * 7) {
            resultPoint = r6;
            ResultPoint m30563b = m30563b(r22, r14, r6, resultPoint6, i, i2);
            if (m30563b != null) {
                resultPoint6 = m30563b;
            }
            int m30568c3 = m30565g(resultPoint, resultPoint6).m30568c();
            int m30568c4 = m30565g(r14, resultPoint6).m30568c();
            if ((m30568c3 & 1) == 1) {
                m30568c3++;
            }
            int i3 = m30568c3;
            if ((m30568c4 & 1) == 1) {
                m30568c4++;
            }
            m30561f = m30561f(this.f38462a, resultPoint, r22, r14, resultPoint6, i3, m30568c4);
        } else {
            ResultPoint m30562a = m30562a(r22, r14, r6, resultPoint6, Math.min(i2, i));
            if (m30562a != null) {
                resultPoint6 = m30562a;
            }
            int max = Math.max(m30565g(r6, resultPoint6).m30568c(), m30565g(r14, resultPoint6).m30568c()) + 1;
            if ((max & 1) == 1) {
                max++;
            }
            int i4 = max;
            m30561f = m30561f(this.f38462a, r6, r22, r14, resultPoint6, i4, i4);
            resultPoint = r6;
        }
        return new DetectorResult(m30561f, new ResultPoint[]{resultPoint, r22, r14, resultPoint6});
    }

    /* renamed from: e */
    public final boolean m30564e(ResultPoint resultPoint) {
        return resultPoint.getX() >= 0.0f && resultPoint.getX() < ((float) this.f38462a.getWidth()) && resultPoint.getY() > 0.0f && resultPoint.getY() < ((float) this.f38462a.getHeight());
    }

    /* renamed from: g */
    public final C6900b m30565g(ResultPoint resultPoint, ResultPoint resultPoint2) {
        int x = (int) resultPoint.getX();
        int y = (int) resultPoint.getY();
        int x2 = (int) resultPoint2.getX();
        int y2 = (int) resultPoint2.getY();
        int i = 0;
        boolean z = Math.abs(y2 - y) > Math.abs(x2 - x);
        if (z) {
            y = x;
            x = y;
            y2 = x2;
            x2 = y2;
        }
        int abs = Math.abs(x2 - x);
        int abs2 = Math.abs(y2 - y);
        int i2 = (-abs) / 2;
        int i3 = y < y2 ? 1 : -1;
        int i4 = x >= x2 ? -1 : 1;
        boolean z2 = this.f38462a.get(z ? y : x, z ? x : y);
        while (x != x2) {
            boolean z3 = this.f38462a.get(z ? y : x, z ? x : y);
            if (z3 != z2) {
                i++;
                z2 = z3;
            }
            i2 += abs2;
            if (i2 > 0) {
                if (y == y2) {
                    break;
                }
                y += i3;
                i2 -= abs;
            }
            x += i4;
        }
        return new C6900b(resultPoint, resultPoint2, i);
    }
}
