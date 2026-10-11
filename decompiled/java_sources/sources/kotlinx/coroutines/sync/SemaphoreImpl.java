package kotlinx.coroutines.sync;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.ugm;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.selects.SelectInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0010\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010 \u001a\u00020\u0018\u0012\u0006\u00101\u001a\u00020\u0018¢\u0006\u0004\b2\u00103J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0013\u0010\u0005\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u0016\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007H\u0005J\u001e\u0010\r\u001a\u00020\u00042\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0004J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\u0013\u0010\u000f\u001a\u00020\u0004H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0006Jd\u0010\u0016\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00102\u0006\u0010\b\u001a\u00028\u00002!\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00020\u00112!\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00040\u0011H\u0083\b¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0019\u001a\u00020\u0018H\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u001bH\u0002J\b\u0010\u001d\u001a\u00020\u0002H\u0002J\f\u0010\u001e\u001a\u00020\u0002*\u00020\u000bH\u0002R\u0014\u0010 \u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u001fR \u0010$\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u00040\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010'\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&R\u000b\u0010)\u001a\u00020(8\u0002X\u0082\u0004R\u000b\u0010+\u001a\u00020*8\u0002X\u0082\u0004R\u000b\u0010,\u001a\u00020*8\u0002X\u0082\u0004R\u0011\u0010/\u001a\b\u0012\u0004\u0012\u00020.0-8\u0002X\u0082\u0004R\u0011\u00100\u001a\b\u0012\u0004\u0012\u00020.0-8\u0002X\u0082\u0004\u0082\u0002\u0004\n\u0002\b\u0019¨\u00064"}, m61528d2 = {"Lkotlinx/coroutines/sync/SemaphoreImpl;", "Lkotlinx/coroutines/sync/Semaphore;", "", "tryAcquire", "", "acquire", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/CancellableContinuation;", "waiter", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "", "ignoredParam", "onAcquireRegFunction", "release", "c", "W", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "suspend", "onAcquired", "a", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "", C6997f.f39671c, "e", "Lkotlinx/coroutines/Waiter;", "d", C6999h.f39688c, C6998g.f39679a, "I", "permits", "", "b", "Lkotlin/jvm/functions/Function1;", "onCancellationRelease", "getAvailablePermits", "()I", "availablePermits", "Lkotlinx/atomicfu/AtomicInt;", "_availablePermits", "Lkotlinx/atomicfu/AtomicLong;", "deqIdx", "enqIdx", "Lkotlinx/atomicfu/AtomicRef;", "Lcom/sunia/HTREnginev2/ugm;", gon.f71289o, "tail", "acquiredPermits", Constants.CONSTRUCTOR_NAME, "(II)V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 5 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,397:1\n205#1,10:411\n205#1,10:421\n1#2:398\n332#3,12:399\n72#4,3:431\n46#4,8:434\n72#4,3:445\n46#4,8:448\n375#5:442\n375#5:443\n367#5:444\n378#5:456\n367#5:457\n375#5:458\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n*L\n197#1:411,10\n221#1:421,10\n187#1:399,12\n289#1:431,3\n289#1:434,8\n322#1:445,3\n322#1:448,8\n293#1:442\n299#1:443\n313#1:444\n328#1:456\n334#1:457\n337#1:458\n*E\n"})
/* loaded from: classes11.dex */
public class SemaphoreImpl implements Semaphore {

