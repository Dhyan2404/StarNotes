package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.util.concurrent.AggregateFuture;
import com.google.errorprone.annotations.ForOverride;
import com.google.errorprone.annotations.OverridingMethodsMustInvokeSuper;
import com.sunia.HTREnginev2.pnf;
import com.sunia.HTREnginev2.uvk;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@GwtCompatible
@pnf
/* loaded from: classes6.dex */
public abstract class AggregateFuture<InputT, OutputT> extends AbstractC6411c<OutputT> {

    /* renamed from: t */
    public static final Logger f35238t = Logger.getLogger(AggregateFuture.class.getName());

    /* renamed from: q */
    @CheckForNull
    public ImmutableCollection<? extends ListenableFuture<? extends InputT>> f35239q;

    /* renamed from: r */
    public final boolean f35240r;

    /* renamed from: s */
    public final boolean f35241s;

    /* loaded from: classes6.dex */
    public enum ReleaseResourcesReason {
        OUTPUT_FUTURE_DONE,
        ALL_INPUT_FUTURES_PROCESSED
    }

    public AggregateFuture(ImmutableCollection<? extends ListenableFuture<? extends InputT>> immutableCollection, boolean z, boolean z2) {
        super(immutableCollection.size());
        this.f35239q = (ImmutableCollection) Preconditions.checkNotNull(immutableCollection);
        this.f35240r = z;
        this.f35241s = z2;
    }

    /* renamed from: G */
    public static boolean m27609G(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N */
    public /* synthetic */ void m27610N(ListenableFuture listenableFuture, int i) {
        try {
            if (listenableFuture.isCancelled()) {
                this.f35239q = null;
                cancel(false);
            } else {
                m27615I(i, listenableFuture);
            }
        } finally {
            m27611O(null);
        }
    }

    /* renamed from: P */
    public static void m27612P(Throwable th) {
        f35238t.log(Level.SEVERE, th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
    }

    @Override // com.google.common.util.concurrent.AbstractC6411c
    /* renamed from: A */
    public final void mo27613A(Set<Throwable> set) {
        Preconditions.checkNotNull(set);
        if (isCancelled()) {
            return;
        }
        Throwable tryInternalFastPathGetFailure = tryInternalFastPathGetFailure();
        Objects.requireNonNull(tryInternalFastPathGetFailure);
        m27609G(set, tryInternalFastPathGetFailure);
    }

    /* renamed from: H */
    public abstract void mo27614H(int i, @uvk InputT inputt);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: I */
    public final void m27615I(int i, Future<? extends InputT> future) {
        try {
            mo27614H(i, Futures.getDone(future));
        } catch (ExecutionException e) {
            m27618L(e.getCause());
        } catch (Throwable th) {
            m27618L(th);
        }
    }

    /* renamed from: J, reason: merged with bridge method [inline-methods] */
    public final void m27611O(@CheckForNull ImmutableCollection<? extends Future<? extends InputT>> immutableCollection) {
        int m27867C = m27867C();
        Preconditions.checkState(m27867C >= 0, "Less than 0 remaining futures");
        if (m27867C == 0) {
            m27620Q(immutableCollection);
        }
    }

    /* renamed from: K */
    public abstract void mo27617K();

    /* renamed from: L */
    public final void m27618L(Throwable th) {
        Preconditions.checkNotNull(th);
        if (this.f35240r && !setException(th) && m27609G(m27868D(), th)) {
            m27612P(th);
        } else if (th instanceof Error) {
            m27612P(th);
        }
    }

    /* renamed from: M */
    public final void m27619M() {
        Objects.requireNonNull(this.f35239q);
        if (this.f35239q.isEmpty()) {
            mo27617K();
            return;
        }
        if (!this.f35240r) {
            final ImmutableCollection<? extends ListenableFuture<? extends InputT>> immutableCollection = this.f35241s ? this.f35239q : null;
            Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.o9
                @Override // java.lang.Runnable
                public final void run() {
                    AggregateFuture.this.m27611O(immutableCollection);
                }
            };
            UnmodifiableIterator<? extends ListenableFuture<? extends InputT>> it2 = this.f35239q.iterator();
            while (it2.hasNext()) {
                it2.next().addListener(runnable, MoreExecutors.directExecutor());
            }
            return;
        }
        UnmodifiableIterator<? extends ListenableFuture<? extends InputT>> it3 = this.f35239q.iterator();
        final int i = 0;
        while (it3.hasNext()) {
            final ListenableFuture<? extends InputT> next = it3.next();
            next.addListener(new Runnable() { // from class: com.sunia.HTREnginev2.n9
                @Override // java.lang.Runnable
                public final void run() {
                    AggregateFuture.this.m27610N(next, i);
                }
            }, MoreExecutors.directExecutor());
            i++;
        }
    }

    /* renamed from: Q */
    public final void m27620Q(@CheckForNull ImmutableCollection<? extends Future<? extends InputT>> immutableCollection) {
        if (immutableCollection != null) {
            UnmodifiableIterator<? extends Future<? extends InputT>> it2 = immutableCollection.iterator();
            int i = 0;
            while (it2.hasNext()) {
                Future<? extends InputT> next = it2.next();
                if (!next.isCancelled()) {
                    m27615I(i, next);
                }
                i++;
            }
        }
        m27866B();
        mo27617K();
        mo27621R(ReleaseResourcesReason.ALL_INPUT_FUTURES_PROCESSED);
    }

    @ForOverride
    @OverridingMethodsMustInvokeSuper
    /* renamed from: R */
    public void mo27621R(ReleaseResourcesReason releaseResourcesReason) {
        Preconditions.checkNotNull(releaseResourcesReason);
        this.f35239q = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void afterDone() {
        super.afterDone();
        ImmutableCollection<? extends ListenableFuture<? extends InputT>> immutableCollection = this.f35239q;
        mo27621R(ReleaseResourcesReason.OUTPUT_FUTURE_DONE);
        if (isCancelled() && (immutableCollection != null)) {
            boolean wasInterrupted = wasInterrupted();
            UnmodifiableIterator<? extends ListenableFuture<? extends InputT>> it2 = immutableCollection.iterator();
            while (it2.hasNext()) {
                it2.next().cancel(wasInterrupted);
            }
        }
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    @CheckForNull
    public final String pendingToString() {
        ImmutableCollection<? extends ListenableFuture<? extends InputT>> immutableCollection = this.f35239q;
        if (immutableCollection == null) {
            return super.pendingToString();
        }
        String valueOf = String.valueOf(immutableCollection);
        StringBuilder sb = new StringBuilder(valueOf.length() + 8);
        sb.append("futures=");
        sb.append(valueOf);
        return sb.toString();
    }
}
