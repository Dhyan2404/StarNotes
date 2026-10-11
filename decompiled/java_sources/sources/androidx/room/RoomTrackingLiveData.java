package androidx.room;

import android.annotation.SuppressLint;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.lifecycle.LiveData;
import androidx.room.InvalidationTracker;
import androidx.room.RoomTrackingLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B=\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\u0012\u000e\u0010=\u001a\n\u0012\u0006\b\u0001\u0012\u00020<0;¢\u0006\u0004\b>\u0010?J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0003H\u0014R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0017\u0010\u0015\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001d\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010!\u001a\u00020\u001c8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0017\u0010'\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0017\u0010*\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b(\u0010$\u001a\u0004\b)\u0010&R\u0017\u0010-\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b+\u0010$\u001a\u0004\b,\u0010&R\u0017\u00103\u001a\u00020.8\u0006¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u0017\u00106\u001a\u00020.8\u0006¢\u0006\f\n\u0004\b4\u00100\u001a\u0004\b5\u00102R\u0011\u0010:\u001a\u0002078F¢\u0006\u0006\u001a\u0004\b8\u00109¨\u0006@"}, m61528d2 = {"Landroidx/room/RoomTrackingLiveData;", "T", "Landroidx/lifecycle/LiveData;", "", "onActive", "onInactive", "Landroidx/room/RoomDatabase;", "m", "Landroidx/room/RoomDatabase;", "getDatabase", "()Landroidx/room/RoomDatabase;", "database", "Landroidx/room/InvalidationLiveDataContainer;", GoogleApiAvailabilityLight.f29016b, "Landroidx/room/InvalidationLiveDataContainer;", gon.f71270W, "", C4921e.f26528e, Constants.HASIDCALL_INDEX_SIG, "getInTransaction", Constants.BOOLEAN_VALUE_SIG, "inTransaction", "Ljava/util/concurrent/Callable;", "p", "Ljava/util/concurrent/Callable;", "getComputeFunction", "()Ljava/util/concurrent/Callable;", "computeFunction", "Landroidx/room/InvalidationTracker$Observer;", "q", "Landroidx/room/InvalidationTracker$Observer;", "getObserver", "()Landroidx/room/InvalidationTracker$Observer;", EventHandlerManager.OBSERVER, "Ljava/util/concurrent/atomic/AtomicBoolean;", "r", "Ljava/util/concurrent/atomic/AtomicBoolean;", "getInvalid", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "invalid", "s", "getComputing", "computing", "t", "getRegisteredObserver", "registeredObserver", "Ljava/lang/Runnable;", "u", "Ljava/lang/Runnable;", "getRefreshRunnable", "()Ljava/lang/Runnable;", "refreshRunnable", "v", "getInvalidationRunnable", "invalidationRunnable", "Ljava/util/concurrent/Executor;", "getQueryExecutor", "()Ljava/util/concurrent/Executor;", "queryExecutor", "", "", "tableNames", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/room/RoomDatabase;Landroidx/room/InvalidationLiveDataContainer;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V", "room-runtime_release"}, m61529k = 1, m61530mv = {1, 7, 1})
@SuppressLint({"RestrictedApi"})
/* loaded from: classes3.dex */
public final class RoomTrackingLiveData<T> extends LiveData<T> {

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final RoomDatabase database;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final InvalidationLiveDataContainer container;

    /* renamed from: o, reason: from kotlin metadata */
    public final boolean inTransaction;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final Callable<T> computeFunction;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final InvalidationTracker.Observer observer;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean invalid;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean computing;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean registeredObserver;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Runnable refreshRunnable;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Runnable invalidationRunnable;

