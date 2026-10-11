package org.apache.commons.math3.stat.descriptive;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.math3.exception.NullArgumentException;

/* loaded from: classes12.dex */
public class AggregateSummaryStatistics implements StatisticalSummary, Serializable {
    private static final long serialVersionUID = -8207112444016386906L;
    private final SummaryStatistics statistics;
    private final SummaryStatistics statisticsPrototype;

    /* loaded from: classes12.dex */
    public static class AggregatingSummaryStatistics extends SummaryStatistics {
        private static final long serialVersionUID = 1;
        private final SummaryStatistics aggregateStatistics;

        public AggregatingSummaryStatistics(SummaryStatistics summaryStatistics) {
            this.aggregateStatistics = summaryStatistics;
        }

        @Override // org.apache.commons.math3.stat.descriptive.SummaryStatistics
        public void addValue(double d) {
            super.addValue(d);
            synchronized (this.aggregateStatistics) {
                this.aggregateStatistics.addValue(d);
            }
        }

        @Override // org.apache.commons.math3.stat.descriptive.SummaryStatistics
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AggregatingSummaryStatistics)) {
                return false;
            }
            AggregatingSummaryStatistics aggregatingSummaryStatistics = (AggregatingSummaryStatistics) obj;
            return super.equals(aggregatingSummaryStatistics) && this.aggregateStatistics.equals(aggregatingSummaryStatistics.aggregateStatistics);
        }

        @Override // org.apache.commons.math3.stat.descriptive.SummaryStatistics
        public int hashCode() {
            return super.hashCode() + 123 + this.aggregateStatistics.hashCode();
        }
    }

    public AggregateSummaryStatistics() {
        this(new SummaryStatistics());
    }

    public static StatisticalSummaryValues aggregate(Collection<? extends StatisticalSummary> collection) {
        double d;
        double d2;
        if (collection == null) {
            return null;
        }
        Iterator<? extends StatisticalSummary> it2 = collection.iterator();
        if (!it2.hasNext()) {
            return null;
        }
        StatisticalSummary next = it2.next();
        long n = next.getN();
        double min = next.getMin();
        double sum = next.getSum();
        double max = next.getMax();
        double variance = next.getVariance() * (n - 1.0d);
        double d3 = min;
        double d4 = sum;
        double d5 = max;
        double mean = next.getMean();
        while (it2.hasNext()) {
            StatisticalSummary next2 = it2.next();
            if (next2.getMin() < d3 || Double.isNaN(d3)) {
                d3 = next2.getMin();
            }
            if (next2.getMax() > d5 || Double.isNaN(d5)) {
                d5 = next2.getMax();
            }
            d4 += next2.getSum();
            double d6 = n;
            double n2 = next2.getN();
            long j = (long) (d6 + n2);
            double mean2 = next2.getMean() - mean;
            double d7 = j;
            mean = d4 / d7;
            variance = variance + (next2.getVariance() * (n2 - 1.0d)) + ((((mean2 * mean2) * d6) * n2) / d7);
            n = j;
        }
        if (n == 0) {
            d2 = Double.NaN;
        } else {
            if (n != 1) {
                d = variance / (n - 1);
                return new StatisticalSummaryValues(mean, d, n, d5, d3, d4);
            }
            d2 = 0.0d;
        }
        d = d2;
        return new StatisticalSummaryValues(mean, d, n, d5, d3, d4);
    }

    public SummaryStatistics createContributingStatistics() {
        AggregatingSummaryStatistics aggregatingSummaryStatistics = new AggregatingSummaryStatistics(this.statistics);
        SummaryStatistics.copy(this.statisticsPrototype, aggregatingSummaryStatistics);
        return aggregatingSummaryStatistics;
    }

    public double getGeometricMean() {
        double geometricMean;
        synchronized (this.statistics) {
            geometricMean = this.statistics.getGeometricMean();
        }
        return geometricMean;
    }

    @Override // org.apache.commons.math3.stat.descriptive.StatisticalSummary
    public double getMax() {
        double max;
        synchronized (this.statistics) {
            max = this.statistics.getMax();
        }
        return max;
    }

    @Override // org.apache.commons.math3.stat.descriptive.StatisticalSummary
    public double getMean() {
        double mean;
        synchronized (this.statistics) {
            mean = this.statistics.getMean();
        }
        return mean;
    }

    @Override // org.apache.commons.math3.stat.descriptive.StatisticalSummary
    public double getMin() {
        double min;
        synchronized (this.statistics) {
            min = this.statistics.getMin();
        }
        return min;
    }

    @Override // org.apache.commons.math3.stat.descriptive.StatisticalSummary
    public long getN() {
        long n;
        synchronized (this.statistics) {
            n = this.statistics.getN();
        }
        return n;
    }

    public double getSecondMoment() {
        double secondMoment;
        synchronized (this.statistics) {
            secondMoment = this.statistics.getSecondMoment();
        }
        return secondMoment;
    }

    @Override // org.apache.commons.math3.stat.descriptive.StatisticalSummary
    public double getStandardDeviation() {
        double standardDeviation;
        synchronized (this.statistics) {
            standardDeviation = this.statistics.getStandardDeviation();
        }
        return standardDeviation;
    }

    @Override // org.apache.commons.math3.stat.descriptive.StatisticalSummary
    public double getSum() {
        double sum;
        synchronized (this.statistics) {
            sum = this.statistics.getSum();
        }
        return sum;
    }

    public double getSumOfLogs() {
        double sumOfLogs;
        synchronized (this.statistics) {
            sumOfLogs = this.statistics.getSumOfLogs();
        }
        return sumOfLogs;
    }

    public StatisticalSummary getSummary() {
        StatisticalSummaryValues statisticalSummaryValues;
        synchronized (this.statistics) {
            statisticalSummaryValues = new StatisticalSummaryValues(getMean(), getVariance(), getN(), getMax(), getMin(), getSum());
        }
        return statisticalSummaryValues;
    }

    public double getSumsq() {
        double sumsq;
        synchronized (this.statistics) {
            sumsq = this.statistics.getSumsq();
        }
        return sumsq;
    }

    @Override // org.apache.commons.math3.stat.descriptive.StatisticalSummary
    public double getVariance() {
        double variance;
        synchronized (this.statistics) {
            variance = this.statistics.getVariance();
        }
        return variance;
    }

    public AggregateSummaryStatistics(SummaryStatistics summaryStatistics) throws NullArgumentException {
        this(summaryStatistics, summaryStatistics == null ? null : new SummaryStatistics(summaryStatistics));
    }

    public AggregateSummaryStatistics(SummaryStatistics summaryStatistics, SummaryStatistics summaryStatistics2) {
        this.statisticsPrototype = summaryStatistics == null ? new SummaryStatistics() : summaryStatistics;
        this.statistics = summaryStatistics2 == null ? new SummaryStatistics() : summaryStatistics2;
    }
}
