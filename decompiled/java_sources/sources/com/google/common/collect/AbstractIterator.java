package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.p5k;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public abstract class AbstractIterator<T> extends UnmodifiableIterator<T> {

    /* renamed from: e */
    public State f33860e = State.NOT_READY;

    /* renamed from: f */
    @CheckForNull
    public T f33861f;

    /* loaded from: classes6.dex */
    public enum State {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    /* renamed from: com.google.common.collect.AbstractIterator$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C5753a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f33862a;

        static {
            int[] iArr = new int[State.values().length];
            f33862a = iArr;
            try {
                iArr[State.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33862a[State.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: a */
    public final boolean m26007a() {
        this.f33860e = State.FAILED;
        this.f33861f = computeNext();
        if (this.f33860e == State.DONE) {
            return false;
        }
        this.f33860e = State.READY;
        return true;
    }

    @CheckForNull
    public abstract T computeNext();

    @CanIgnoreReturnValue
    @CheckForNull
    public final T endOfData() {
        this.f33860e = State.DONE;
        return null;
    }

    @Override // java.util.Iterator
    @CanIgnoreReturnValue
    public final boolean hasNext() {
        Preconditions.checkState(this.f33860e != State.FAILED);
        int i = C5753a.f33862a[this.f33860e.ordinal()];
        if (i == 1) {
            return false;
        }
        if (i != 2) {
            return m26007a();
        }
        return true;
    }

    @Override // java.util.Iterator
    @CanIgnoreReturnValue
    @xvk
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f33860e = State.NOT_READY;
        T t = (T) p5k.m56213a(this.f33861f);
        this.f33861f = null;
        return t;
    }

    @xvk
    public final T peek() {
        if (hasNext()) {
            return (T) p5k.m56213a(this.f33861f);
        }
        throw new NoSuchElementException();
    }
}
