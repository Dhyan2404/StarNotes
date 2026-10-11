package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.aof;
import com.sunia.HTREnginev2.fwk;
import com.sunia.HTREnginev2.r5k;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

@GwtCompatible
@aof
/* loaded from: classes6.dex */
public abstract class AbstractIterator<T> implements Iterator<T> {

    /* renamed from: e */
    public State f33515e = State.NOT_READY;

    /* renamed from: f */
    @CheckForNull
    public T f33516f;

    /* loaded from: classes6.dex */
    public enum State {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    /* renamed from: com.google.common.base.AbstractIterator$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C5606a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f33517a;

        static {
            int[] iArr = new int[State.values().length];
            f33517a = iArr;
            try {
                iArr[State.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33517a[State.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @CheckForNull
    /* renamed from: a */
    public abstract T mo25762a();

    @CanIgnoreReturnValue
    @CheckForNull
    /* renamed from: b */
    public final T m25763b() {
        this.f33515e = State.DONE;
        return null;
    }

    /* renamed from: c */
    public final boolean m25764c() {
        this.f33515e = State.FAILED;
        this.f33516f = mo25762a();
        if (this.f33515e == State.DONE) {
            return false;
        }
        this.f33515e = State.READY;
        return true;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Preconditions.checkState(this.f33515e != State.FAILED);
        int i = C5606a.f33517a[this.f33515e.ordinal()];
        if (i == 1) {
            return false;
        }
        if (i != 2) {
            return m25764c();
        }
        return true;
    }

    @Override // java.util.Iterator
    @fwk
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f33515e = State.NOT_READY;
        T t = (T) r5k.m56889a(this.f33516f);
        this.f33516f = null;
        return t;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
