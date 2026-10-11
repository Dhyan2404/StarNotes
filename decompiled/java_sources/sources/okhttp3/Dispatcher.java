package okhttp3;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b@\u0010AB\u0011\b\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b@\u0010BJ\u001b\u0010\b\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003H\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\t\u001a\u00020\u0005J\u0017\u0010\f\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u000e\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003H\u0000¢\u0006\u0004\b\r\u0010\u0007J\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\r\u0010\u000bJ\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fJ\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fJ\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0015\u001a\u00020\u0013J\u000f\u0010\u0019\u001a\u00020\u0016H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0016\u0010\u001c\u001a\b\u0018\u00010\u0002R\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\b\u0010\u001e\u001a\u00020\u001dH\u0002J+\u0010\"\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u001f2\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000 2\u0006\u0010\u0004\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\"\u0010#R*\u0010$\u001a\u00020\u00132\u0006\u0010$\u001a\u00020\u00138F@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R*\u0010*\u001a\u00020\u00132\u0006\u0010*\u001a\u00020\u00138F@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010%\u001a\u0004\b+\u0010'\"\u0004\b,\u0010)R.\u00104\u001a\u0004\u0018\u00010-2\b\u0010.\u001a\u0004\u0018\u00010-8F@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u001e\u0010;\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u0003088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R\u001e\u0010=\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u0003088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010:R\u001a\u0010?\u001a\b\u0012\u0004\u0012\u00020\u0003088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010:R\u0011\u0010\u0019\u001a\u00020\u00168G¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0018¨\u0006C"}, m61528d2 = {"Lokhttp3/Dispatcher;", "", "Lokhttp3/internal/connection/RealCall$AsyncCall;", "Lokhttp3/internal/connection/RealCall;", "call", "", "enqueue$okhttp", "(Lokhttp3/internal/connection/RealCall$AsyncCall;)V", "enqueue", "cancelAll", "executed$okhttp", "(Lokhttp3/internal/connection/RealCall;)V", "executed", "finished$okhttp", "finished", "", "Lokhttp3/Call;", "queuedCalls", "runningCalls", "", "queuedCallsCount", "runningCallsCount", "Ljava/util/concurrent/ExecutorService;", "-deprecated_executorService", "()Ljava/util/concurrent/ExecutorService;", "executorService", "", Http2ExchangeCodec.f103778h, "a", "", "c", "T", "Ljava/util/Deque;", Constants.ATTRNAME_METHOD, "b", "(Ljava/util/Deque;Ljava/lang/Object;)V", "maxRequests", "I", "getMaxRequests", "()I", "setMaxRequests", "(I)V", "maxRequestsPerHost", "getMaxRequestsPerHost", "setMaxRequestsPerHost", "Ljava/lang/Runnable;", "<set-?>", "Ljava/lang/Runnable;", "getIdleCallback", "()Ljava/lang/Runnable;", "setIdleCallback", "(Ljava/lang/Runnable;)V", "idleCallback", "d", "Ljava/util/concurrent/ExecutorService;", "executorServiceOrNull", "Ljava/util/ArrayDeque;", "e", "Ljava/util/ArrayDeque;", "readyAsyncCalls", C6997f.f39671c, "runningAsyncCalls", C6998g.f39679a, "runningSyncCalls", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "(Ljava/util/concurrent/ExecutorService;)V", "okhttp"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dispatcher.kt\nokhttp3/Dispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,241:1\n1#2:242\n615#3,4:243\n1549#4:247\n1620#4,3:248\n1549#4:251\n1620#4,3:252\n*S KotlinDebug\n*F\n+ 1 Dispatcher.kt\nokhttp3/Dispatcher\n*L\n162#1:243,4\n222#1:247\n222#1:248,3\n227#1:251\n227#1:252,3\n*E\n"})
/* loaded from: classes11.dex */
public final class Dispatcher {

    /* renamed from: a, reason: from kotlin metadata */
    public int maxRequests;

    /* renamed from: b, reason: from kotlin metadata */
    public int maxRequestsPerHost;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Runnable idleCallback;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public ExecutorService executorServiceOrNull;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final ArrayDeque<RealCall.AsyncCall> readyAsyncCalls;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ArrayDeque<RealCall.AsyncCall> runningAsyncCalls;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ArrayDeque<RealCall> runningSyncCalls;

    public Dispatcher() {
        this.maxRequests = 64;
        this.maxRequestsPerHost = 5;
        this.readyAsyncCalls = new ArrayDeque<>();
        this.runningAsyncCalls = new ArrayDeque<>();
        this.runningSyncCalls = new ArrayDeque<>();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "executorService", imports = {}))
    @JvmName(name = "-deprecated_executorService")
    @NotNull
    /* renamed from: -deprecated_executorService, reason: not valid java name */
    public final ExecutorService m74241deprecated_executorService() {
        return executorService();
    }

    /* renamed from: a */
    public final RealCall.AsyncCall m64787a(String host) {
        Iterator<RealCall.AsyncCall> it2 = this.runningAsyncCalls.iterator();
        while (it2.hasNext()) {
            RealCall.AsyncCall next = it2.next();
            if (Intrinsics.areEqual(next.getHost(), host)) {
                return next;
            }
        }
        Iterator<RealCall.AsyncCall> it3 = this.readyAsyncCalls.iterator();
        while (it3.hasNext()) {
            RealCall.AsyncCall next2 = it3.next();
            if (Intrinsics.areEqual(next2.getHost(), host)) {
                return next2;
            }
        }
        return null;
    }

    /* renamed from: b */
    public final <T> void m64788b(Deque<T> calls, T call) {
        Runnable runnable;
        synchronized (this) {
            if (!calls.remove(call)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            runnable = this.idleCallback;
            Unit unit = Unit.INSTANCE;
        }
        if (m64789c() || runnable == null) {
            return;
        }
        runnable.run();
    }

    /* renamed from: c */
    public final boolean m64789c() {
        int i;
        boolean z;
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<RealCall.AsyncCall> it2 = this.readyAsyncCalls.iterator();
            Intrinsics.checkNotNullExpressionValue(it2, "readyAsyncCalls.iterator()");
            while (it2.hasNext()) {
                RealCall.AsyncCall asyncCall = it2.next();
                if (this.runningAsyncCalls.size() >= this.maxRequests) {
                    break;
                }
                if (asyncCall.getCallsPerHost().get() < this.maxRequestsPerHost) {
                    it2.remove();
                    asyncCall.getCallsPerHost().incrementAndGet();
                    Intrinsics.checkNotNullExpressionValue(asyncCall, "asyncCall");
                    arrayList.add(asyncCall);
                    this.runningAsyncCalls.add(asyncCall);
                }
            }
            z = runningCallsCount() > 0;
            Unit unit = Unit.INSTANCE;
        }
        int size = arrayList.size();
        for (i = 0; i < size; i++) {
            ((RealCall.AsyncCall) arrayList.get(i)).executeOn(executorService());
        }
        return z;
    }

    public final synchronized void cancelAll() {
        Iterator<RealCall.AsyncCall> it2 = this.readyAsyncCalls.iterator();
        while (it2.hasNext()) {
            it2.next().getF103588g().cancel();
        }
        Iterator<RealCall.AsyncCall> it3 = this.runningAsyncCalls.iterator();
        while (it3.hasNext()) {
            it3.next().getF103588g().cancel();
        }
        Iterator<RealCall> it4 = this.runningSyncCalls.iterator();
        while (it4.hasNext()) {
            it4.next().cancel();
        }
    }

    public final void enqueue$okhttp(@NotNull RealCall.AsyncCall call) {
        RealCall.AsyncCall m64787a;
        Intrinsics.checkNotNullParameter(call, "call");
        synchronized (this) {
            this.readyAsyncCalls.add(call);
            if (!call.getF103588g().getForWebSocket() && (m64787a = m64787a(call.getHost())) != null) {
                call.reuseCallsPerHostFrom(m64787a);
            }
            Unit unit = Unit.INSTANCE;
        }
        m64789c();
    }

    public final synchronized void executed$okhttp(@NotNull RealCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.runningSyncCalls.add(call);
    }

    @JvmName(name = "executorService")
    @NotNull
    public final synchronized ExecutorService executorService() {
        ExecutorService executorService;
        if (this.executorServiceOrNull == null) {
            this.executorServiceOrNull = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory(Util.okHttpName + " Dispatcher", false));
        }
        executorService = this.executorServiceOrNull;
        Intrinsics.checkNotNull(executorService);
        return executorService;
    }

    public final void finished$okhttp(@NotNull RealCall.AsyncCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        call.getCallsPerHost().decrementAndGet();
        m64788b(this.runningAsyncCalls, call);
    }

    @Nullable
    public final synchronized Runnable getIdleCallback() {
        return this.idleCallback;
    }

    public final synchronized int getMaxRequests() {
        return this.maxRequests;
    }

    public final synchronized int getMaxRequestsPerHost() {
        return this.maxRequestsPerHost;
    }

    @NotNull
    public final synchronized List<Call> queuedCalls() {
        int collectionSizeOrDefault;
        List<Call> unmodifiableList;
        ArrayDeque<RealCall.AsyncCall> arrayDeque = this.readyAsyncCalls;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayDeque, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = arrayDeque.iterator();
        while (it2.hasNext()) {
            arrayList.add(((RealCall.AsyncCall) it2.next()).getF103588g());
        }
        unmodifiableList = Collections.unmodifiableList(arrayList);
        Intrinsics.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(readyAsyncCalls.map { it.call })");
        return unmodifiableList;
    }

    public final synchronized int queuedCallsCount() {
        return this.readyAsyncCalls.size();
    }

    @NotNull
    public final synchronized List<Call> runningCalls() {
        int collectionSizeOrDefault;
        List plus;
        List<Call> unmodifiableList;
        ArrayDeque<RealCall> arrayDeque = this.runningSyncCalls;
        ArrayDeque<RealCall.AsyncCall> arrayDeque2 = this.runningAsyncCalls;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayDeque2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = arrayDeque2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((RealCall.AsyncCall) it2.next()).getF103588g());
        }
        plus = CollectionsKt___CollectionsKt.plus((Collection) arrayDeque, (Iterable) arrayList);
        unmodifiableList = Collections.unmodifiableList(plus);
        Intrinsics.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(running…yncCalls.map { it.call })");
        return unmodifiableList;
    }

    public final synchronized int runningCallsCount() {
        return this.runningAsyncCalls.size() + this.runningSyncCalls.size();
    }

    public final synchronized void setIdleCallback(@Nullable Runnable runnable) {
        this.idleCallback = runnable;
    }

    public final void setMaxRequests(int i) {
        if (!(i >= 1)) {
            throw new IllegalArgumentException(("max < 1: " + i).toString());
        }
        synchronized (this) {
            this.maxRequests = i;
            Unit unit = Unit.INSTANCE;
        }
        m64789c();
    }

    public final void setMaxRequestsPerHost(int i) {
        if (!(i >= 1)) {
            throw new IllegalArgumentException(("max < 1: " + i).toString());
        }
        synchronized (this) {
            this.maxRequestsPerHost = i;
            Unit unit = Unit.INSTANCE;
        }
        m64789c();
    }

    public final void finished$okhttp(@NotNull RealCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        m64788b(this.runningSyncCalls, call);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Dispatcher(@NotNull ExecutorService executorService) {
        this();
        Intrinsics.checkNotNullParameter(executorService, "executorService");
        this.executorServiceOrNull = executorService;
    }
}
