package kotlinx.coroutines;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.C13658e6;
import com.sunia.HTREnginev2.C14434t4;
import com.sunia.HTREnginev2.aqi;
import com.sunia.HTREnginev2.b6e;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmName;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ê\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0011\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\u00060\u0004j\u0002`\u00052\u00020\u0006B\u001f\u0012\f\u0010n\u001a\b\u0012\u0004\u0012\u00028\u00000j\u0012\u0006\u0010(\u001a\u00020#¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001J\b\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0017\u0010\u000f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0082\bJ;\u0010\u0015\u001a\u00020\r2'\u0010\u0014\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\r0\u0010j\u0002`\u00132\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002J\u001e\u0010\u0018\u001a\u00020\r2\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u00162\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002J\b\u0010\u0019\u001a\u00020\u0007H\u0002J\b\u0010\u001a\u001a\u00020\u0007H\u0002J\n\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u001dH\u0002J\u001a\u0010 \u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u001d2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001dH\u0002J1\u0010\"\u001a\u00020!2'\u0010\u0014\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\r0\u0010j\u0002`\u0013H\u0002J\u0010\u0010%\u001a\u00020\r2\u0006\u0010$\u001a\u00020#H\u0002JS\u0010+\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001f\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u001d2\u0006\u0010(\u001a\u00020#2#\u0010)\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00102\b\u0010*\u001a\u0004\u0018\u00010\u001dH\u0002JA\u0010,\u001a\u00020\r2\b\u0010'\u001a\u0004\u0018\u00010\u001d2\u0006\u0010(\u001a\u00020#2%\b\u0002\u0010)\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0010H\u0002JC\u0010.\u001a\u0004\u0018\u00010-2\b\u0010'\u001a\u0004\u0018\u00010\u001d2\b\u0010*\u001a\u0004\u0018\u00010\u001d2#\u0010)\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0010H\u0002J\u0012\u00100\u001a\u00020/2\b\u0010'\u001a\u0004\u0018\u00010\u001dH\u0002J\b\u00101\u001a\u00020\rH\u0002J\b\u00102\u001a\u00020\rH\u0016J\b\u00103\u001a\u00020\u0007H\u0001J\u0010\u00106\u001a\n\u0018\u000104j\u0004\u0018\u0001`5H\u0016J\u0011\u00109\u001a\u0004\u0018\u00010\u001dH\u0010¢\u0006\u0004\b7\u00108J!\u0010=\u001a\u00020\r2\b\u0010:\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\n\u001a\u00020\tH\u0010¢\u0006\u0004\b;\u0010<J\u0012\u0010>\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0017\u0010A\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0004\b?\u0010@J\u0018\u0010B\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020!2\b\u0010\n\u001a\u0004\u0018\u00010\tJ1\u0010C\u001a\u00020\r2!\u0010)\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\r0\u00102\u0006\u0010\n\u001a\u00020\tJ\u0010\u0010F\u001a\u00020\t2\u0006\u0010E\u001a\u00020DH\u0016J\n\u0010G\u001a\u0004\u0018\u00010\u001dH\u0001J\u000f\u0010J\u001a\u00020\rH\u0000¢\u0006\u0004\bH\u0010IJ \u0010M\u001a\u00020\r2\f\u0010L\u001a\b\u0012\u0004\u0012\u00028\u00000KH\u0016ø\u0001\u0000¢\u0006\u0004\bM\u0010NJ<\u0010P\u001a\u00020\r2\u0006\u0010O\u001a\u00028\u00002#\u0010)\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0010H\u0016¢\u0006\u0004\bP\u0010QJ\u001c\u0010S\u001a\u00020\r2\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u00162\u0006\u0010R\u001a\u00020#H\u0016J1\u0010S\u001a\u00020\r2'\u0010\u0014\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\r0\u0010j\u0002`\u0013H\u0016J\u000f\u0010U\u001a\u00020\rH\u0000¢\u0006\u0004\bT\u0010IJ#\u0010V\u001a\u0004\u0018\u00010\u001d2\u0006\u0010O\u001a\u00028\u00002\b\u0010*\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\bV\u0010WJH\u0010V\u001a\u0004\u0018\u00010\u001d2\u0006\u0010O\u001a\u00028\u00002\b\u0010*\u001a\u0004\u0018\u00010\u001d2#\u0010)\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0010H\u0016¢\u0006\u0004\bV\u0010XJ\u0012\u0010Z\u001a\u0004\u0018\u00010\u001d2\u0006\u0010Y\u001a\u00020\tH\u0016J\u0010\u0010\\\u001a\u00020\r2\u0006\u0010[\u001a\u00020\u001dH\u0016J\u001b\u0010^\u001a\u00020\r*\u00020]2\u0006\u0010O\u001a\u00028\u0000H\u0016¢\u0006\u0004\b^\u0010_J\u0014\u0010`\u001a\u00020\r*\u00020]2\u0006\u0010Y\u001a\u00020\tH\u0016J\u001f\u0010c\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010\u001f\u001a\u0004\u0018\u00010\u001dH\u0010¢\u0006\u0004\ba\u0010bJ\u001b\u0010f\u001a\u0004\u0018\u00010\t2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001dH\u0010¢\u0006\u0004\bd\u0010eJ\b\u0010h\u001a\u00020gH\u0016J\b\u0010i\u001a\u00020gH\u0014R \u0010n\u001a\b\u0012\u0004\u0012\u00028\u00000j8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000b\u0010k\u001a\u0004\bl\u0010mR\u001a\u0010s\u001a\u00020o8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b1\u0010p\u001a\u0004\bq\u0010rR\u0016\u0010v\u001a\u0004\u0018\u00010\u001b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bt\u0010uR\u0014\u0010y\u001a\u00020g8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bw\u0010xR\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u001d8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bz\u00108R\u0014\u0010{\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b{\u0010|R\u0014\u0010}\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b}\u0010|R\u0014\u0010~\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b~\u0010|R\u001e\u0010\u0081\u0001\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u007f\u0010\u0080\u0001R\r\u0010\u0083\u0001\u001a\u00030\u0082\u00018\u0002X\u0082\u0004R\u0015\u0010\u0085\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0084\u00018\u0002X\u0082\u0004R\u0015\u0010\u0086\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u0084\u00018\u0002X\u0082\u0004\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0089\u0001"}, m61528d2 = {"Lkotlinx/coroutines/CancellableContinuationImpl;", "T", "Lkotlinx/coroutines/DispatchedTask;", "Lkotlinx/coroutines/CancellableContinuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/Waiter;", "", "l", "", "cause", "e", "Lkotlin/Function0;", "", BreakpointSQLiteHelper.f39283i, "c", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", Constants.TRANSLET_OUTPUT_PNAME, "b", "Lkotlinx/coroutines/internal/Segment;", "segment", "d", "v", "t", "Lkotlinx/coroutines/DisposableHandle;", "j", "", C4921e.f26537n, "state", "p", "Lkotlinx/coroutines/CancelHandler;", C4921e.f26528e, "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE, C6998g.f39679a, "Lkotlinx/coroutines/NotCompleted;", "proposedUpdate", "resumeMode", "onCancellation", "idempotent", "s", "q", "Lkotlinx/coroutines/internal/Symbol;", "u", "", "a", C6997f.f39671c, "initCancellability", "resetStateReusable", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "takeState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "takeState", "takenState", "cancelCompletedResult$kotlinx_coroutines_core", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelCompletedResult", "cancel", "parentCancelled$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)V", "parentCancelled", "callCancelHandler", "callOnCancellation", "Lkotlinx/coroutines/Job;", "parent", "getContinuationCancellationCause", "getResult", "releaseClaimedReusableContinuation$kotlinx_coroutines_core", "()V", "releaseClaimedReusableContinuation", "Lkotlin/Result;", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "resumeWith", "(Ljava/lang/Object;)V", "value", "resume", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", FirebaseAnalytics.Param.INDEX, "invokeOnCancellation", "detachChild$kotlinx_coroutines_core", "detachChild", "tryResume", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "exception", "tryResumeWithException", "token", "completeResume", "Lkotlinx/coroutines/CoroutineDispatcher;", "resumeUndispatched", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V", "resumeUndispatchedWithException", "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "getSuccessfulResult", "getExceptionalResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "getExceptionalResult", "", "toString", "nameString", "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/Continuation;", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "delegate", "Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", C6999h.f39688c, "()Lkotlinx/coroutines/DisposableHandle;", "parentHandle", "i", "()Ljava/lang/String;", "stateDebugRepresentation", "getState$kotlinx_coroutines_core", "isActive", Constants.BOOLEAN_VALUE_SIG, "isCompleted", "isCancelled", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlinx/atomicfu/AtomicInt;", "_decisionAndIndex", "Lkotlinx/atomicfu/AtomicRef;", "_parentHandle", "_state", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lkotlin/coroutines/Continuation;I)V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@PublishedApi
@SourceDebugExtension({"SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImplKt\n+ 4 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,662:1\n230#1,2:666\n232#1,8:669\n230#1,10:677\n230#1,10:688\n1#2:663\n24#3:664\n24#3:665\n22#3:687\n21#3:698\n22#3,3:699\n21#3:702\n22#3,3:703\n22#3:711\n21#3,4:712\n22#4:668\n13#4:710\n61#5,2:706\n61#5,2:708\n61#5,2:716\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n246#1:666,2\n246#1:669,8\n249#1:677,10\n254#1:688,10\n72#1:664\n158#1:665\n252#1:687\n277#1:698\n278#1:699,3\n287#1:702\n288#1:703,3\n389#1:711\n392#1:712,4\n246#1:668\n350#1:710\n329#1:706,2\n339#1:708,2\n613#1:716,2\n*E\n"})
/* loaded from: classes11.dex */
public class CancellableContinuationImpl<T> extends DispatchedTask<T> implements CancellableContinuation<T>, CoroutineStackFrame, Waiter {

    /* renamed from: g */
    @NotNull
    public static final AtomicIntegerFieldUpdater f98120g = AtomicIntegerFieldUpdater.newUpdater(CancellableContinuationImpl.class, "_decisionAndIndex");

    /* renamed from: h */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98121h = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_state");

    /* renamed from: i */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98122i = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_parentHandle");

    @Volatile
    private volatile int _decisionAndIndex;

    @Volatile
    @Nullable
    private volatile Object _parentHandle;

    @Volatile
    @Nullable
    private volatile Object _state;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Continuation<T> delegate;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final CoroutineContext context;

    /* JADX WARN: Multi-variable type inference failed */
    public CancellableContinuationImpl(@NotNull Continuation<? super T> continuation, int i) {
        super(i);
        this.delegate = continuation;
        this.context = continuation.get$context();
        this._decisionAndIndex = 536870911;
        this._state = C13658e6.f68614e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: r */
    public static /* synthetic */ void m61573r(CancellableContinuationImpl cancellableContinuationImpl, Object obj, int i, Function1 function1, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        cancellableContinuationImpl.m61590q(obj, i, function1);
    }

    /* renamed from: a */
    public final Void m61574a(Object proposedUpdate) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + proposedUpdate).toString());
    }

    /* renamed from: b */
    public final void m61575b(Function1<? super Throwable, Unit> handler, Throwable cause) {
        try {
            handler.invoke(cause);
        } catch (Throwable th) {
            CoroutineExceptionHandlerKt.handleCoroutineException(get$context(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th));
        }
    }

    /* renamed from: c */
    public final void m61576c(Function0<Unit> block) {
        try {
            block.invoke();
        } catch (Throwable th) {
            CoroutineExceptionHandlerKt.handleCoroutineException(get$context(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th));
        }
    }

    public final void callCancelHandler(@NotNull CancelHandler handler, @Nullable Throwable cause) {
        try {
            handler.invoke(cause);
        } catch (Throwable th) {
            CoroutineExceptionHandlerKt.handleCoroutineException(get$context(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th));
        }
    }

    public final void callOnCancellation(@NotNull Function1<? super Throwable, Unit> onCancellation, @NotNull Throwable cause) {
        try {
            onCancellation.invoke(cause);
        } catch (Throwable th) {
            CoroutineExceptionHandlerKt.handleCoroutineException(get$context(), new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th));
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean cancel(@Nullable Throwable cause) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98121h;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof NotCompleted)) {
                return false;
            }
        } while (!C14434t4.m57298a(f98121h, this, obj, new CancelledContinuation(this, cause, (obj instanceof CancelHandler) || (obj instanceof Segment))));
        NotCompleted notCompleted = (NotCompleted) obj;
        if (notCompleted instanceof CancelHandler) {
            callCancelHandler((CancelHandler) obj, cause);
        } else if (notCompleted instanceof Segment) {
            m61577d((Segment) obj, cause);
        }
        m61579f();
        m61580g(this.resumeMode);
        return true;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public void cancelCompletedResult$kotlinx_coroutines_core(@Nullable Object takenState, @NotNull Throwable cause) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98121h;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof NotCompleted) {
                throw new IllegalStateException("Not completed".toString());
            }
            if (obj instanceof CompletedExceptionally) {
                return;
            }
            if (obj instanceof b6e) {
                b6e b6eVar = (b6e) obj;
                if (!(!b6eVar.m53185h())) {
                    throw new IllegalStateException("Must be called at most once".toString());
                }
                if (C14434t4.m57298a(f98121h, this, obj, b6e.m53178g(b6eVar, null, null, null, null, cause, 15, null))) {
                    b6eVar.m53186i(this, cause);
                    return;
                }
            } else if (C14434t4.m57298a(f98121h, this, obj, new b6e(obj, null, null, null, cause, 14, null))) {
                return;
            }
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void completeResume(@NotNull Object token) {
        m61580g(this.resumeMode);
    }

    /* renamed from: d */
    public final void m61577d(Segment<?> segment, Throwable cause) {
        int i = f98120g.get(this) & 536870911;
        if (!(i != 536870911)) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken".toString());
        }
        try {
            segment.onCancellation(i, cause, get$context());
        } catch (Throwable th) {
            CoroutineExceptionHandlerKt.handleCoroutineException(get$context(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th));
        }
    }

    public final void detachChild$kotlinx_coroutines_core() {
        DisposableHandle m61581h = m61581h();
        if (m61581h == null) {
            return;
        }
        m61581h.dispose();
        f98122i.set(this, NonDisposableHandle.INSTANCE);
    }

    /* renamed from: e */
    public final boolean m61578e(Throwable cause) {
        if (!m61585l()) {
            return false;
        }
        Continuation<T> continuation = this.delegate;
        Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return ((DispatchedContinuation) continuation).postponeCancellation$kotlinx_coroutines_core(cause);
    }

    /* renamed from: f */
    public final void m61579f() {
        if (m61585l()) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
    }

    /* renamed from: g */
    public final void m61580g(int mode) {
        if (m61592t()) {
            return;
        }
        DispatchedTaskKt.dispatch(this, mode);
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.delegate;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    /* renamed from: getContext, reason: from getter */
    public CoroutineContext get$context() {
        return this.context;
    }

    @NotNull
    public Throwable getContinuationCancellationCause(@NotNull Job parent) {
        return parent.getCancellationException();
    }

    @Override // kotlinx.coroutines.DispatchedTask
    @NotNull
    public final Continuation<T> getDelegate$kotlinx_coroutines_core() {
        return this.delegate;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    @Nullable
    public Throwable getExceptionalResult$kotlinx_coroutines_core(@Nullable Object state) {
        Throwable exceptionalResult$kotlinx_coroutines_core = super.getExceptionalResult$kotlinx_coroutines_core(state);
        if (exceptionalResult$kotlinx_coroutines_core != null) {
            return exceptionalResult$kotlinx_coroutines_core;
        }
        return null;
    }

    @PublishedApi
    @Nullable
    public final Object getResult() {
        Job job;
        Object coroutine_suspended;
        boolean m61585l = m61585l();
        if (m61594v()) {
            if (m61581h() == null) {
                m61583j();
            }
            if (m61585l) {
                releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            }
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return coroutine_suspended;
        }
        if (m61585l) {
            releaseClaimedReusableContinuation$kotlinx_coroutines_core();
        }
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        }
        if (!DispatchedTaskKt.isCancellableMode(this.resumeMode) || (job = (Job) get$context().get(Job.INSTANCE)) == null || job.isActive()) {
            return getSuccessfulResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core);
        }
        CancellationException cancellationException = job.getCancellationException();
        cancelCompletedResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core, cancellationException);
        throw cancellationException;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Nullable
    public final Object getState$kotlinx_coroutines_core() {
        return f98121h.get(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.DispatchedTask
    public <T> T getSuccessfulResult$kotlinx_coroutines_core(@Nullable Object state) {
        return state instanceof b6e ? (T) ((b6e) state).f65431a : state;
    }

    /* renamed from: h */
    public final DisposableHandle m61581h() {
        return (DisposableHandle) f98122i.get(this);
    }

    /* renamed from: i */
    public final String m61582i() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return state$kotlinx_coroutines_core instanceof NotCompleted ? "Active" : state$kotlinx_coroutines_core instanceof CancelledContinuation ? "Cancelled" : "Completed";
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void initCancellability() {
        DisposableHandle m61583j = m61583j();
        if (m61583j != null && isCompleted()) {
            m61583j.dispose();
            f98122i.set(this, NonDisposableHandle.INSTANCE);
        }
    }

    @Override // kotlinx.coroutines.Waiter
    public void invokeOnCancellation(@NotNull Segment<?> segment, int index) {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f98120g;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            if (!((i & 536870911) == 536870911)) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once".toString());
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, ((i >> 29) << 29) + index));
        m61584k(segment);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean isActive() {
        return getState$kotlinx_coroutines_core() instanceof NotCompleted;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean isCancelled() {
        return getState$kotlinx_coroutines_core() instanceof CancelledContinuation;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof NotCompleted);
    }

    /* renamed from: j */
    public final DisposableHandle m61583j() {
        Job job = (Job) get$context().get(Job.INSTANCE);
        if (job == null) {
            return null;
        }
        DisposableHandle invokeOnCompletion$default = Job.DefaultImpls.invokeOnCompletion$default(job, true, false, new ChildContinuation(this), 2, null);
        C14434t4.m57298a(f98122i, this, null, invokeOnCompletion$default);
        return invokeOnCompletion$default;
    }

    /* renamed from: k */
    public final void m61584k(Object handler) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98121h;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof C13658e6)) {
                if (obj instanceof CancelHandler ? true : obj instanceof Segment) {
                    m61589p(handler, obj);
                } else {
                    boolean z = obj instanceof CompletedExceptionally;
                    if (z) {
                        CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
                        if (!completedExceptionally.makeHandled()) {
                            m61589p(handler, obj);
                        }
                        if (obj instanceof CancelledContinuation) {
                            if (!z) {
                                completedExceptionally = null;
                            }
                            Throwable th = completedExceptionally != null ? completedExceptionally.cause : null;
                            if (handler instanceof CancelHandler) {
                                callCancelHandler((CancelHandler) handler, th);
                                return;
                            } else {
                                Intrinsics.checkNotNull(handler, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                                m61577d((Segment) handler, th);
                                return;
                            }
                        }
                        return;
                    }
                    if (obj instanceof b6e) {
                        b6e b6eVar = (b6e) obj;
                        if (b6eVar.f65432b != null) {
                            m61589p(handler, obj);
                        }
                        if (handler instanceof Segment) {
                            return;
                        }
                        Intrinsics.checkNotNull(handler, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                        CancelHandler cancelHandler = (CancelHandler) handler;
                        if (b6eVar.m53185h()) {
                            callCancelHandler(cancelHandler, b6eVar.f65435e);
                            return;
                        } else {
                            if (C14434t4.m57298a(f98121h, this, obj, b6e.m53178g(b6eVar, null, cancelHandler, null, null, null, 29, null))) {
                                return;
                            }
                        }
                    } else {
                        if (handler instanceof Segment) {
                            return;
                        }
                        Intrinsics.checkNotNull(handler, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                        if (C14434t4.m57298a(f98121h, this, obj, new b6e(obj, (CancelHandler) handler, null, null, null, 28, null))) {
                            return;
                        }
                    }
                }
            } else if (C14434t4.m57298a(f98121h, this, obj, handler)) {
                return;
            }
        }
    }

    /* renamed from: l */
    public final boolean m61585l() {
        if (DispatchedTaskKt.isReusableMode(this.resumeMode)) {
            Continuation<T> continuation = this.delegate;
            Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (((DispatchedContinuation) continuation).isReusable$kotlinx_coroutines_core()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: m */
    public final void m61586m(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Function1<? super Integer, Unit> function1, Object obj) {
        while (true) {
            function1.invoke(Integer.valueOf(atomicIntegerFieldUpdater.get(obj)));
        }
    }

    /* renamed from: n */
    public final void m61587n(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1, Object obj) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    @NotNull
    public String nameString() {
        return "CancellableContinuation";
    }

    /* renamed from: o */
    public final CancelHandler m61588o(Function1<? super Throwable, Unit> handler) {
        return handler instanceof CancelHandler ? (CancelHandler) handler : new aqi(handler);
    }

    /* renamed from: p */
    public final void m61589p(Object handler, Object state) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + handler + ", already has " + state).toString());
    }

    public final void parentCancelled$kotlinx_coroutines_core(@NotNull Throwable cause) {
        if (m61578e(cause)) {
            return;
        }
        cancel(cause);
        m61579f();
    }

    /* renamed from: q */
    public final void m61590q(Object proposedUpdate, int resumeMode, Function1<? super Throwable, Unit> onCancellation) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98121h;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof NotCompleted)) {
                if (obj instanceof CancelledContinuation) {
                    CancelledContinuation cancelledContinuation = (CancelledContinuation) obj;
                    if (cancelledContinuation.makeResumed()) {
                        if (onCancellation != null) {
                            callOnCancellation(onCancellation, cancelledContinuation.cause);
                            return;
                        }
                        return;
                    }
                }
                m61574a(proposedUpdate);
                throw new KotlinNothingValueException();
            }
        } while (!C14434t4.m57298a(f98121h, this, obj, m61591s((NotCompleted) obj, proposedUpdate, resumeMode, onCancellation, null)));
        m61579f();
        m61580g(resumeMode);
    }

    public final void releaseClaimedReusableContinuation$kotlinx_coroutines_core() {
        Throwable tryReleaseClaimedContinuation$kotlinx_coroutines_core;
        Continuation<T> continuation = this.delegate;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        if (dispatchedContinuation == null || (tryReleaseClaimedContinuation$kotlinx_coroutines_core = dispatchedContinuation.tryReleaseClaimedContinuation$kotlinx_coroutines_core(this)) == null) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
        cancel(tryReleaseClaimedContinuation$kotlinx_coroutines_core);
    }

    @JvmName(name = "resetStateReusable")
    public final boolean resetStateReusable() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98121h;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if ((obj instanceof b6e) && ((b6e) obj).f65434d != null) {
            detachChild$kotlinx_coroutines_core();
            return false;
        }
        f98120g.set(this, 536870911);
        atomicReferenceFieldUpdater.set(this, C13658e6.f68614e);
        return true;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void resume(T value, @Nullable Function1<? super Throwable, Unit> onCancellation) {
        m61590q(value, this.resumeMode, onCancellation);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void resumeUndispatched(@NotNull CoroutineDispatcher coroutineDispatcher, T t) {
        Continuation<T> continuation = this.delegate;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        m61573r(this, t, (dispatchedContinuation != null ? dispatchedContinuation.dispatcher : null) == coroutineDispatcher ? 4 : this.resumeMode, null, 4, null);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void resumeUndispatchedWithException(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Throwable th) {
        Continuation<T> continuation = this.delegate;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        m61573r(this, new CompletedExceptionally(th, false, 2, null), (dispatchedContinuation != null ? dispatchedContinuation.dispatcher : null) == coroutineDispatcher ? 4 : this.resumeMode, null, 4, null);
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object result) {
        m61573r(this, CompletionStateKt.toState(result, this), this.resumeMode, null, 4, null);
    }

    /* renamed from: s */
    public final Object m61591s(NotCompleted state, Object proposedUpdate, int resumeMode, Function1<? super Throwable, Unit> onCancellation, Object idempotent) {
        if (proposedUpdate instanceof CompletedExceptionally) {
            return proposedUpdate;
        }
        if (!DispatchedTaskKt.isCancellableMode(resumeMode) && idempotent == null) {
            return proposedUpdate;
        }
        if (onCancellation == null && !(state instanceof CancelHandler) && idempotent == null) {
            return proposedUpdate;
        }
        return new b6e(proposedUpdate, state instanceof CancelHandler ? (CancelHandler) state : null, onCancellation, idempotent, null, 16, null);
    }

    /* renamed from: t */
    public final boolean m61592t() {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f98120g;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f98120g.compareAndSet(this, i, 1073741824 + (536870911 & i)));
        return true;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    @Nullable
    public Object takeState$kotlinx_coroutines_core() {
        return getState$kotlinx_coroutines_core();
    }

    @NotNull
    public String toString() {
        return nameString() + '(' + DebugStringsKt.toDebugString(this.delegate) + "){" + m61582i() + "}@" + DebugStringsKt.getHexAddress(this);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    @Nullable
    public Object tryResume(T value, @Nullable Object idempotent) {
        return m61593u(value, idempotent, null);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    @Nullable
    public Object tryResumeWithException(@NotNull Throwable exception) {
        return m61593u(new CompletedExceptionally(exception, false, 2, null), null, null);
    }

    /* renamed from: u */
    public final Symbol m61593u(Object proposedUpdate, Object idempotent, Function1<? super Throwable, Unit> onCancellation) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98121h;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof NotCompleted)) {
                if ((obj instanceof b6e) && idempotent != null && ((b6e) obj).f65434d == idempotent) {
                    return CancellableContinuationImplKt.RESUME_TOKEN;
                }
                return null;
            }
        } while (!C14434t4.m57298a(f98121h, this, obj, m61591s((NotCompleted) obj, proposedUpdate, this.resumeMode, onCancellation, idempotent)));
        m61579f();
        return CancellableContinuationImplKt.RESUME_TOKEN;
    }

    /* renamed from: v */
    public final boolean m61594v() {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f98120g;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f98120g.compareAndSet(this, i, 536870912 + (536870911 & i)));
        return true;
    }

    /* renamed from: w */
    public final void m61595w(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Function1<? super Integer, Integer> function1, Object obj) {
        int i;
        do {
            i = atomicIntegerFieldUpdater.get(obj);
        } while (!atomicIntegerFieldUpdater.compareAndSet(obj, i, function1.invoke(Integer.valueOf(i)).intValue()));
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    @Nullable
    public Object tryResume(T value, @Nullable Object idempotent, @Nullable Function1<? super Throwable, Unit> onCancellation) {
        return m61593u(value, idempotent, onCancellation);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void invokeOnCancellation(@NotNull Function1<? super Throwable, Unit> handler) {
        m61584k(m61588o(handler));
    }
}
