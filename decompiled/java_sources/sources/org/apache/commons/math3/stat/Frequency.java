package org.apache.commons.math3.stat;

import java.io.Serializable;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class Frequency implements Serializable {
    private static final long serialVersionUID = -3845586908418844111L;
    private final SortedMap<Comparable<?>, Long> freqTable;

    /* loaded from: classes12.dex */
    public static class NaturalComparator<T extends Comparable<T>> implements Comparator<Comparable<T>>, Serializable {
        private static final long serialVersionUID = -3852193713161395148L;

        private NaturalComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Comparable<T> comparable, Comparable<T> comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    public Frequency() {
        this.freqTable = new TreeMap();
    }

    public void addValue(Comparable<?> comparable) throws MathIllegalArgumentException {
        incrementValue(comparable, 1L);
    }

    public void clear() {
        this.freqTable.clear();
    }

    public Iterator<Map.Entry<Comparable<?>, Long>> entrySetIterator() {
        return this.freqTable.entrySet().iterator();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Frequency)) {
            return false;
        }
        Frequency frequency = (Frequency) obj;
        SortedMap<Comparable<?>, Long> sortedMap = this.freqTable;
        if (sortedMap == null) {
            if (frequency.freqTable != null) {
                return false;
            }
        } else if (!sortedMap.equals(frequency.freqTable)) {
            return false;
        }
        return true;
    }

    public long getCount(Comparable<?> comparable) {
        if (comparable instanceof Integer) {
            return getCount(((Integer) comparable).longValue());
        }
        try {
            Long l = this.freqTable.get(comparable);
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        } catch (ClassCastException unused) {
            return 0L;
        }
    }

    public long getCumFreq(Comparable<?> comparable) {
        if (getSumFreq() == 0) {
            return 0L;
        }
        if (comparable instanceof Integer) {
            return getCumFreq(((Integer) comparable).longValue());
        }
        Comparator<? super Comparable<?>> comparator = this.freqTable.comparator();
        if (comparator == null) {
            comparator = new NaturalComparator<>();
        }
        try {
            Long l = this.freqTable.get(comparable);
            long longValue = l != null ? l.longValue() : 0L;
            if (comparator.compare(comparable, this.freqTable.firstKey()) < 0) {
                return 0L;
            }
            if (comparator.compare(comparable, this.freqTable.lastKey()) >= 0) {
                return getSumFreq();
            }
            Iterator<Comparable<?>> valuesIterator = valuesIterator();
            while (valuesIterator.hasNext()) {
                Comparable<?> next = valuesIterator.next();
                if (comparator.compare(comparable, next) <= 0) {
                    break;
                }
                longValue += getCount(next);
            }
            return longValue;
        } catch (ClassCastException unused) {
            return 0L;
        }
    }

    public double getCumPct(Comparable<?> comparable) {
        long sumFreq = getSumFreq();
        if (sumFreq == 0) {
            return Double.NaN;
        }
        return getCumFreq(comparable) / sumFreq;
    }

    public List<Comparable<?>> getMode() {
        Iterator<Long> it2 = this.freqTable.values().iterator();
        long j = 0;
        while (it2.hasNext()) {
            long longValue = it2.next().longValue();
            if (longValue > j) {
                j = longValue;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Comparable<?>, Long> entry : this.freqTable.entrySet()) {
            if (entry.getValue().longValue() == j) {
                arrayList.add(entry.getKey());
            }
        }
        return arrayList;
    }

    public double getPct(Comparable<?> comparable) {
        long sumFreq = getSumFreq();
        if (sumFreq == 0) {
            return Double.NaN;
        }
        return getCount(comparable) / sumFreq;
    }

    public long getSumFreq() {
        Iterator<Long> it2 = this.freqTable.values().iterator();
        long j = 0;
        while (it2.hasNext()) {
            j += it2.next().longValue();
        }
        return j;
    }

    public int getUniqueCount() {
        return this.freqTable.keySet().size();
    }

    public int hashCode() {
        SortedMap<Comparable<?>, Long> sortedMap = this.freqTable;
        return 31 + (sortedMap == null ? 0 : sortedMap.hashCode());
    }

    public void incrementValue(Comparable<?> comparable, long j) throws MathIllegalArgumentException {
        Comparable<?> valueOf = comparable instanceof Integer ? Long.valueOf(((Integer) comparable).longValue()) : comparable;
        try {
            Long l = this.freqTable.get(valueOf);
            if (l == null) {
                this.freqTable.put(valueOf, Long.valueOf(j));
            } else {
                this.freqTable.put(valueOf, Long.valueOf(l.longValue() + j));
            }
        } catch (ClassCastException unused) {
            throw new MathIllegalArgumentException(LocalizedFormats.INSTANCES_NOT_COMPARABLE_TO_EXISTING_VALUES, comparable.getClass().getName());
        }
    }

    public void merge(Frequency frequency) throws NullArgumentException {
        MathUtils.checkNotNull(frequency, LocalizedFormats.NULL_NOT_ALLOWED, new Object[0]);
        Iterator<Map.Entry<Comparable<?>, Long>> entrySetIterator = frequency.entrySetIterator();
        while (entrySetIterator.hasNext()) {
            Map.Entry<Comparable<?>, Long> next = entrySetIterator.next();
            incrementValue(next.getKey(), next.getValue().longValue());
        }
    }

    public String toString() {
        NumberFormat percentInstance = NumberFormat.getPercentInstance();
        StringBuilder sb = new StringBuilder();
        sb.append("Value \t Freq. \t Pct. \t Cum Pct. \n");
        for (Comparable<?> comparable : this.freqTable.keySet()) {
            sb.append(comparable);
            sb.append('\t');
            sb.append(getCount(comparable));
            sb.append('\t');
            sb.append(percentInstance.format(getPct(comparable)));
            sb.append('\t');
            sb.append(percentInstance.format(getCumPct(comparable)));
            sb.append('\n');
        }
        return sb.toString();
    }

    public Iterator<Comparable<?>> valuesIterator() {
        return this.freqTable.keySet().iterator();
    }

    public void addValue(int i) throws MathIllegalArgumentException {
        addValue(Long.valueOf(i));
    }

    public Frequency(Comparator<?> comparator) {
        this.freqTable = new TreeMap(comparator);
    }

    public void addValue(long j) throws MathIllegalArgumentException {
        addValue(Long.valueOf(j));
    }

    public double getCumPct(int i) {
        return getCumPct(Long.valueOf(i));
    }

    public double getPct(int i) {
        return getPct(Long.valueOf(i));
    }

    public void addValue(char c) throws MathIllegalArgumentException {
        addValue(Character.valueOf(c));
    }

    public double getCumPct(long j) {
        return getCumPct(Long.valueOf(j));
    }

    public double getPct(long j) {
        return getPct(Long.valueOf(j));
    }

    public long getCount(int i) {
        return getCount(Long.valueOf(i));
    }

    public double getCumPct(char c) {
        return getCumPct(Character.valueOf(c));
    }

    public double getPct(char c) {
        return getPct(Character.valueOf(c));
    }

    public long getCount(long j) {
        return getCount(Long.valueOf(j));
    }

    public void merge(Collection<Frequency> collection) throws NullArgumentException {
        MathUtils.checkNotNull(collection, LocalizedFormats.NULL_NOT_ALLOWED, new Object[0]);
        Iterator<Frequency> it2 = collection.iterator();
        while (it2.hasNext()) {
            merge(it2.next());
        }
    }

    public long getCount(char c) {
        return getCount(Character.valueOf(c));
    }

    public void incrementValue(int i, long j) throws MathIllegalArgumentException {
        incrementValue(Long.valueOf(i), j);
    }

    public void incrementValue(long j, long j2) throws MathIllegalArgumentException {
        incrementValue(Long.valueOf(j), j2);
    }

    public void incrementValue(char c, long j) throws MathIllegalArgumentException {
        incrementValue(Character.valueOf(c), j);
    }

    public long getCumFreq(int i) {
        return getCumFreq(Long.valueOf(i));
    }

    public long getCumFreq(long j) {
        return getCumFreq(Long.valueOf(j));
    }

    public long getCumFreq(char c) {
        return getCumFreq(Character.valueOf(c));
    }
}
