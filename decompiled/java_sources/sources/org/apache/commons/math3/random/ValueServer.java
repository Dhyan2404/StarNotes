package org.apache.commons.math3.random;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public class ValueServer {
    public static final int CONSTANT_MODE = 5;
    public static final int DIGEST_MODE = 0;
    public static final int EXPONENTIAL_MODE = 3;
    public static final int GAUSSIAN_MODE = 4;
    public static final int REPLAY_MODE = 1;
    public static final int UNIFORM_MODE = 2;

    /* renamed from: a */
    public int f109617a;

    /* renamed from: b */
    public URL f109618b;

    /* renamed from: c */
    public double f109619c;

    /* renamed from: d */
    public double f109620d;

    /* renamed from: e */
    public EmpiricalDistribution f109621e;

    /* renamed from: f */
    public BufferedReader f109622f;

    /* renamed from: g */
    public final RandomDataGenerator f109623g;

    public ValueServer() {
        this.f109617a = 5;
        this.f109618b = null;
        this.f109619c = 0.0d;
        this.f109620d = 0.0d;
        this.f109621e = null;
        this.f109622f = null;
        this.f109623g = new RandomDataGenerator();
    }

    /* renamed from: a */
    public final double m68091a() throws MathIllegalStateException {
        EmpiricalDistribution empiricalDistribution = this.f109621e;
        if (empiricalDistribution == null || empiricalDistribution.getBinStats().size() == 0) {
            throw new MathIllegalStateException(LocalizedFormats.DIGEST_NOT_INITIALIZED, new Object[0]);
        }
        return this.f109621e.getNextValue();
    }

    /* renamed from: b */
    public final double m68092b() throws MathIllegalArgumentException {
        return this.f109623g.nextExponential(this.f109619c);
    }

    /* renamed from: c */
    public final double m68093c() throws MathIllegalArgumentException {
        return this.f109623g.nextGaussian(this.f109619c, this.f109620d);
    }

    public void closeReplayFile() throws IOException {
        BufferedReader bufferedReader = this.f109622f;
        if (bufferedReader != null) {
            bufferedReader.close();
            this.f109622f = null;
        }
    }

    public void computeDistribution() throws IOException, ZeroException, NullArgumentException {
        computeDistribution(1000);
    }

    /* renamed from: d */
    public final double m68094d() throws IOException, MathIllegalStateException {
        if (this.f109622f == null) {
            resetReplayFile();
        }
        String readLine = this.f109622f.readLine();
        if (readLine == null) {
            closeReplayFile();
            resetReplayFile();
            readLine = this.f109622f.readLine();
            if (readLine == null) {
                throw new MathIllegalStateException(LocalizedFormats.URL_CONTAINS_NO_DATA, this.f109618b);
            }
        }
        return Double.parseDouble(readLine);
    }

    /* renamed from: e */
    public final double m68095e() throws MathIllegalArgumentException {
        return this.f109623g.nextUniform(0.0d, this.f109619c * 2.0d);
    }

    public void fill(double[] dArr) throws IOException, MathIllegalStateException, MathIllegalArgumentException {
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = getNext();
        }
    }

    public EmpiricalDistribution getEmpiricalDistribution() {
        return this.f109621e;
    }

    public int getMode() {
        return this.f109617a;
    }

    public double getMu() {
        return this.f109619c;
    }

    public double getNext() throws IOException, MathIllegalStateException, MathIllegalArgumentException {
        int i = this.f109617a;
        if (i == 0) {
            return m68091a();
        }
        if (i == 1) {
            return m68094d();
        }
        if (i == 2) {
            return m68095e();
        }
        if (i == 3) {
            return m68092b();
        }
        if (i == 4) {
            return m68093c();
        }
        if (i == 5) {
            return this.f109619c;
        }
        throw new MathIllegalStateException(LocalizedFormats.UNKNOWN_MODE, Integer.valueOf(this.f109617a), "DIGEST_MODE", 0, "REPLAY_MODE", 1, "UNIFORM_MODE", 2, "EXPONENTIAL_MODE", 3, "GAUSSIAN_MODE", 4, "CONSTANT_MODE", 5);
    }

    public double getSigma() {
        return this.f109620d;
    }

    public URL getValuesFileURL() {
        return this.f109618b;
    }

    public void reSeed(long j) {
        this.f109623g.reSeed(j);
    }

    public void resetReplayFile() throws IOException {
        BufferedReader bufferedReader = this.f109622f;
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
                this.f109622f = null;
            } catch (IOException unused) {
            }
        }
        this.f109622f = new BufferedReader(new InputStreamReader(this.f109618b.openStream(), "UTF-8"));
    }

    public void setMode(int i) {
        this.f109617a = i;
    }

    public void setMu(double d) {
        this.f109619c = d;
    }

    public void setSigma(double d) {
        this.f109620d = d;
    }

    public void setValuesFileURL(String str) throws MalformedURLException {
        this.f109618b = new URL(str);
    }

    public void computeDistribution(int i) throws NullArgumentException, IOException, ZeroException {
        EmpiricalDistribution empiricalDistribution = new EmpiricalDistribution(i, this.f109623g.getRandomGenerator());
        this.f109621e = empiricalDistribution;
        empiricalDistribution.load(this.f109618b);
        this.f109619c = this.f109621e.getSampleStats().getMean();
        this.f109620d = this.f109621e.getSampleStats().getStandardDeviation();
    }

    public void setValuesFileURL(URL url) {
        this.f109618b = url;
    }

    public double[] fill(int i) throws IOException, MathIllegalStateException, MathIllegalArgumentException {
        double[] dArr = new double[i];
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = getNext();
        }
        return dArr;
    }

    @Deprecated
    public ValueServer(RandomDataImpl randomDataImpl) {
        this.f109617a = 5;
        this.f109618b = null;
        this.f109619c = 0.0d;
        this.f109620d = 0.0d;
        this.f109621e = null;
        this.f109622f = null;
        this.f109623g = randomDataImpl.getDelegate();
    }

    public ValueServer(RandomGenerator randomGenerator) {
        this.f109617a = 5;
        this.f109618b = null;
        this.f109619c = 0.0d;
        this.f109620d = 0.0d;
        this.f109621e = null;
        this.f109622f = null;
        this.f109623g = new RandomDataGenerator(randomGenerator);
    }
}