    public RoomTrackingLiveData(@NotNull RoomDatabase database, @NotNull InvalidationLiveDataContainer container, boolean z, @NotNull Callable<T> computeFunction, @NotNull final String[] tableNames) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(computeFunction, "computeFunction");
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        this.database = database;
        this.container = container;
        this.inTransaction = z;
        this.computeFunction = computeFunction;
        this.observer = new InvalidationTracker.Observer(tableNames) { // from class: androidx.room.RoomTrackingLiveData$observer$1
            @Override // androidx.room.InvalidationTracker.Observer
            public void onInvalidated(@NotNull Set<String> tables) {
                Intrinsics.checkNotNullParameter(tables, "tables");
                ArchTaskExecutor.getInstance().executeOnMainThread(this.getInvalidationRunnable());
            }
        };
        this.invalid = new AtomicBoolean(true);
        this.computing = new AtomicBoolean(false);
        this.registeredObserver = new AtomicBoolean(false);
        this.refreshRunnable = new Runnable() { // from class: com.sunia.HTREnginev2.xrl
            @Override // java.lang.Runnable
            public final void run() {
                RoomTrackingLiveData.m6355i(RoomTrackingLiveData.this);
            }
        };
        this.invalidationRunnable = new Runnable() { // from class: com.sunia.HTREnginev2.yrl
            @Override // java.lang.Runnable
            public final void run() {
                RoomTrackingLiveData.m6354h(RoomTrackingLiveData.this);
            }
        };
    }

    /* renamed from: h */
    public static final void m6354h(RoomTrackingLiveData this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        boolean hasActiveObservers = this$0.hasActiveObservers();
        if (this$0.invalid.compareAndSet(false, true) && hasActiveObservers) {
            this$0.getQueryExecutor().execute(this$0.refreshRunnable);
        }
    }

    /* renamed from: i */
    public static final void m6355i(RoomTrackingLiveData this$0) {
        boolean z;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.registeredObserver.compareAndSet(false, true)) {
            this$0.database.getInvalidationTracker().addWeakObserver(this$0.observer);
        }
        do {
            if (this$0.computing.compareAndSet(false, true)) {
                T t = null;
                z = false;
                while (this$0.invalid.compareAndSet(true, false)) {
                    try {
                        try {
                            t = this$0.computeFunction.call();
                            z = true;
                        } catch (Exception e) {
                            throw new RuntimeException("Exception while computing database live data.", e);
                        }
                    } finally {
                        this$0.computing.set(false);
                    }
                }
                if (z) {
                    this$0.postValue(t);
                }
            } else {
                z = false;
            }
            if (!z) {
                return;
            }
        } while (this$0.invalid.get());
    }

    @NotNull
    public final Callable<T> getComputeFunction() {
        return this.computeFunction;
    }

    @NotNull
    public final AtomicBoolean getComputing() {
        return this.computing;
    }

    @NotNull
    public final RoomDatabase getDatabase() {
        return this.database;
    }

    public final boolean getInTransaction() {
        return this.inTransaction;
    }

    @NotNull
    public final AtomicBoolean getInvalid() {
        return this.invalid;
    }

    @NotNull
    public final Runnable getInvalidationRunnable() {
        return this.invalidationRunnable;
    }

    @NotNull
    public final InvalidationTracker.Observer getObserver() {
        return this.observer;
    }

    @NotNull
    public final Executor getQueryExecutor() {
        return this.inTransaction ? this.database.getTransactionExecutor() : this.database.getQueryExecutor();
    }

    @NotNull
    public final Runnable getRefreshRunnable() {
        return this.refreshRunnable;
    }

    @NotNull
    public final AtomicBoolean getRegisteredObserver() {
        return this.registeredObserver;
    }

    @Override // androidx.lifecycle.LiveData
    public void onActive() {
        super.onActive();
        InvalidationLiveDataContainer invalidationLiveDataContainer = this.container;
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.Any>");
        invalidationLiveDataContainer.onActive(this);
        getQueryExecutor().execute(this.refreshRunnable);
    }

    @Override // androidx.lifecycle.LiveData
    public void onInactive() {
        super.onInactive();
        InvalidationLiveDataContainer invalidationLiveDataContainer = this.container;
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.Any>");
        invalidationLiveDataContainer.onInactive(this);
    }
}
