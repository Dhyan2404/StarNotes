package org.apache.commons.math3.linear;

import java.io.Serializable;
import java.util.Iterator;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.OpenIntToDoubleHashMap;

/* loaded from: classes12.dex */
public class OpenMapRealVector extends SparseRealVector implements Serializable {
    public static final double DEFAULT_ZERO_TOLERANCE = 1.0E-12d;
    private static final long serialVersionUID = 8772222695580707260L;
    private final OpenIntToDoubleHashMap entries;
    private final double epsilon;
    private final int virtualSize;

    /* loaded from: classes12.dex */
    public class OpenMapEntry extends RealVector.Entry {

        /* renamed from: c */
        public final OpenIntToDoubleHashMap.Iterator f108521c;

        public OpenMapEntry(OpenIntToDoubleHashMap.Iterator iterator) {
            super();
            this.f108521c = iterator;
        }

        @Override // org.apache.commons.math3.linear.RealVector.Entry
        public int getIndex() {
            return this.f108521c.key();
        }

        @Override // org.apache.commons.math3.linear.RealVector.Entry
        public double getValue() {
            return this.f108521c.value();
        }

        @Override // org.apache.commons.math3.linear.RealVector.Entry
        public void setValue(double d) {
            OpenMapRealVector.this.entries.put(this.f108521c.key(), d);
        }
    }

    /* loaded from: classes12.dex */
    public class OpenMapSparseIterator implements Iterator<RealVector.Entry> {

        /* renamed from: e */
        public final OpenIntToDoubleHashMap.Iterator f108523e;

        /* renamed from: f */
        public final RealVector.Entry f108524f;

        public OpenMapSparseIterator() {
            OpenIntToDoubleHashMap.Iterator it2 = OpenMapRealVector.this.entries.iterator();
            this.f108523e = it2;
            this.f108524f = new OpenMapEntry(it2);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f108523e.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Not supported");
        }

        @Override // java.util.Iterator
        public RealVector.Entry next() {
            this.f108523e.advance();
            return this.f108524f;
        }
    }

    public OpenMapRealVector() {
        this(0, 1.0E-12d);
    }

    private OpenIntToDoubleHashMap getEntries() {
        return this.entries;
    }

