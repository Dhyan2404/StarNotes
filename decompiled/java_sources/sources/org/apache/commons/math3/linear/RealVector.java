package org.apache.commons.math3.linear;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.function.Add;
import org.apache.commons.math3.analysis.function.Divide;
import org.apache.commons.math3.analysis.function.Multiply;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public abstract class RealVector {

    /* loaded from: classes12.dex */
    public class Entry {

        /* renamed from: a */
        public int f108553a;

        public Entry() {
            setIndex(0);
        }

        public int getIndex() {
            return this.f108553a;
        }

        public double getValue() {
            return RealVector.this.getEntry(getIndex());
        }

        public void setIndex(int i) {
            this.f108553a = i;
        }

        public void setValue(double d) {
            RealVector.this.setEntry(getIndex(), d);
        }
    }

    /* loaded from: classes12.dex */
    public class SparseEntryIterator implements Iterator<Entry> {

        /* renamed from: e */
        public final int f108555e;

        /* renamed from: f */
        public Entry f108556f;

        /* renamed from: g */
        public Entry f108557g;

        public SparseEntryIterator() {
            this.f108555e = RealVector.this.getDimension();
            this.f108556f = new Entry();
            Entry entry = new Entry();
            this.f108557g = entry;
            if (entry.getValue() == 0.0d) {
                advance(this.f108557g);
            }
        }

        public void advance(Entry entry) {
            if (entry == null) {
                return;
            }
            do {
                entry.setIndex(entry.getIndex() + 1);
                if (entry.getIndex() >= this.f108555e) {
                    break;
                }
            } while (entry.getValue() == 0.0d);
            if (entry.getIndex() >= this.f108555e) {
                entry.setIndex(-1);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f108557g.getIndex() >= 0;
        }

        @Override // java.util.Iterator
        public void remove() throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }

        @Override // java.util.Iterator
        public Entry next() {
            int index = this.f108557g.getIndex();
            if (index >= 0) {
                this.f108556f.setIndex(index);
                advance(this.f108557g);
                return this.f108556f;
            }
            throw new NoSuchElementException();
        }
    }

    /* renamed from: org.apache.commons.math3.linear.RealVector$a */
    /* loaded from: classes12.dex */
    public class C19174a implements Iterator<Entry> {

        /* renamed from: e */
        public int f108559e = 0;

        /* renamed from: f */
        public Entry f108560f;

        /* renamed from: g */
        public final /* synthetic */ int f108561g;

        public C19174a(int i) {
            this.f108561g = i;
            this.f108560f = new Entry();
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Entry next() {
            int i = this.f108559e;
            if (i >= this.f108561g) {
                throw new NoSuchElementException();
            }
            Entry entry = this.f108560f;
            this.f108559e = i + 1;
            entry.setIndex(i);
            return this.f108560f;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f108559e < this.f108561g;
        }

        @Override // java.util.Iterator
        public void remove() throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }
    }

    /* renamed from: org.apache.commons.math3.linear.RealVector$b */
    /* loaded from: classes12.dex */
    public static class C19175b extends RealVector {

        /* renamed from: org.apache.commons.math3.linear.RealVector$b$a */
        /* loaded from: classes12.dex */
        public class a implements Iterator<Entry> {

            /* renamed from: e */
            public final c f108564e;

            /* renamed from: f */
            public final /* synthetic */ Iterator f108565f;

            public a(Iterator it2) {
                this.f108565f = it2;
                this.f108564e = new c();
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Entry next() {
                this.f108564e.setIndex(((Entry) this.f108565f.next()).getIndex());
                return this.f108564e;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f108565f.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }
        }

        /* renamed from: org.apache.commons.math3.linear.RealVector$b$b */
        /* loaded from: classes12.dex */
        public class b implements Iterator<Entry> {

            /* renamed from: e */
            public final c f108567e;

            /* renamed from: f */
            public final /* synthetic */ Iterator f108568f;

            public b(Iterator it2) {
                this.f108568f = it2;
                this.f108567e = new c();
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Entry next() {
                this.f108567e.setIndex(((Entry) this.f108568f.next()).getIndex());
                return this.f108567e;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f108568f.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }
        }

        /* renamed from: org.apache.commons.math3.linear.RealVector$b$c */
        /* loaded from: classes12.dex */
        public class c extends Entry {
            public c() {
                super();
            }

            @Override // org.apache.commons.math3.linear.RealVector.Entry
            public double getValue() {
                return RealVector.this.getEntry(getIndex());
            }

            @Override // org.apache.commons.math3.linear.RealVector.Entry
            public void setValue(double d) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }
        }

        public C19175b() {
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector add(RealVector realVector) throws DimensionMismatchException {
            return RealVector.this.add(realVector);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public void addToEntry(int i, double d) throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector append(RealVector realVector) {
            return RealVector.this.append(realVector);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector combine(double d, double d2, RealVector realVector) throws DimensionMismatchException {
            return RealVector.this.combine(d, d2, realVector);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector combineToSelf(double d, double d2, RealVector realVector) throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector copy() {
            return RealVector.this.copy();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public double cosine(RealVector realVector) throws DimensionMismatchException, MathArithmeticException {
            return RealVector.this.cosine(realVector);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public double dotProduct(RealVector realVector) throws DimensionMismatchException {
            return RealVector.this.dotProduct(realVector);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector ebeDivide(RealVector realVector) throws DimensionMismatchException {
            return RealVector.this.ebeDivide(realVector);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector ebeMultiply(RealVector realVector) throws DimensionMismatchException {
            return RealVector.this.ebeMultiply(realVector);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public int getDimension() {
            return RealVector.this.getDimension();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public double getDistance(RealVector realVector) throws DimensionMismatchException {
            return RealVector.this.getDistance(realVector);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public double getEntry(int i) throws OutOfRangeException {
            return RealVector.this.getEntry(i);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public double getL1Distance(RealVector realVector) throws DimensionMismatchException {
            return RealVector.this.getL1Distance(realVector);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public double getL1Norm() {
            return RealVector.this.getL1Norm();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public double getLInfDistance(RealVector realVector) throws DimensionMismatchException {
            return RealVector.this.getLInfDistance(realVector);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public double getLInfNorm() {
            return RealVector.this.getLInfNorm();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public double getNorm() {
            return RealVector.this.getNorm();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector getSubVector(int i, int i2) throws OutOfRangeException, NotPositiveException {
            return RealVector.this.getSubVector(i, i2);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public boolean isInfinite() {
            return RealVector.this.isInfinite();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public boolean isNaN() {
            return RealVector.this.isNaN();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public Iterator<Entry> iterator() {
            return new a(RealVector.this.iterator());
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector map(UnivariateFunction univariateFunction) {
            return RealVector.this.map(univariateFunction);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector mapAdd(double d) {
            return RealVector.this.mapAdd(d);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector mapAddToSelf(double d) throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector mapDivide(double d) {
            return RealVector.this.mapDivide(d);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector mapDivideToSelf(double d) throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector mapMultiply(double d) {
            return RealVector.this.mapMultiply(d);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector mapMultiplyToSelf(double d) throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector mapSubtract(double d) {
            return RealVector.this.mapSubtract(d);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector mapSubtractToSelf(double d) throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector mapToSelf(UnivariateFunction univariateFunction) throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealMatrix outerProduct(RealVector realVector) {
            return RealVector.this.outerProduct(realVector);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public void set(double d) throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public void setEntry(int i, double d) throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public void setSubVector(int i, RealVector realVector) throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public Iterator<Entry> sparseIterator() {
            return new b(RealVector.this.sparseIterator());
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector subtract(RealVector realVector) throws DimensionMismatchException {
            return RealVector.this.subtract(realVector);
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public double[] toArray() {
            return RealVector.this.toArray();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector unitVector() throws MathArithmeticException {
            return RealVector.this.unitVector();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public void unitize() throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }

        @Override // org.apache.commons.math3.linear.RealVector
        public RealVector append(double d) {
            return RealVector.this.append(d);
        }
    }

    public static RealVector unmodifiableRealVector(RealVector realVector) {
        return new C19175b();
    }

    public RealVector add(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        RealVector copy = realVector.copy();
        Iterator<Entry> it2 = iterator();
        while (it2.hasNext()) {
            Entry next = it2.next();
            int index = next.getIndex();
            copy.setEntry(index, next.getValue() + copy.getEntry(index));
        }
        return copy;
    }

    public void addToEntry(int i, double d) throws OutOfRangeException {
        setEntry(i, getEntry(i) + d);
    }

    public abstract RealVector append(double d);

    public abstract RealVector append(RealVector realVector);

    public void checkIndex(int i) throws OutOfRangeException {
        if (i < 0 || i >= getDimension()) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i), 0, Integer.valueOf(getDimension() - 1));
        }
    }

    public void checkIndices(int i, int i2) throws NumberIsTooSmallException, OutOfRangeException {
        int dimension = getDimension();
        if (i < 0 || i >= dimension) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i), 0, Integer.valueOf(dimension - 1));
        }
        if (i2 < 0 || i2 >= dimension) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i2), 0, Integer.valueOf(dimension - 1));
        }
        if (i2 < i) {
            throw new NumberIsTooSmallException(LocalizedFormats.INITIAL_ROW_AFTER_FINAL_ROW, Integer.valueOf(i2), Integer.valueOf(i), false);
        }
    }

    public void checkVectorDimensions(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
    }

    public RealVector combine(double d, double d2, RealVector realVector) throws DimensionMismatchException {
        return copy().combineToSelf(d, d2, realVector);
    }

    public RealVector combineToSelf(double d, double d2, RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        for (int i = 0; i < getDimension(); i++) {
            setEntry(i, (getEntry(i) * d) + (realVector.getEntry(i) * d2));
        }
        return this;
    }

    public abstract RealVector copy();

    public double cosine(RealVector realVector) throws DimensionMismatchException, MathArithmeticException {
        double norm = getNorm();
        double norm2 = realVector.getNorm();
        if (norm == 0.0d || norm2 == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        return dotProduct(realVector) / (norm * norm2);
    }

    public double dotProduct(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        int dimension = getDimension();
        double d = 0.0d;
        for (int i = 0; i < dimension; i++) {
            d += getEntry(i) * realVector.getEntry(i);
        }
        return d;
    }

    public abstract RealVector ebeDivide(RealVector realVector) throws DimensionMismatchException;

    public abstract RealVector ebeMultiply(RealVector realVector) throws DimensionMismatchException;

    public boolean equals(Object obj) throws MathUnsupportedOperationException {
        throw new MathUnsupportedOperationException();
    }

    public abstract int getDimension();

    public double getDistance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        Iterator<Entry> it2 = iterator();
        double d = 0.0d;
        while (it2.hasNext()) {
            Entry next = it2.next();
            double value = next.getValue() - realVector.getEntry(next.getIndex());
            d += value * value;
        }
        return FastMath.sqrt(d);
    }

    public abstract double getEntry(int i) throws OutOfRangeException;

    public double getL1Distance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        Iterator<Entry> it2 = iterator();
        double d = 0.0d;
        while (it2.hasNext()) {
            Entry next = it2.next();
            d += FastMath.abs(next.getValue() - realVector.getEntry(next.getIndex()));
        }
        return d;
    }

    public double getL1Norm() {
        Iterator<Entry> it2 = iterator();
        double d = 0.0d;
        while (it2.hasNext()) {
            d += FastMath.abs(it2.next().getValue());
        }
        return d;
    }

    public double getLInfDistance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        Iterator<Entry> it2 = iterator();
        double d = 0.0d;
        while (it2.hasNext()) {
            Entry next = it2.next();
            d = FastMath.max(FastMath.abs(next.getValue() - realVector.getEntry(next.getIndex())), d);
        }
        return d;
    }

    public double getLInfNorm() {
        Iterator<Entry> it2 = iterator();
        double d = 0.0d;
        while (it2.hasNext()) {
            d = FastMath.max(d, FastMath.abs(it2.next().getValue()));
        }
        return d;
    }

    public int getMaxIndex() {
        Iterator<Entry> it2 = iterator();
        int i = -1;
        double d = Double.NEGATIVE_INFINITY;
        while (it2.hasNext()) {
            Entry next = it2.next();
            if (next.getValue() >= d) {
                i = next.getIndex();
                d = next.getValue();
            }
        }
        return i;
    }

    public double getMaxValue() {
        int maxIndex = getMaxIndex();
        if (maxIndex < 0) {
            return Double.NaN;
        }
        return getEntry(maxIndex);
    }

    public int getMinIndex() {
        Iterator<Entry> it2 = iterator();
        int i = -1;
        double d = Double.POSITIVE_INFINITY;
        while (it2.hasNext()) {
            Entry next = it2.next();
            if (next.getValue() <= d) {
                i = next.getIndex();
                d = next.getValue();
            }
        }
        return i;
    }

    public double getMinValue() {
        int minIndex = getMinIndex();
        if (minIndex < 0) {
            return Double.NaN;
        }
        return getEntry(minIndex);
    }

    public double getNorm() {
        Iterator<Entry> it2 = iterator();
        double d = 0.0d;
        while (it2.hasNext()) {
            double value = it2.next().getValue();
            d += value * value;
        }
        return FastMath.sqrt(d);
    }

    public abstract RealVector getSubVector(int i, int i2) throws NotPositiveException, OutOfRangeException;

    public int hashCode() throws MathUnsupportedOperationException {
        throw new MathUnsupportedOperationException();
    }

    public abstract boolean isInfinite();

    public abstract boolean isNaN();

    public Iterator<Entry> iterator() {
        return new C19174a(getDimension());
    }

    public RealVector map(UnivariateFunction univariateFunction) {
        return copy().mapToSelf(univariateFunction);
    }

    public RealVector mapAdd(double d) {
        return copy().mapAddToSelf(d);
    }

    public RealVector mapAddToSelf(double d) {
        return d != 0.0d ? mapToSelf(FunctionUtils.fix2ndArgument(new Add(), d)) : this;
    }

    public RealVector mapDivide(double d) {
        return copy().mapDivideToSelf(d);
    }

    public RealVector mapDivideToSelf(double d) {
        return mapToSelf(FunctionUtils.fix2ndArgument(new Divide(), d));
    }

    public RealVector mapMultiply(double d) {
        return copy().mapMultiplyToSelf(d);
    }

    public RealVector mapMultiplyToSelf(double d) {
        return mapToSelf(FunctionUtils.fix2ndArgument(new Multiply(), d));
    }

    public RealVector mapSubtract(double d) {
        return copy().mapSubtractToSelf(d);
    }

    public RealVector mapSubtractToSelf(double d) {
        return mapAddToSelf(-d);
    }

    public RealVector mapToSelf(UnivariateFunction univariateFunction) {
        Iterator<Entry> it2 = iterator();
        while (it2.hasNext()) {
            Entry next = it2.next();
            next.setValue(univariateFunction.value(next.getValue()));
        }
        return this;
    }

    public RealMatrix outerProduct(RealVector realVector) {
        int dimension = getDimension();
        int dimension2 = realVector.getDimension();
        RealMatrix openMapRealMatrix = ((realVector instanceof SparseRealVector) || (this instanceof SparseRealVector)) ? new OpenMapRealMatrix(dimension, dimension2) : new Array2DRowRealMatrix(dimension, dimension2);
        for (int i = 0; i < dimension; i++) {
            for (int i2 = 0; i2 < dimension2; i2++) {
                openMapRealMatrix.setEntry(i, i2, getEntry(i) * realVector.getEntry(i2));
            }
        }
        return openMapRealMatrix;
    }

    public RealVector projection(RealVector realVector) throws DimensionMismatchException, MathArithmeticException {
        if (realVector.dotProduct(realVector) != 0.0d) {
            return realVector.mapMultiply(dotProduct(realVector) / realVector.dotProduct(realVector));
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
    }

    public void set(double d) {
        Iterator<Entry> it2 = iterator();
        while (it2.hasNext()) {
            it2.next().setValue(d);
        }
    }

    public abstract void setEntry(int i, double d) throws OutOfRangeException;

    public abstract void setSubVector(int i, RealVector realVector) throws OutOfRangeException;

    public Iterator<Entry> sparseIterator() {
        return new SparseEntryIterator();
    }

    public RealVector subtract(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        RealVector mapMultiply = realVector.mapMultiply(-1.0d);
        Iterator<Entry> it2 = iterator();
        while (it2.hasNext()) {
            Entry next = it2.next();
            int index = next.getIndex();
            mapMultiply.setEntry(index, next.getValue() + mapMultiply.getEntry(index));
        }
        return mapMultiply;
    }

    public double[] toArray() {
        int dimension = getDimension();
        double[] dArr = new double[dimension];
        for (int i = 0; i < dimension; i++) {
            dArr[i] = getEntry(i);
        }
        return dArr;
    }

    public RealVector unitVector() throws MathArithmeticException {
        double norm = getNorm();
        if (norm != 0.0d) {
            return mapDivide(norm);
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
    }

    public void unitize() throws MathArithmeticException {
        if (getNorm() == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        mapDivideToSelf(getNorm());
    }

    public double walkInDefaultOrder(RealVectorPreservingVisitor realVectorPreservingVisitor) {
        int dimension = getDimension();
        realVectorPreservingVisitor.start(dimension, 0, dimension - 1);
        for (int i = 0; i < dimension; i++) {
            realVectorPreservingVisitor.visit(i, getEntry(i));
        }
        return realVectorPreservingVisitor.end();
    }

    public double walkInOptimizedOrder(RealVectorPreservingVisitor realVectorPreservingVisitor) {
        return walkInDefaultOrder(realVectorPreservingVisitor);
    }

    public void checkVectorDimensions(int i) throws DimensionMismatchException {
        int dimension = getDimension();
        if (dimension != i) {
            throw new DimensionMismatchException(dimension, i);
        }
    }

    public double walkInOptimizedOrder(RealVectorPreservingVisitor realVectorPreservingVisitor, int i, int i2) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInDefaultOrder(realVectorPreservingVisitor, i, i2);
    }

    public double walkInOptimizedOrder(RealVectorChangingVisitor realVectorChangingVisitor) {
        return walkInDefaultOrder(realVectorChangingVisitor);
    }

    public double walkInOptimizedOrder(RealVectorChangingVisitor realVectorChangingVisitor, int i, int i2) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInDefaultOrder(realVectorChangingVisitor, i, i2);
    }

    public double walkInDefaultOrder(RealVectorPreservingVisitor realVectorPreservingVisitor, int i, int i2) throws NumberIsTooSmallException, OutOfRangeException {
        checkIndices(i, i2);
        realVectorPreservingVisitor.start(getDimension(), i, i2);
        while (i <= i2) {
            realVectorPreservingVisitor.visit(i, getEntry(i));
            i++;
        }
        return realVectorPreservingVisitor.end();
    }

    public double walkInDefaultOrder(RealVectorChangingVisitor realVectorChangingVisitor) {
        int dimension = getDimension();
        realVectorChangingVisitor.start(dimension, 0, dimension - 1);
        for (int i = 0; i < dimension; i++) {
            setEntry(i, realVectorChangingVisitor.visit(i, getEntry(i)));
        }
        return realVectorChangingVisitor.end();
    }

    public double walkInDefaultOrder(RealVectorChangingVisitor realVectorChangingVisitor, int i, int i2) throws NumberIsTooSmallException, OutOfRangeException {
        checkIndices(i, i2);
        realVectorChangingVisitor.start(getDimension(), i, i2);
        while (i <= i2) {
            setEntry(i, realVectorChangingVisitor.visit(i, getEntry(i)));
            i++;
        }
        return realVectorChangingVisitor.end();
    }
}