    /* renamed from: c */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98722c = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, gon.f71289o);

    /* renamed from: d */
    @NotNull
    public static final AtomicLongFieldUpdater f98723d = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "deqIdx");

    /* renamed from: e */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98724e = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "tail");

    /* renamed from: f */
    @NotNull
    public static final AtomicLongFieldUpdater f98725f = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "enqIdx");

    /* renamed from: g */
    @NotNull
    public static final AtomicIntegerFieldUpdater f98726g = AtomicIntegerFieldUpdater.newUpdater(SemaphoreImpl.class, "_availablePermits");

    @Volatile
    private volatile int _availablePermits;

    /* renamed from: a, reason: from kotlin metadata */
    public final int permits;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Function1<Throwable, Unit> onCancellationRelease;

    @Volatile
    private volatile long deqIdx;

    @Volatile
    private volatile long enqIdx;

    @Volatile
    @Nullable
    private volatile Object head;

    @Volatile
    @Nullable
    private volatile Object tail;

    public SemaphoreImpl(int i, int i2) {
        this.permits = i;
        if (!(i > 0)) {
            throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + i).toString());
        }
        if (!(i2 >= 0 && i2 <= i)) {
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + i).toString());
        }
        ugm ugmVar = new ugm(0L, null, 2);
        this.head = ugmVar;
        this.tail = ugmVar;
        this._availablePermits = i - i2;
        this.onCancellationRelease = new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.SemaphoreImpl$onCancellationRelease$1
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
                SemaphoreImpl.this.release();
            }
        };
    }

    /* renamed from: b */
    public static /* synthetic */ Object m62338b(SemaphoreImpl semaphoreImpl, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (semaphoreImpl.m62343f() > 0) {
            return Unit.INSTANCE;
        }
        Object m62340c = semaphoreImpl.m62340c(continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return m62340c == coroutine_suspended ? m62340c : Unit.INSTANCE;
    }

    /* renamed from: a */
    public final <W> void m62339a(W waiter, Function1<? super W, Boolean> suspend, Function1<? super W, Unit> onAcquired) {
        while (m62343f() <= 0) {
            if (suspend.invoke(waiter).booleanValue()) {
                return;
            }
        }
        onAcquired.invoke(waiter);
    }

    @Override // kotlinx.coroutines.sync.Semaphore
    @Nullable
    public Object acquire(@NotNull Continuation<? super Unit> continuation) {
        return m62338b(this, continuation);
    }

    /* renamed from: c */
    public final Object m62340c(Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(intercepted);
        try {
            if (!m62341d(orCreateCancellableContinuation)) {
                acquire((CancellableContinuation<? super Unit>) orCreateCancellableContinuation);
            }
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

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0037, code lost:
    
        r10 = true;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m62341d(kotlinx.coroutines.Waiter r17) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r2 = kotlinx.coroutines.sync.SemaphoreImpl.f98724e
            java.lang.Object r3 = r2.get(r0)
            com.sunia.HTREnginev2.ugm r3 = (com.sunia.HTREnginev2.ugm) r3
            java.util.concurrent.atomic.AtomicLongFieldUpdater r4 = kotlinx.coroutines.sync.SemaphoreImpl.f98725f
            long r4 = r4.getAndIncrement(r0)
            kotlinx.coroutines.sync.SemaphoreImpl$addAcquireToQueue$createNewSegment$1 r6 = kotlinx.coroutines.sync.SemaphoreImpl$addAcquireToQueue$createNewSegment$1.INSTANCE
            int r7 = kotlinx.coroutines.sync.SemaphoreKt.access$getSEGMENT_SIZE$p()
            long r7 = (long) r7
            long r7 = r4 / r7
        L1b:
            java.lang.Object r9 = kotlinx.coroutines.internal.ConcurrentLinkedListKt.findSegmentInternal(r3, r7, r6)
            boolean r10 = kotlinx.coroutines.internal.SegmentOrClosed.m74197isClosedimpl(r9)
            if (r10 != 0) goto L5e
            kotlinx.coroutines.internal.Segment r10 = kotlinx.coroutines.internal.SegmentOrClosed.m74195getSegmentimpl(r9)
        L29:
            java.lang.Object r13 = r2.get(r0)
            kotlinx.coroutines.internal.Segment r13 = (kotlinx.coroutines.internal.Segment) r13
            long r14 = r13.id
            long r11 = r10.id
            int r11 = (r14 > r11 ? 1 : (r14 == r11 ? 0 : -1))
            if (r11 < 0) goto L39
        L37:
            r10 = 1
            goto L51
        L39:
            boolean r11 = r10.tryIncPointers$kotlinx_coroutines_core()
            if (r11 != 0) goto L41
            r10 = 0
            goto L51
        L41:
            boolean r11 = com.sunia.HTREnginev2.C14434t4.m57298a(r2, r0, r13, r10)
            if (r11 == 0) goto L54
            boolean r10 = r13.decPointers$kotlinx_coroutines_core()
            if (r10 == 0) goto L37
            r13.remove()
            goto L37
        L51:
            if (r10 == 0) goto L1b
            goto L5e
        L54:
            boolean r11 = r10.decPointers$kotlinx_coroutines_core()
            if (r11 == 0) goto L29
            r10.remove()
            goto L29
        L5e:
            kotlinx.coroutines.internal.Segment r2 = kotlinx.coroutines.internal.SegmentOrClosed.m74195getSegmentimpl(r9)
            com.sunia.HTREnginev2.ugm r2 = (com.sunia.HTREnginev2.ugm) r2
            int r3 = kotlinx.coroutines.sync.SemaphoreKt.access$getSEGMENT_SIZE$p()
            long r6 = (long) r3
            long r4 = r4 % r6
            int r3 = (int) r4
            java.util.concurrent.atomic.AtomicReferenceArray r4 = r2.m57620g()
            r5 = 0
            boolean r4 = com.sunia.HTREnginev2.r1n.m56886a(r4, r3, r5, r1)
            if (r4 == 0) goto L7b
            r1.invokeOnCancellation(r2, r3)
            r0 = 1
            return r0
        L7b:
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.sync.SemaphoreKt.access$getPERMIT$p()
            kotlinx.coroutines.internal.Symbol r5 = kotlinx.coroutines.sync.SemaphoreKt.access$getTAKEN$p()
            java.util.concurrent.atomic.AtomicReferenceArray r2 = r2.m57620g()
            boolean r2 = com.sunia.HTREnginev2.r1n.m56886a(r2, r3, r4, r5)
            if (r2 == 0) goto Lca
            boolean r2 = r1 instanceof kotlinx.coroutines.CancellableContinuation
            if (r2 == 0) goto La1
            java.lang.String r2 = "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r2)
            kotlinx.coroutines.CancellableContinuation r1 = (kotlinx.coroutines.CancellableContinuation) r1
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            kotlin.jvm.functions.Function1<java.lang.Throwable, kotlin.Unit> r0 = r0.onCancellationRelease
            r1.resume(r2, r0)
        L9f:
            r0 = 1
            goto Lae
        La1:
            boolean r0 = r1 instanceof kotlinx.coroutines.selects.SelectInstance
            if (r0 == 0) goto Laf
            r0 = r1
            kotlinx.coroutines.selects.SelectInstance r0 = (kotlinx.coroutines.selects.SelectInstance) r0
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            r0.selectInRegistrationPhase(r1)
            goto L9f
        Lae:
            return r0
        Laf:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "unexpected: "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        Lca:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.SemaphoreImpl.m62341d(kotlinx.coroutines.Waiter):boolean");
    }

    /* renamed from: e */
    public final void m62342e() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        int i2;
        do {
            atomicIntegerFieldUpdater = f98726g;
            i = atomicIntegerFieldUpdater.get(this);
            i2 = this.permits;
            if (i <= i2) {
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i2));
    }

    /* renamed from: f */
    public final int m62343f() {
        int andDecrement;
        do {
            andDecrement = f98726g.getAndDecrement(this);
        } while (andDecrement > this.permits);
        return andDecrement;
    }

    /* renamed from: g */
    public final boolean m62344g(Object obj) {
        if (!(obj instanceof CancellableContinuation)) {
            if (obj instanceof SelectInstance) {
                return ((SelectInstance) obj).trySelect(this, Unit.INSTANCE);
            }
            throw new IllegalStateException(("unexpected: " + obj).toString());
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
        CancellableContinuation cancellableContinuation = (CancellableContinuation) obj;
        Object tryResume = cancellableContinuation.tryResume(Unit.INSTANCE, null, this.onCancellationRelease);
        if (tryResume == null) {
            return false;
        }
        cancellableContinuation.completeResume(tryResume);
        return true;
    }

    @Override // kotlinx.coroutines.sync.Semaphore
    public int getAvailablePermits() {
        return Math.max(f98726g.get(this), 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
    
        r9 = true;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m62345h() {
        /*
            r15 = this;
            r0 = r15
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = kotlinx.coroutines.sync.SemaphoreImpl.f98722c
            java.lang.Object r2 = r1.get(r15)
            com.sunia.HTREnginev2.ugm r2 = (com.sunia.HTREnginev2.ugm) r2
            java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = kotlinx.coroutines.sync.SemaphoreImpl.f98723d
            long r3 = r3.getAndIncrement(r15)
            int r5 = kotlinx.coroutines.sync.SemaphoreKt.access$getSEGMENT_SIZE$p()
            long r5 = (long) r5
            long r5 = r3 / r5
            kotlinx.coroutines.sync.SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1 r7 = kotlinx.coroutines.sync.SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1.INSTANCE
        L18:
            java.lang.Object r8 = kotlinx.coroutines.internal.ConcurrentLinkedListKt.findSegmentInternal(r2, r5, r7)
            boolean r9 = kotlinx.coroutines.internal.SegmentOrClosed.m74197isClosedimpl(r8)
            if (r9 != 0) goto L5b
            kotlinx.coroutines.internal.Segment r9 = kotlinx.coroutines.internal.SegmentOrClosed.m74195getSegmentimpl(r8)
        L26:
            java.lang.Object r12 = r1.get(r15)
            kotlinx.coroutines.internal.Segment r12 = (kotlinx.coroutines.internal.Segment) r12
            long r13 = r12.id
            long r10 = r9.id
            int r10 = (r13 > r10 ? 1 : (r13 == r10 ? 0 : -1))
            if (r10 < 0) goto L36
        L34:
            r9 = 1
            goto L4e
        L36:
            boolean r10 = r9.tryIncPointers$kotlinx_coroutines_core()
            if (r10 != 0) goto L3e
            r9 = 0
            goto L4e
        L3e:
            boolean r10 = com.sunia.HTREnginev2.C14434t4.m57298a(r1, r15, r12, r9)
            if (r10 == 0) goto L51
            boolean r9 = r12.decPointers$kotlinx_coroutines_core()
            if (r9 == 0) goto L34
            r12.remove()
            goto L34
        L4e:
            if (r9 == 0) goto L18
            goto L5b
        L51:
            boolean r10 = r9.decPointers$kotlinx_coroutines_core()
            if (r10 == 0) goto L26
            r9.remove()
            goto L26
        L5b:
            kotlinx.coroutines.internal.Segment r1 = kotlinx.coroutines.internal.SegmentOrClosed.m74195getSegmentimpl(r8)
            com.sunia.HTREnginev2.ugm r1 = (com.sunia.HTREnginev2.ugm) r1
            r1.cleanPrev()
            long r7 = r1.id
            int r2 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r2 <= 0) goto L6c
            r2 = 0
            return r2
        L6c:
            int r2 = kotlinx.coroutines.sync.SemaphoreKt.access$getSEGMENT_SIZE$p()
            long r5 = (long) r2
            long r3 = r3 % r5
            int r2 = (int) r3
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.sync.SemaphoreKt.access$getPERMIT$p()
            java.util.concurrent.atomic.AtomicReferenceArray r4 = r1.m57620g()
            java.lang.Object r3 = r4.getAndSet(r2, r3)
            if (r3 != 0) goto Laf
            int r0 = kotlinx.coroutines.sync.SemaphoreKt.access$getMAX_SPIN_CYCLES$p()
            r10 = 0
        L86:
            if (r10 >= r0) goto L9c
            java.util.concurrent.atomic.AtomicReferenceArray r3 = r1.m57620g()
            java.lang.Object r3 = r3.get(r2)
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.sync.SemaphoreKt.access$getTAKEN$p()
            if (r3 != r4) goto L98
            r3 = 1
            return r3
        L98:
            r3 = 1
            int r10 = r10 + 1
            goto L86
        L9c:
            r3 = 1
            kotlinx.coroutines.internal.Symbol r0 = kotlinx.coroutines.sync.SemaphoreKt.access$getPERMIT$p()
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.sync.SemaphoreKt.access$getBROKEN$p()
            java.util.concurrent.atomic.AtomicReferenceArray r1 = r1.m57620g()
            boolean r0 = com.sunia.HTREnginev2.r1n.m56886a(r1, r2, r0, r4)
            r0 = r0 ^ r3
            return r0
        Laf:
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.sync.SemaphoreKt.access$getCANCELLED$p()
            if (r3 != r1) goto Lb7
            r1 = 0
            return r1
        Lb7:
            boolean r0 = r15.m62344g(r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.SemaphoreImpl.m62345h():boolean");
    }

    public final void onAcquireRegFunction(@NotNull SelectInstance<?> select, @Nullable Object ignoredParam) {
        while (m62343f() <= 0) {
            Intrinsics.checkNotNull(select, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (m62341d((Waiter) select)) {
                return;
            }
        }
        select.selectInRegistrationPhase(Unit.INSTANCE);
    }

    @Override // kotlinx.coroutines.sync.Semaphore
    public void release() {
        do {
            int andIncrement = f98726g.getAndIncrement(this);
            if (andIncrement >= this.permits) {
                m62342e();
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.permits).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
        } while (!m62345h());
    }

    @Override // kotlinx.coroutines.sync.Semaphore
    public boolean tryAcquire() {
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f98726g;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i > this.permits) {
                m62342e();
            } else {
                if (i <= 0) {
                    return false;
                }
                if (atomicIntegerFieldUpdater.compareAndSet(this, i, i - 1)) {
                    return true;
                }
            }
        }
    }

    public final void acquire(@NotNull CancellableContinuation<? super Unit> waiter) {
        while (m62343f() <= 0) {
            Intrinsics.checkNotNull(waiter, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (m62341d((Waiter) waiter)) {
                return;
            }
        }
        waiter.resume(Unit.INSTANCE, this.onCancellationRelease);
    }
}