    private double getLInfDistance(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        checkVectorDimensions(openMapRealVector.getDimension());
        OpenIntToDoubleHashMap.Iterator it2 = this.entries.iterator();
        double d = 0.0d;
        while (it2.hasNext()) {
            it2.advance();
            double abs = FastMath.abs(it2.value() - openMapRealVector.getEntry(it2.key()));
            if (abs > d) {
                d = abs;
            }
        }
        OpenIntToDoubleHashMap.Iterator it3 = openMapRealVector.getEntries().iterator();
        while (it3.hasNext()) {
            it3.advance();
            if (!this.entries.containsKey(it3.key()) && it3.value() > d) {
                d = it3.value();
            }
        }
        return d;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public RealVector add(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        if (realVector instanceof OpenMapRealVector) {
            return add((OpenMapRealVector) realVector);
        }
        return super.add(realVector);
    }

    @Deprecated
    public double dotProduct(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        return dotProduct((RealVector) openMapRealVector);
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OpenMapRealVector)) {
            return false;
        }
        OpenMapRealVector openMapRealVector = (OpenMapRealVector) obj;
        if (this.virtualSize != openMapRealVector.virtualSize || Double.doubleToLongBits(this.epsilon) != Double.doubleToLongBits(openMapRealVector.epsilon)) {
            return false;
        }
        OpenIntToDoubleHashMap.Iterator it2 = this.entries.iterator();
        while (it2.hasNext()) {
            it2.advance();
            if (Double.doubleToLongBits(openMapRealVector.getEntry(it2.key())) != Double.doubleToLongBits(it2.value())) {
                return false;
            }
        }
        OpenIntToDoubleHashMap.Iterator it3 = openMapRealVector.getEntries().iterator();
        while (it3.hasNext()) {
            it3.advance();
            if (Double.doubleToLongBits(it3.value()) != Double.doubleToLongBits(getEntry(it3.key()))) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public int getDimension() {
        return this.virtualSize;
    }

    public double getDistance(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        checkVectorDimensions(openMapRealVector.getDimension());
        OpenIntToDoubleHashMap.Iterator it2 = this.entries.iterator();
        double d = 0.0d;
        while (it2.hasNext()) {
            it2.advance();
            double value = it2.value() - openMapRealVector.getEntry(it2.key());
            d += value * value;
        }
        OpenIntToDoubleHashMap.Iterator it3 = openMapRealVector.getEntries().iterator();
        while (it3.hasNext()) {
            it3.advance();
            if (!this.entries.containsKey(it3.key())) {
                double value2 = it3.value();
                d += value2 * value2;
            }
        }
        return FastMath.sqrt(d);
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public double getEntry(int i) throws OutOfRangeException {
        checkIndex(i);
        return this.entries.get(i);
    }

    public double getL1Distance(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        checkVectorDimensions(openMapRealVector.getDimension());
        OpenIntToDoubleHashMap.Iterator it2 = this.entries.iterator();
        double d = 0.0d;
        while (it2.hasNext()) {
            it2.advance();
            d += FastMath.abs(it2.value() - openMapRealVector.getEntry(it2.key()));
        }
        OpenIntToDoubleHashMap.Iterator it3 = openMapRealVector.getEntries().iterator();
        while (it3.hasNext()) {
            it3.advance();
            if (!this.entries.containsKey(it3.key())) {
                d += FastMath.abs(FastMath.abs(it3.value()));
            }
        }
        return d;
    }

    public double getSparsity() {
        return this.entries.size() / getDimension();
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.epsilon);
        int i = ((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) + 31) * 31) + this.virtualSize;
        OpenIntToDoubleHashMap.Iterator it2 = this.entries.iterator();
        while (it2.hasNext()) {
            it2.advance();
            long doubleToLongBits2 = Double.doubleToLongBits(it2.value());
            i = (i * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >> 32)));
        }
        return i;
    }

    public boolean isDefaultValue(double d) {
        return FastMath.abs(d) < this.epsilon;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public boolean isInfinite() {
        OpenIntToDoubleHashMap.Iterator it2 = this.entries.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            it2.advance();
            double value = it2.value();
            if (Double.isNaN(value)) {
                return false;
            }
            if (Double.isInfinite(value)) {
                z = true;
            }
        }
        return z;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public boolean isNaN() {
        OpenIntToDoubleHashMap.Iterator it2 = this.entries.iterator();
        while (it2.hasNext()) {
            it2.advance();
            if (Double.isNaN(it2.value())) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public void set(double d) {
        for (int i = 0; i < this.virtualSize; i++) {
            setEntry(i, d);
        }
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public void setEntry(int i, double d) throws OutOfRangeException {
        checkIndex(i);
        if (!isDefaultValue(d)) {
            this.entries.put(i, d);
        } else if (this.entries.containsKey(i)) {
            this.entries.remove(i);
        }
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public void setSubVector(int i, RealVector realVector) throws OutOfRangeException {
        checkIndex(i);
        checkIndex((realVector.getDimension() + i) - 1);
        for (int i2 = 0; i2 < realVector.getDimension(); i2++) {
            setEntry(i2 + i, realVector.getEntry(i2));
        }
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public Iterator<RealVector.Entry> sparseIterator() {
        return new OpenMapSparseIterator();
    }

    public OpenMapRealVector subtract(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        checkVectorDimensions(openMapRealVector.getDimension());
        OpenMapRealVector copy = copy();
        OpenIntToDoubleHashMap.Iterator it2 = openMapRealVector.getEntries().iterator();
        while (it2.hasNext()) {
            it2.advance();
            int key = it2.key();
            if (this.entries.containsKey(key)) {
                copy.setEntry(key, this.entries.get(key) - it2.value());
            } else {
                copy.setEntry(key, -it2.value());
            }
        }
        return copy;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public double[] toArray() {
        double[] dArr = new double[this.virtualSize];
        OpenIntToDoubleHashMap.Iterator it2 = this.entries.iterator();
        while (it2.hasNext()) {
            it2.advance();
            dArr[it2.key()] = it2.value();
        }
        return dArr;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public void unitize() throws MathArithmeticException {
        double norm = getNorm();
        if (isDefaultValue(norm)) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        OpenIntToDoubleHashMap.Iterator it2 = this.entries.iterator();
        while (it2.hasNext()) {
            it2.advance();
            this.entries.put(it2.key(), it2.value() / norm);
        }
    }

    public OpenMapRealVector(int i) {
        this(i, 1.0E-12d);
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector copy() {
        return new OpenMapRealVector(this);
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector ebeDivide(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        OpenMapRealVector openMapRealVector = new OpenMapRealVector(this);
        int dimension = getDimension();
        for (int i = 0; i < dimension; i++) {
            openMapRealVector.setEntry(i, getEntry(i) / realVector.getEntry(i));
        }
        return openMapRealVector;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector ebeMultiply(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        OpenMapRealVector openMapRealVector = new OpenMapRealVector(this);
        OpenIntToDoubleHashMap.Iterator it2 = this.entries.iterator();
        while (it2.hasNext()) {
            it2.advance();
            openMapRealVector.setEntry(it2.key(), it2.value() * realVector.getEntry(it2.key()));
        }
        return openMapRealVector;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector getSubVector(int i, int i2) throws NotPositiveException, OutOfRangeException {
        checkIndex(i);
        if (i2 >= 0) {
            int i3 = i + i2;
            checkIndex(i3 - 1);
            OpenMapRealVector openMapRealVector = new OpenMapRealVector(i2);
            OpenIntToDoubleHashMap.Iterator it2 = this.entries.iterator();
            while (it2.hasNext()) {
                it2.advance();
                int key = it2.key();
                if (key >= i && key < i3) {
                    openMapRealVector.setEntry(key - i, it2.value());
                }
            }
            return openMapRealVector;
        }
        throw new NotPositiveException(LocalizedFormats.NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE, Integer.valueOf(i2));
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector mapAdd(double d) {
        return copy().mapAddToSelf(d);
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector mapAddToSelf(double d) {
        for (int i = 0; i < this.virtualSize; i++) {
            setEntry(i, getEntry(i) + d);
        }
        return this;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector unitVector() throws MathArithmeticException {
        OpenMapRealVector copy = copy();
        copy.unitize();
        return copy;
    }

    public OpenMapRealVector(int i, double d) {
        this.virtualSize = i;
        this.entries = new OpenIntToDoubleHashMap(0.0d);
        this.epsilon = d;
    }

    public OpenMapRealVector append(OpenMapRealVector openMapRealVector) {
        OpenMapRealVector openMapRealVector2 = new OpenMapRealVector(this, openMapRealVector.getDimension());
        OpenIntToDoubleHashMap.Iterator it2 = openMapRealVector.entries.iterator();
        while (it2.hasNext()) {
            it2.advance();
            openMapRealVector2.setEntry(it2.key() + this.virtualSize, it2.value());
        }
        return openMapRealVector2;
    }

    public OpenMapRealVector add(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        checkVectorDimensions(openMapRealVector.getDimension());
        boolean z = this.entries.size() > openMapRealVector.entries.size();
        OpenMapRealVector copy = z ? copy() : openMapRealVector.copy();
        OpenIntToDoubleHashMap.Iterator it2 = (z ? openMapRealVector.entries : this.entries).iterator();
        OpenIntToDoubleHashMap openIntToDoubleHashMap = z ? this.entries : openMapRealVector.entries;
        while (it2.hasNext()) {
            it2.advance();
            int key = it2.key();
            if (openIntToDoubleHashMap.containsKey(key)) {
                copy.setEntry(key, openIntToDoubleHashMap.get(key) + it2.value());
            } else {
                copy.setEntry(key, it2.value());
            }
        }
        return copy;
    }

    public OpenMapRealVector(OpenMapRealVector openMapRealVector, int i) {
        this.virtualSize = openMapRealVector.getDimension() + i;
        this.entries = new OpenIntToDoubleHashMap(openMapRealVector.entries);
        this.epsilon = openMapRealVector.epsilon;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector append(RealVector realVector) {
        if (realVector instanceof OpenMapRealVector) {
            return append((OpenMapRealVector) realVector);
        }
        OpenMapRealVector openMapRealVector = new OpenMapRealVector(this, realVector.getDimension());
        for (int i = 0; i < realVector.getDimension(); i++) {
            openMapRealVector.setEntry(this.virtualSize + i, realVector.getEntry(i));
        }
        return openMapRealVector;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public RealVector subtract(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        if (realVector instanceof OpenMapRealVector) {
            return subtract((OpenMapRealVector) realVector);
        }
        return super.subtract(realVector);
    }

    public OpenMapRealVector(int i, int i2) {
        this(i, i2, 1.0E-12d);
    }

    public OpenMapRealVector(int i, int i2, double d) {
        this.virtualSize = i;
        this.entries = new OpenIntToDoubleHashMap(i2, 0.0d);
        this.epsilon = d;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public double getLInfDistance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        if (realVector instanceof OpenMapRealVector) {
            return getLInfDistance((OpenMapRealVector) realVector);
        }
        return super.getLInfDistance(realVector);
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector append(double d) {
        OpenMapRealVector openMapRealVector = new OpenMapRealVector(this, 1);
        openMapRealVector.setEntry(this.virtualSize, d);
        return openMapRealVector;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public double getL1Distance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        if (realVector instanceof OpenMapRealVector) {
            return getL1Distance((OpenMapRealVector) realVector);
        }
        return super.getL1Distance(realVector);
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public double getDistance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        if (realVector instanceof OpenMapRealVector) {
            return getDistance((OpenMapRealVector) realVector);
        }
        return super.getDistance(realVector);
    }

    public OpenMapRealVector(double[] dArr) {
        this(dArr, 1.0E-12d);
    }

    public OpenMapRealVector(double[] dArr, double d) {
        this.virtualSize = dArr.length;
        this.entries = new OpenIntToDoubleHashMap(0.0d);
        this.epsilon = d;
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i];
            if (!isDefaultValue(d2)) {
                this.entries.put(i, d2);
            }
        }
    }

    public OpenMapRealVector(Double[] dArr) {
        this(dArr, 1.0E-12d);
    }

    public OpenMapRealVector(Double[] dArr, double d) {
        this.virtualSize = dArr.length;
        this.entries = new OpenIntToDoubleHashMap(0.0d);
        this.epsilon = d;
        for (int i = 0; i < dArr.length; i++) {
            double doubleValue = dArr[i].doubleValue();
            if (!isDefaultValue(doubleValue)) {
                this.entries.put(i, doubleValue);
            }
        }
    }

    public OpenMapRealVector(OpenMapRealVector openMapRealVector) {
        this.virtualSize = openMapRealVector.getDimension();
        this.entries = new OpenIntToDoubleHashMap(openMapRealVector.getEntries());
        this.epsilon = openMapRealVector.epsilon;
    }

    public OpenMapRealVector(RealVector realVector) {
        this.virtualSize = realVector.getDimension();
        this.entries = new OpenIntToDoubleHashMap(0.0d);
        this.epsilon = 1.0E-12d;
        for (int i = 0; i < this.virtualSize; i++) {
            double entry = realVector.getEntry(i);
            if (!isDefaultValue(entry)) {
                this.entries.put(i, entry);
            }
        }
    }
}
