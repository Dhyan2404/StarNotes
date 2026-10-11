package kotlinx.coroutines.sync;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.C14434t4;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectClause2;
import kotlinx.coroutines.selects.SelectClause2Impl;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectInstanceInternal;
import org.apache.poi.ss.util.CellUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002:\u0002./B\u000f\u0012\u0006\u0010+\u001a\u00020\u0005¢\u0006\u0004\b,\u0010-J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u001d\u0010\b\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\n\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\u000b\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u001e\u0010\u000e\u001a\u00020\u00072\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014J\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u0014J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\u0012\u0010\u0014\u001a\u00020\u00132\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002J\u001d\u0010\u0015\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\tJ\u0012\u0010\u0016\u001a\u00020\u00132\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002Rq\u0010!\u001a_\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\f¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\r\u0012\u0015\u0012\u0013\u0018\u00010\u0003¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0015\u0012\u0013\u0018\u00010\u0003¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00070\u001c0\u0017j\u0002`\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010\"\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R(\u0010)\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00020$8VX\u0096\u0004¢\u0006\f\u0012\u0004\b'\u0010(\u001a\u0004\b%\u0010&R\u0013\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030*8\u0002X\u0082\u0004\u0082\u0002\u0004\n\u0002\b\u0019¨\u00060"}, m61528d2 = {"Lkotlinx/coroutines/sync/MutexImpl;", "Lkotlinx/coroutines/sync/SemaphoreImpl;", "Lkotlinx/coroutines/sync/Mutex;", "", "owner", "", "holdsLock", "", DevicePushAction.LOCK_DEVICE, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tryLock", DevicePushAction.UNLOCK_DEVICE, "Lkotlinx/coroutines/selects/SelectInstance;", "select", "onLockRegFunction", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "onLockProcessResult", "", "toString", "", "i", C4921e.f26537n, "l", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", Constants.ELEMNAME_PARAMVARIABLE_STRING, "internalResult", "Lkotlin/Function1;", "", "Lkotlinx/coroutines/selects/OnCancellationConstructor;", C6999h.f39688c, "Lkotlin/jvm/functions/Function3;", "onSelectCancellationUnlockConstructor", "isLocked", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "Lkotlinx/coroutines/selects/SelectClause2;", "getOnLock", "()Lkotlinx/coroutines/selects/SelectClause2;", "getOnLock$annotations", "()V", "onLock", "Lkotlinx/atomicfu/AtomicRef;", CellUtil.LOCKED, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "CancellableContinuationWithOwner", "a", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n332#2,12:311\n1#3:323\n*S KotlinDebug\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n*L\n175#1:311,12\n*E\n"})
/* loaded from: classes11.dex */
public class MutexImpl extends SemaphoreImpl implements Mutex {

    /* renamed from: i */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98706i = AtomicReferenceFieldUpdater.newUpdater(MutexImpl.class, Object.class, "owner");

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Function3<SelectInstance<?>, Object, Object, Function1<Throwable, Unit>> onSelectCancellationUnlockConstructor;

    @Volatile
    @Nullable
    private volatile Object owner;

    @SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"})
    /* loaded from: classes11.dex */
    public final class CancellableContinuationWithOwner implements CancellableContinuation<Unit>, Waiter {

        /* renamed from: e */
        @JvmField
        @NotNull
        public final CancellableContinuationImpl<Unit> f98708e;

        /* renamed from: f */
        @JvmField
        @Nullable
        public final Object f98709f;

        /* JADX WARN: Multi-variable type inference failed */
        public CancellableContinuationWithOwner(@NotNull CancellableContinuationImpl<? super Unit> cancellableContinuationImpl, @Nullable Object obj) {
            this.f98708e = cancellableContinuationImpl;
            this.f98709f = obj;
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void resume(@NotNull Unit unit, @Nullable Function1<? super Throwable, Unit> function1) {
            MutexImpl.f98706i.set(MutexImpl.this, this.f98709f);
            CancellableContinuationImpl<Unit> cancellableContinuationImpl = this.f98708e;
            final MutexImpl mutexImpl = MutexImpl.this;
            cancellableContinuationImpl.resume(unit, new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner$resume$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Throwable th) {
                    MutexImpl.this.unlock(this.f98709f);
                }
            });
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        @ExperimentalCoroutinesApi
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void resumeUndispatched(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Unit unit) {
            this.f98708e.resumeUndispatched(coroutineDispatcher, unit);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        @InternalCoroutinesApi
        @Nullable
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public Object tryResume(@NotNull Unit unit, @Nullable Object obj) {
            return this.f98708e.tryResume(unit, obj);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public boolean cancel(@Nullable Throwable th) {
            return this.f98708e.cancel(th);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        @InternalCoroutinesApi
        public void completeResume(@NotNull Object obj) {
            this.f98708e.completeResume(obj);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        @Nullable
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public Object tryResume(@NotNull Unit unit, @Nullable Object obj, @Nullable Function1<? super Throwable, Unit> function1) {
            final MutexImpl mutexImpl = MutexImpl.this;
            Object tryResume = this.f98708e.tryResume(unit, obj, new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner$tryResume$token$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Throwable th) {
                    MutexImpl.f98706i.set(MutexImpl.this, this.f98709f);
                    MutexImpl.this.unlock(this.f98709f);
                }
            });
            if (tryResume != null) {
                MutexImpl.f98706i.set(MutexImpl.this, this.f98709f);
            }
            return tryResume;
        }

        @Override // kotlin.coroutines.Continuation
        @NotNull
        /* renamed from: getContext */
        public CoroutineContext get$context() {
            return this.f98708e.get$context();
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        @InternalCoroutinesApi
        public void initCancellability() {
            this.f98708e.initCancellability();
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public void invokeOnCancellation(@NotNull Function1<? super Throwable, Unit> function1) {
            this.f98708e.invokeOnCancellation(function1);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public boolean isActive() {
            return this.f98708e.isActive();
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public boolean isCancelled() {
            return this.f98708e.isCancelled();
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public boolean isCompleted() {
            return this.f98708e.isCompleted();
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        @ExperimentalCoroutinesApi
        public void resumeUndispatchedWithException(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Throwable th) {
            this.f98708e.resumeUndispatchedWithException(coroutineDispatcher, th);
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(@NotNull Object obj) {
            this.f98708e.resumeWith(obj);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        @InternalCoroutinesApi
        @Nullable
        public Object tryResumeWithException(@NotNull Throwable th) {
            return this.f98708e.tryResumeWithException(th);
        }

        @Override // kotlinx.coroutines.Waiter
        public void invokeOnCancellation(@NotNull Segment<?> segment, int i) {
            this.f98708e.invokeOnCancellation(segment, i);
        }
    }

    @SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"})
    /* renamed from: kotlinx.coroutines.sync.MutexImpl$a */
    /* loaded from: classes11.dex */
    public final class C18250a<Q> implements SelectInstanceInternal<Q> {

        /* renamed from: e */
        @JvmField
        @NotNull
        public final SelectInstanceInternal<Q> f98711e;

        /* renamed from: f */
        @JvmField
        @Nullable
        public final Object f98712f;

        public C18250a(@NotNull SelectInstanceInternal<Q> selectInstanceInternal, @Nullable Object obj) {
            this.f98711e = selectInstanceInternal;
            this.f98712f = obj;
        }

        @Override // kotlinx.coroutines.selects.SelectInstance
        public void disposeOnCompletion(@NotNull DisposableHandle disposableHandle) {
            this.f98711e.disposeOnCompletion(disposableHandle);
        }

        @Override // kotlinx.coroutines.selects.SelectInstance
        @NotNull
        public CoroutineContext getContext() {
            return this.f98711e.getContext();
        }

        @Override // kotlinx.coroutines.Waiter
        public void invokeOnCancellation(@NotNull Segment<?> segment, int i) {
            this.f98711e.invokeOnCancellation(segment, i);
        }

        @Override // kotlinx.coroutines.selects.SelectInstance
        public void selectInRegistrationPhase(@Nullable Object obj) {
            MutexImpl.f98706i.set(MutexImpl.this, this.f98712f);
            this.f98711e.selectInRegistrationPhase(obj);
        }

        @Override // kotlinx.coroutines.selects.SelectInstance
        public boolean trySelect(@NotNull Object obj, @Nullable Object obj2) {
            boolean trySelect = this.f98711e.trySelect(obj, obj2);
            MutexImpl mutexImpl = MutexImpl.this;
            if (trySelect) {
                MutexImpl.f98706i.set(mutexImpl, this.f98712f);
            }
            return trySelect;
        }
    }

    public MutexImpl(boolean z) {
        super(1, z ? 1 : 0);
        this.owner = z ? null : MutexKt.f98714a;
        this.onSelectCancellationUnlockConstructor = new Function3<SelectInstance<?>, Object, Object, Function1<? super Throwable, ? extends Unit>>() { // from class: kotlinx.coroutines.sync.MutexImpl$onSelectCancellationUnlockConstructor$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            @NotNull
            public final Function1<Throwable, Unit> invoke(@NotNull SelectInstance<?> selectInstance, @Nullable final Object obj, @Nullable Object obj2) {
                final MutexImpl mutexImpl = MutexImpl.this;
                return new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.MutexImpl$onSelectCancellationUnlockConstructor$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                        invoke2(th);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Throwable th) {
                        MutexImpl.this.unlock(obj);
                    }
                };
            }
        };
    }

    public static /* synthetic */ void getOnLock$annotations() {
    }

    /* renamed from: j */
    public static /* synthetic */ Object m62329j(MutexImpl mutexImpl, Object obj, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (mutexImpl.tryLock(obj)) {
            return Unit.INSTANCE;
        }
        Object m62331k = mutexImpl.m62331k(obj, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return m62331k == coroutine_suspended ? m62331k : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.sync.Mutex
    @NotNull
    public SelectClause2<Object, Mutex> getOnLock() {
        MutexImpl$onLock$1 mutexImpl$onLock$1 = MutexImpl$onLock$1.INSTANCE;
        Intrinsics.checkNotNull(mutexImpl$onLock$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(mutexImpl$onLock$1, 3);
        MutexImpl$onLock$2 mutexImpl$onLock$2 = MutexImpl$onLock$2.INSTANCE;
        Intrinsics.checkNotNull(mutexImpl$onLock$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new SelectClause2Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(mutexImpl$onLock$2, 3), this.onSelectCancellationUnlockConstructor);
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public boolean holdsLock(@NotNull Object owner) {
        return m62330i(owner) == 1;
    }

    /* renamed from: i */
    public final int m62330i(Object owner) {
        Symbol symbol;
        while (isLocked()) {
            Object obj = f98706i.get(this);
            symbol = MutexKt.f98714a;
            if (obj != symbol) {
                return obj == owner ? 1 : 2;
            }
        }
        return 0;
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public boolean isLocked() {
        return getAvailablePermits() == 0;
    }

    /* renamed from: k */
    public final Object m62331k(Object obj, Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(intercepted);
        try {
            acquire((CancellableContinuation<? super Unit>) new CancellableContinuationWithOwner(orCreateCancellableContinuation, obj));
            Object result = orCreateCancellableContinuation.getResult();
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (result == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return result == coroutine_suspended2 ? result : Unit.INSTANCE;
        } catch (Throwable th) {
            orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }

    /* renamed from: l */
    public final int m62332l(Object owner) {
        while (!tryAcquire()) {
            if (owner == null) {
                return 1;
            }
            int m62330i = m62330i(owner);
            if (m62330i == 1) {
                return 2;
            }
            if (m62330i == 2) {
                return 1;
            }
        }
        f98706i.set(this, owner);
        return 0;
    }

    @Override // kotlinx.coroutines.sync.Mutex
    @Nullable
    public Object lock(@Nullable Object obj, @NotNull Continuation<? super Unit> continuation) {
        return m62329j(this, obj, continuation);
    }

    @Nullable
    public Object onLockProcessResult(@Nullable Object owner, @Nullable Object result) {
        Symbol symbol;
        symbol = MutexKt.f98715b;
        if (!Intrinsics.areEqual(result, symbol)) {
            return this;
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + owner).toString());
    }

    public void onLockRegFunction(@NotNull SelectInstance<?> select, @Nullable Object owner) {
        Symbol symbol;
        if (owner == null || !holdsLock(owner)) {
            Intrinsics.checkNotNull(select, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectInstanceInternal<*>");
            onAcquireRegFunction(new C18250a((SelectInstanceInternal) select, owner), owner);
        } else {
            symbol = MutexKt.f98715b;
            select.selectInRegistrationPhase(symbol);
        }
    }

    @NotNull
    public String toString() {
        return "Mutex@" + DebugStringsKt.getHexAddress(this) + "[isLocked=" + isLocked() + ",owner=" + f98706i.get(this) + ']';
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public boolean tryLock(@Nullable Object owner) {
        int m62332l = m62332l(owner);
        if (m62332l == 0) {
            return true;
        }
        if (m62332l == 1) {
            return false;
        }
        if (m62332l != 2) {
            throw new IllegalStateException("unexpected".toString());
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + owner).toString());
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public void unlock(@Nullable Object owner) {
        Symbol symbol;
        Symbol symbol2;
        while (isLocked()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98706i;
            Object obj = atomicReferenceFieldUpdater.get(this);
            symbol = MutexKt.f98714a;
            if (obj != symbol) {
                if (!(obj == owner || owner == null)) {
                    throw new IllegalStateException(("This mutex is locked by " + obj + ", but " + owner + " is expected").toString());
                }
                symbol2 = MutexKt.f98714a;
                if (C14434t4.m57298a(atomicReferenceFieldUpdater, this, obj, symbol2)) {
                    release();
                    return;
                }
            }
        }
        throw new IllegalStateException("This mutex is not locked".toString());
    }
}
