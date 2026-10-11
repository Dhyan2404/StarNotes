package org.apache.commons.math3.stat.ranking;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotANumberException;
import org.apache.commons.math3.random.RandomDataGenerator;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class NaturalRanking implements RankingAlgorithm {
    public static final NaNStrategy DEFAULT_NAN_STRATEGY = NaNStrategy.FAILED;
    public static final TiesStrategy DEFAULT_TIES_STRATEGY = TiesStrategy.AVERAGE;

    /* renamed from: a */
    public final NaNStrategy f109774a;

    /* renamed from: b */
    public final TiesStrategy f109775b;

    /* renamed from: c */
    public final RandomDataGenerator f109776c;

    /* renamed from: org.apache.commons.math3.stat.ranking.NaturalRanking$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19279a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f109777a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f109778b;

        static {
            int[] iArr = new int[TiesStrategy.values().length];
            f109778b = iArr;
            try {
                iArr[TiesStrategy.AVERAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f109778b[TiesStrategy.MAXIMUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f109778b[TiesStrategy.MINIMUM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f109778b[TiesStrategy.RANDOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f109778b[TiesStrategy.SEQUENTIAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[NaNStrategy.values().length];
            f109777a = iArr2;
            try {
                iArr2[NaNStrategy.MAXIMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f109777a[NaNStrategy.MINIMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f109777a[NaNStrategy.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f109777a[NaNStrategy.FIXED.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f109777a[NaNStrategy.FAILED.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* renamed from: org.apache.commons.math3.stat.ranking.NaturalRanking$b */
    /* loaded from: classes12.dex */
    public static class C19280b implements Comparable<C19280b> {

        /* renamed from: e */
        public final double f109779e;

        /* renamed from: f */
        public final int f109780f;

        public C19280b(double d, int i) {
            this.f109779e = d;
            this.f109780f = i;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C19280b c19280b) {
            return Double.compare(this.f109779e, c19280b.f109779e);
        }

        /* renamed from: b */
        public int m68179b() {
            return this.f109780f;
        }

        /* renamed from: c */
        public double m68180c() {
            return this.f109779e;
        }
    }

    public NaturalRanking() {
        this.f109775b = DEFAULT_TIES_STRATEGY;
        this.f109774a = DEFAULT_NAN_STRATEGY;
        this.f109776c = null;
    }

    /* renamed from: a */
    public final boolean m68171a(C19280b[] c19280bArr) {
        for (C19280b c19280b : c19280bArr) {
            if (Double.isNaN(c19280b.m68180c())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final void m68172b(double[] dArr, List<Integer> list, double d) {
        Iterator<Integer> it2 = list.iterator();
        while (it2.hasNext()) {
            dArr[it2.next().intValue()] = d;
        }
    }

    /* renamed from: c */
    public final List<Integer> m68173c(C19280b[] c19280bArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < c19280bArr.length; i++) {
            if (Double.isNaN(c19280bArr[i].m68180c())) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public final void m68174d(C19280b[] c19280bArr, double d) {
        for (int i = 0; i < c19280bArr.length; i++) {
            if (Double.isNaN(c19280bArr[i].m68180c())) {
                c19280bArr[i] = new C19280b(d, c19280bArr[i].m68179b());
            }
        }
    }

    /* renamed from: e */
    public final C19280b[] m68175e(C19280b[] c19280bArr) {
        if (!m68171a(c19280bArr)) {
            return c19280bArr;
        }
        C19280b[] c19280bArr2 = new C19280b[c19280bArr.length];
        int i = 0;
        for (int i2 = 0; i2 < c19280bArr.length; i2++) {
            if (Double.isNaN(c19280bArr[i2].m68180c())) {
                for (int i3 = i2 + 1; i3 < c19280bArr.length; i3++) {
                    c19280bArr[i3] = new C19280b(c19280bArr[i3].m68180c(), c19280bArr[i3].m68179b() - 1);
                }
            } else {
                c19280bArr2[i] = new C19280b(c19280bArr[i2].m68180c(), c19280bArr[i2].m68179b());
                i++;
            }
        }
        C19280b[] c19280bArr3 = new C19280b[i];
        System.arraycopy(c19280bArr2, 0, c19280bArr3, 0, i);
        return c19280bArr3;
    }

    /* renamed from: f */
    public final void m68176f(double[] dArr, List<Integer> list) {
        int i = 0;
        double d = dArr[list.get(0).intValue()];
        int size = list.size();
        int i2 = C19279a.f109778b[this.f109775b.ordinal()];
        if (i2 == 1) {
            m68172b(dArr, list, (((d * 2.0d) + size) - 1.0d) / 2.0d);
            return;
        }
        if (i2 == 2) {
            m68172b(dArr, list, (d + size) - 1.0d);
            return;
        }
        if (i2 == 3) {
            m68172b(dArr, list, d);
            return;
        }
        if (i2 == 4) {
            Iterator<Integer> it2 = list.iterator();
            long round = FastMath.round(d);
            while (it2.hasNext()) {
                dArr[it2.next().intValue()] = this.f109776c.nextLong(round, (size + round) - 1);
            }
            return;
        }
        if (i2 != 5) {
            throw new MathInternalError();
        }
        Iterator<Integer> it3 = list.iterator();
        long round2 = FastMath.round(d);
        while (it3.hasNext()) {
            dArr[it3.next().intValue()] = i + round2;
            i++;
        }
    }

    /* renamed from: g */
    public final void m68177g(double[] dArr, List<Integer> list) {
        if (list.size() == 0) {
            return;
        }
        Iterator<Integer> it2 = list.iterator();
        while (it2.hasNext()) {
            dArr[it2.next().intValue()] = Double.NaN;
        }
    }

    public NaNStrategy getNanStrategy() {
        return this.f109774a;
    }

    public TiesStrategy getTiesStrategy() {
        return this.f109775b;
    }

    @Override // org.apache.commons.math3.stat.ranking.RankingAlgorithm
    public double[] rank(double[] dArr) {
        C19280b[] c19280bArr = new C19280b[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            c19280bArr[i] = new C19280b(dArr[i], i);
        }
        int i2 = C19279a.f109777a[this.f109774a.ordinal()];
        List<Integer> list = null;
        if (i2 == 1) {
            m68174d(c19280bArr, Double.POSITIVE_INFINITY);
        } else if (i2 == 2) {
            m68174d(c19280bArr, Double.NEGATIVE_INFINITY);
        } else if (i2 == 3) {
            c19280bArr = m68175e(c19280bArr);
        } else if (i2 == 4) {
            list = m68173c(c19280bArr);
        } else {
            if (i2 != 5) {
                throw new MathInternalError();
            }
            list = m68173c(c19280bArr);
            if (list.size() > 0) {
                throw new NotANumberException();
            }
        }
        Arrays.sort(c19280bArr);
        double[] dArr2 = new double[c19280bArr.length];
        dArr2[c19280bArr[0].m68179b()] = 1;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(c19280bArr[0].m68179b()));
        int i3 = 1;
        for (int i4 = 1; i4 < c19280bArr.length; i4++) {
            if (Double.compare(c19280bArr[i4].m68180c(), c19280bArr[i4 - 1].m68180c()) > 0) {
                i3 = i4 + 1;
                if (arrayList.size() > 1) {
                    m68176f(dArr2, arrayList);
                }
                arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(c19280bArr[i4].m68179b()));
            } else {
                arrayList.add(Integer.valueOf(c19280bArr[i4].m68179b()));
            }
            dArr2[c19280bArr[i4].m68179b()] = i3;
        }
        if (arrayList.size() > 1) {
            m68176f(dArr2, arrayList);
        }
        if (this.f109774a == NaNStrategy.FIXED) {
            m68177g(dArr2, list);
        }
        return dArr2;
    }

    public NaturalRanking(TiesStrategy tiesStrategy) {
        this.f109775b = tiesStrategy;
        this.f109774a = DEFAULT_NAN_STRATEGY;
        this.f109776c = new RandomDataGenerator();
    }

    public NaturalRanking(NaNStrategy naNStrategy) {
        this.f109774a = naNStrategy;
        this.f109775b = DEFAULT_TIES_STRATEGY;
        this.f109776c = null;
    }

    public NaturalRanking(NaNStrategy naNStrategy, TiesStrategy tiesStrategy) {
        this.f109774a = naNStrategy;
        this.f109775b = tiesStrategy;
        this.f109776c = new RandomDataGenerator();
    }

    public NaturalRanking(RandomGenerator randomGenerator) {
        this.f109775b = TiesStrategy.RANDOM;
        this.f109774a = DEFAULT_NAN_STRATEGY;
        this.f109776c = new RandomDataGenerator(randomGenerator);
    }

    public NaturalRanking(NaNStrategy naNStrategy, RandomGenerator randomGenerator) {
        this.f109774a = naNStrategy;
        this.f109775b = TiesStrategy.RANDOM;
        this.f109776c = new RandomDataGenerator(randomGenerator);
    }
}
