package org.apache.commons.math3.util;

import java.util.Iterator;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.ZeroException;

/* loaded from: classes12.dex */
public class IntegerSequence {

    /* loaded from: classes12.dex */
    public static class Incrementor implements Iterator<Integer> {

        /* renamed from: j */
        public static final MaxCountExceededCallback f109897j = new C19295a();

        /* renamed from: e */
        public final int f109898e;

        /* renamed from: f */
        public final int f109899f;

        /* renamed from: g */
        public final int f109900g;

        /* renamed from: h */
        public final MaxCountExceededCallback f109901h;

        /* renamed from: i */
        public int f109902i;

        /* loaded from: classes12.dex */
        public interface MaxCountExceededCallback {
            void trigger(int i) throws MaxCountExceededException;
        }

        /* renamed from: org.apache.commons.math3.util.IntegerSequence$Incrementor$a */
        /* loaded from: classes12.dex */
        public static class C19295a implements MaxCountExceededCallback {
            @Override // org.apache.commons.math3.util.IntegerSequence.Incrementor.MaxCountExceededCallback
            public void trigger(int i) throws MaxCountExceededException {
                throw new MaxCountExceededException(Integer.valueOf(i));
            }
        }

        public Incrementor(int i, int i2, int i3, MaxCountExceededCallback maxCountExceededCallback) throws NullArgumentException {
            this.f109902i = 0;
            if (maxCountExceededCallback == null) {
                throw new NullArgumentException();
            }
            this.f109898e = i;
            this.f109899f = i2;
            this.f109900g = i3;
            this.f109901h = maxCountExceededCallback;
            this.f109902i = i;
        }

        public static Incrementor create() {
            return new Incrementor(0, 0, 1, f109897j);
        }

        public boolean canIncrement() {
            return canIncrement(1);
        }

        public int getCount() {
            return this.f109902i;
        }

        public int getMaximalCount() {
            return this.f109899f;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return canIncrement(0);
        }

        public void increment(int i) throws MaxCountExceededException {
            if (i > 0) {
                if (!canIncrement(0)) {
                    this.f109901h.trigger(this.f109899f);
                }
                this.f109902i += i * this.f109900g;
                return;
            }
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new MathUnsupportedOperationException();
        }

        public Incrementor withCallback(MaxCountExceededCallback maxCountExceededCallback) {
            return new Incrementor(this.f109898e, this.f109899f, this.f109900g, maxCountExceededCallback);
        }

        public Incrementor withIncrement(int i) {
            if (i != 0) {
                return new Incrementor(this.f109898e, this.f109899f, i, this.f109901h);
            }
            throw new ZeroException();
        }

        public Incrementor withMaximalCount(int i) {
            return new Incrementor(this.f109898e, i, this.f109900g, this.f109901h);
        }

        public Incrementor withStart(int i) {
            return new Incrementor(i, this.f109899f, this.f109900g, this.f109901h);
        }

        public boolean canIncrement(int i) {
            int i2 = this.f109902i;
            int i3 = this.f109900g;
            int i4 = i2 + (i * i3);
            int i5 = this.f109899f;
            if (i3 < 0) {
                if (i4 > i5) {
                    return true;
                }
            } else if (i4 < i5) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public Integer next() {
            int i = this.f109902i;
            increment();
            return Integer.valueOf(i);
        }

        public void increment() throws MaxCountExceededException {
            increment(1);
        }
    }

    /* loaded from: classes12.dex */
    public static class Range implements Iterable<Integer> {

        /* renamed from: e */
        public final int f109903e;

        /* renamed from: f */
        public final int f109904f;

        /* renamed from: g */
        public final int f109905g;

        /* renamed from: h */
        public final int f109906h;

        public Range(int i, int i2, int i3) {
            this.f109904f = i;
            this.f109905g = i2;
            this.f109906h = i3;
            int i4 = ((i2 - i) / i3) + 1;
            this.f109903e = i4 < 0 ? 0 : i4;
        }

        @Override // java.lang.Iterable
        public Iterator<Integer> iterator() {
            return Incrementor.create().withStart(this.f109904f).withMaximalCount(this.f109905g + (this.f109906h > 0 ? 1 : -1)).withIncrement(this.f109906h);
        }

        public int size() {
            return this.f109903e;
        }
    }

    public static Range range(int i, int i2) {
        return range(i, i2, 1);
    }

    public static Range range(int i, int i2, int i3) {
        return new Range(i, i2, i3);
    }
}
