package org.apache.commons.math3.random;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.distribution.AbstractRealDistribution;
import org.apache.commons.math3.distribution.ConstantRealDistribution;
import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.distribution.RealDistribution;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.stat.descriptive.StatisticalSummary;
import org.apache.commons.math3.stat.descriptive.SummaryStatistics;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class EmpiricalDistribution extends AbstractRealDistribution {
    public static final int DEFAULT_BIN_COUNT = 1000;
    private static final String FILE_CHARSET = "US-ASCII";
    private static final long serialVersionUID = 5729073523949762654L;
    private final int binCount;
    private final List<SummaryStatistics> binStats;
    private double delta;
    private boolean loaded;
    private double max;
    private double min;
    protected final RandomDataGenerator randomData;
    private SummaryStatistics sampleStats;
    private double[] upperBounds;

    /* renamed from: org.apache.commons.math3.random.EmpiricalDistribution$b */
    /* loaded from: classes12.dex */
    public class C19255b extends AbstractC19256c {

        /* renamed from: b */
        public double[] f109580b;

        public C19255b(double[] dArr) throws NullArgumentException {
            super();
            MathUtils.checkNotNull(dArr);
            this.f109580b = dArr;
        }

        @Override // org.apache.commons.math3.random.EmpiricalDistribution.AbstractC19256c
        /* renamed from: a */
        public void mo68087a() throws IOException {
            for (int i = 0; i < this.f109580b.length; i++) {
                ((SummaryStatistics) EmpiricalDistribution.this.binStats.get(EmpiricalDistribution.this.findBin(this.f109580b[i]))).addValue(this.f109580b[i]);
            }
        }

        @Override // org.apache.commons.math3.random.EmpiricalDistribution.AbstractC19256c
        /* renamed from: b */
        public void mo68088b() throws IOException {
            EmpiricalDistribution.this.sampleStats = new SummaryStatistics();
            for (int i = 0; i < this.f109580b.length; i++) {
                EmpiricalDistribution.this.sampleStats.addValue(this.f109580b[i]);
            }
        }
    }

    /* renamed from: org.apache.commons.math3.random.EmpiricalDistribution$c */
    /* loaded from: classes12.dex */
    public abstract class AbstractC19256c {
        public AbstractC19256c() {
        }

        /* renamed from: a */
        public abstract void mo68087a() throws IOException;

        /* renamed from: b */
        public abstract void mo68088b() throws IOException;
    }

    /* renamed from: org.apache.commons.math3.random.EmpiricalDistribution$d */
    /* loaded from: classes12.dex */
    public class C19257d extends AbstractC19256c {

        /* renamed from: b */
        public BufferedReader f109583b;

        public C19257d(BufferedReader bufferedReader) {
            super();
            this.f109583b = bufferedReader;
        }

        @Override // org.apache.commons.math3.random.EmpiricalDistribution.AbstractC19256c
        /* renamed from: a */
        public void mo68087a() throws IOException {
            while (true) {
                String readLine = this.f109583b.readLine();
                if (readLine == null) {
                    this.f109583b.close();
                    this.f109583b = null;
                    return;
                } else {
                    double parseDouble = Double.parseDouble(readLine);
                    ((SummaryStatistics) EmpiricalDistribution.this.binStats.get(EmpiricalDistribution.this.findBin(parseDouble))).addValue(parseDouble);
                }
            }
        }

        @Override // org.apache.commons.math3.random.EmpiricalDistribution.AbstractC19256c
        /* renamed from: b */
        public void mo68088b() throws IOException {
            EmpiricalDistribution.this.sampleStats = new SummaryStatistics();
            while (true) {
                String readLine = this.f109583b.readLine();
                if (readLine == null) {
                    this.f109583b.close();
                    this.f109583b = null;
                    return;
                } else {
                    EmpiricalDistribution.this.sampleStats.addValue(Double.parseDouble(readLine));
                }
            }
        }
    }

    public EmpiricalDistribution() {
        this(1000);
    }

    private double cumBinP(int i) {
        return this.upperBounds[i];
    }

    private void fillBinStats(AbstractC19256c abstractC19256c) throws IOException {
        this.min = this.sampleStats.getMin();
        double max = this.sampleStats.getMax();
        this.max = max;
        this.delta = (max - this.min) / this.binCount;
        if (!this.binStats.isEmpty()) {
            this.binStats.clear();
        }
        for (int i = 0; i < this.binCount; i++) {
            this.binStats.add(i, new SummaryStatistics());
        }
        abstractC19256c.mo68087a();
        double[] dArr = new double[this.binCount];
        this.upperBounds = dArr;
        dArr[0] = this.binStats.get(0).getN() / this.sampleStats.getN();
        int i2 = 1;
        while (true) {
            int i3 = this.binCount;
            if (i2 >= i3 - 1) {
                this.upperBounds[i3 - 1] = 1.0d;
                return;
            } else {
                double[] dArr2 = this.upperBounds;
                dArr2[i2] = dArr2[i2 - 1] + (this.binStats.get(i2).getN() / this.sampleStats.getN());
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findBin(double d) {
        return FastMath.min(FastMath.max(((int) FastMath.ceil((d - this.min) / this.delta)) - 1, 0), this.binCount - 1);
    }

    /* renamed from: k */
    private RealDistribution m68084k(double d) {
        return getKernel(this.binStats.get(findBin(d)));
    }

    /* renamed from: kB */
    private double m68085kB(int i) {
        double[] upperBounds = getUpperBounds();
        RealDistribution kernel = getKernel(this.binStats.get(i));
        return i == 0 ? kernel.cumulativeProbability(this.min, upperBounds[0]) : kernel.cumulativeProbability(upperBounds[i - 1], upperBounds[i]);
    }

    /* renamed from: pB */
    private double m68086pB(int i) {
        double[] dArr = this.upperBounds;
        return i == 0 ? dArr[0] : dArr[i] - dArr[i - 1];
    }

    private double pBminus(int i) {
        if (i == 0) {
            return 0.0d;
        }
        return this.upperBounds[i - 1];
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d) {
        if (d < this.min) {
            return 0.0d;
        }
        if (d >= this.max) {
            return 1.0d;
        }
        int findBin = findBin(d);
        double pBminus = pBminus(findBin);
        double m68086pB = m68086pB(findBin);
        RealDistribution m68084k = m68084k(d);
        if (m68084k instanceof ConstantRealDistribution) {
            return d < m68084k.getNumericalMean() ? pBminus : pBminus + m68086pB;
        }
        return pBminus + (m68086pB * ((m68084k.cumulativeProbability(d) - m68084k.cumulativeProbability(findBin == 0 ? this.min : getUpperBounds()[findBin - 1])) / m68085kB(findBin)));
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d) {
        if (d < this.min || d > this.max) {
            return 0.0d;
        }
        int findBin = findBin(d);
        return (getKernel(this.binStats.get(findBin)).density(d) * m68086pB(findBin)) / m68085kB(findBin);
    }

    public int getBinCount() {
        return this.binCount;
    }

    public List<SummaryStatistics> getBinStats() {
        return this.binStats;
    }

    public double[] getGeneratorUpperBounds() {
        double[] dArr = this.upperBounds;
        int length = dArr.length;
        double[] dArr2 = new double[length];
        System.arraycopy(dArr, 0, dArr2, 0, length);
        return dArr2;
    }

    public RealDistribution getKernel(SummaryStatistics summaryStatistics) {
        return (summaryStatistics.getN() == 1 || summaryStatistics.getVariance() == 0.0d) ? new ConstantRealDistribution(summaryStatistics.getMean()) : new NormalDistribution(this.randomData.getRandomGenerator(), summaryStatistics.getMean(), summaryStatistics.getStandardDeviation(), 1.0E-9d);
    }

    public double getNextValue() throws MathIllegalStateException {
        if (this.loaded) {
            return sample();
        }
        throw new MathIllegalStateException(LocalizedFormats.DISTRIBUTION_NOT_LOADED, new Object[0]);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        return this.sampleStats.getMean();
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        return this.sampleStats.getVariance();
    }

    public StatisticalSummary getSampleStats() {
        return this.sampleStats;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportLowerBound() {
        return this.min;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportUpperBound() {
        return this.max;
    }

    public double[] getUpperBounds() {
        double[] dArr = new double[this.binCount];
        int i = 0;
        while (true) {
            int i2 = this.binCount;
            if (i >= i2 - 1) {
                dArr[i2 - 1] = this.max;
                return dArr;
            }
            int i3 = i + 1;
            dArr[i] = this.min + (this.delta * i3);
            i = i3;
        }
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double inverseCumulativeProbability(double d) throws OutOfRangeException {
        int i = 0;
        if (d < 0.0d || d > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d), 0, 1);
        }
        if (d == 0.0d) {
            return getSupportLowerBound();
        }
        if (d == 1.0d) {
            return getSupportUpperBound();
        }
        while (cumBinP(i) < d) {
            i++;
        }
        RealDistribution kernel = getKernel(this.binStats.get(i));
        double m68085kB = m68085kB(i);
        double d2 = i == 0 ? this.min : getUpperBounds()[i - 1];
        double cumulativeProbability = kernel.cumulativeProbability(d2);
        double m68086pB = m68086pB(i);
        double pBminus = d - pBminus(i);
        return pBminus <= 0.0d ? d2 : kernel.inverseCumulativeProbability(cumulativeProbability + ((pBminus * m68085kB) / m68086pB));
    }

    public boolean isLoaded() {
        return this.loaded;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportConnected() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportLowerBoundInclusive() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportUpperBoundInclusive() {
        return true;
    }

    public void load(double[] dArr) throws NullArgumentException {
        try {
            new C19255b(dArr).mo68088b();
            fillBinStats(new C19255b(dArr));
            this.loaded = true;
        } catch (IOException unused) {
            throw new MathInternalError();
        }
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double probability(double d) {
        return 0.0d;
    }

    public void reSeed(long j) {
        this.randomData.reSeed(j);
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public void reseedRandomGenerator(long j) {
        this.randomData.reSeed(j);
    }

    public EmpiricalDistribution(int i) {
        this(i, new RandomDataGenerator());
    }

    public EmpiricalDistribution(int i, RandomGenerator randomGenerator) {
        this(i, new RandomDataGenerator(randomGenerator));
    }

    public EmpiricalDistribution(RandomGenerator randomGenerator) {
        this(1000, randomGenerator);
    }

    @Deprecated
    public EmpiricalDistribution(int i, RandomDataImpl randomDataImpl) {
        this(i, randomDataImpl.getDelegate());
    }

    @Deprecated
    public EmpiricalDistribution(RandomDataImpl randomDataImpl) {
        this(1000, randomDataImpl);
    }

    public void load(URL url) throws IOException, NullArgumentException, ZeroException {
        MathUtils.checkNotNull(url);
        Charset forName = Charset.forName("US-ASCII");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(url.openStream(), forName));
        try {
            new C19257d(bufferedReader).mo68088b();
            if (this.sampleStats.getN() != 0) {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(url.openStream(), forName));
                try {
                    fillBinStats(new C19257d(bufferedReader2));
                    this.loaded = true;
                    try {
                        bufferedReader2.close();
                        return;
                    } catch (IOException unused) {
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    try {
                        bufferedReader.close();
                    } catch (IOException unused2) {
                    }
                    throw th;
                }
            }
            throw new ZeroException(LocalizedFormats.URL_CONTAINS_NO_DATA, url);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private EmpiricalDistribution(int i, RandomDataGenerator randomDataGenerator) {
        super(randomDataGenerator.getRandomGenerator());
        this.sampleStats = null;
        this.max = Double.NEGATIVE_INFINITY;
        this.min = Double.POSITIVE_INFINITY;
        this.delta = 0.0d;
        this.loaded = false;
        this.upperBounds = null;
        if (i > 0) {
            this.binCount = i;
            this.randomData = randomDataGenerator;
            this.binStats = new ArrayList();
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }

    public void load(File file) throws IOException, NullArgumentException {
        BufferedReader bufferedReader;
        MathUtils.checkNotNull(file);
        Charset forName = Charset.forName("US-ASCII");
        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file), forName));
        try {
            new C19257d(bufferedReader2).mo68088b();
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), forName));
        } catch (Throwable th) {
            th = th;
        }
        try {
            fillBinStats(new C19257d(bufferedReader));
            this.loaded = true;
            try {
                bufferedReader.close();
            } catch (IOException unused) {
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedReader2 = bufferedReader;
            try {
                bufferedReader2.close();
            } catch (IOException unused2) {
            }
            throw th;
        }
    }
}
