package org.apache.commons.math3.util;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.IntegerSequence;

@Deprecated
/* loaded from: classes12.dex */
public class Incrementor {

    /* renamed from: a */
    public int f109892a;

    /* renamed from: b */
    public int f109893b;

    /* renamed from: c */
    public final MaxCountExceededCallback f109894c;

    /* loaded from: classes12.dex */
    public interface MaxCountExceededCallback {
        void trigger(int i) throws MaxCountExceededException;
    }

    /* renamed from: org.apache.commons.math3.util.Incrementor$a */
    /* loaded from: classes12.dex */
    public class C19293a implements MaxCountExceededCallback {
        @Override // org.apache.commons.math3.util.Incrementor.MaxCountExceededCallback
        public void trigger(int i) throws MaxCountExceededException {
            throw new MaxCountExceededException(Integer.valueOf(i));
        }
    }

    /* renamed from: org.apache.commons.math3.util.Incrementor$b */
    /* loaded from: classes12.dex */
    public static class C19294b extends Incrementor {

        /* renamed from: d */
        public IntegerSequence.Incrementor f109895d;

        /* renamed from: e */
        public final /* synthetic */ IntegerSequence.Incrementor f109896e;

        public C19294b(IntegerSequence.Incrementor incrementor) {
            this.f109896e = incrementor;
            this.f109895d = incrementor;
            super.setMaximalCount(incrementor.getMaximalCount());
            super.incrementCount(this.f109895d.getCount());
        }

        @Override // org.apache.commons.math3.util.Incrementor
        public void incrementCount() {
            super.incrementCount();
            this.f109895d.increment();
        }

        @Override // org.apache.commons.math3.util.Incrementor
        public void resetCount() {
            super.resetCount();
            this.f109895d = this.f109895d.withStart(0);
        }

        @Override // org.apache.commons.math3.util.Incrementor
        public void setMaximalCount(int i) {
            super.setMaximalCount(i);
            this.f109895d = this.f109895d.withMaximalCount(i);
        }
    }

    public Incrementor() {
        this(0);
    }

    public static Incrementor wrap(IntegerSequence.Incrementor incrementor) {
        return new C19294b(incrementor);
    }

    public boolean canIncrement() {
        return this.f109893b < this.f109892a;
    }

    public int getCount() {
        return this.f109893b;
    }

    public int getMaximalCount() {
        return this.f109892a;
    }

    public void incrementCount(int i) throws MaxCountExceededException {
        for (int i2 = 0; i2 < i; i2++) {
            incrementCount();
        }
    }

    public void resetCount() {
        this.f109893b = 0;
    }

    public void setMaximalCount(int i) {
        this.f109892a = i;
    }

    public Incrementor(int i) {
        this(i, new C19293a());
    }

    public void incrementCount() throws MaxCountExceededException {
        int i = this.f109893b + 1;
        this.f109893b = i;
        int i2 = this.f109892a;
        if (i > i2) {
            this.f109894c.trigger(i2);
        }
    }

    public Incrementor(int i, MaxCountExceededCallback maxCountExceededCallback) throws NullArgumentException {
        this.f109893b = 0;
        if (maxCountExceededCallback != null) {
            this.f109892a = i;
            this.f109894c = maxCountExceededCallback;
            return;
        }
        throw new NullArgumentException();
    }
}
