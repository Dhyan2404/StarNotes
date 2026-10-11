package kotlinx.coroutines.internal;

import _COROUTINE.ArtificialStackFrames;
import _COROUTINE.CoroutineDebuggingKt;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\u001a!\u0010\u0003\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001d\u0010\u0005\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u0000H\u0002¢\u0006\u0004\b\u0005\u0010\u0004\u001a.\u0010\u0003\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u00002\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0080\b¢\u0006\u0004\b\u0003\u0010\b\u001a-\u0010\u000b\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u00002\n\u0010\u0007\u001a\u00060\tj\u0002`\nH\u0002¢\u0006\u0004\b\u000b\u0010\f\u001a;\u0010\u0013\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00028\u00002\u0010\u0010\u0012\u001a\f\u0012\b\u0012\u00060\u0010j\u0002`\u00110\u000fH\u0002¢\u0006\u0004\b\u0013\u0010\u0014\u001a3\u0010\u0017\u001a\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u000e\u0012\f\u0012\b\u0012\u00060\u0010j\u0002`\u00110\u00160\u0015\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u0000H\u0002¢\u0006\u0004\b\u0017\u0010\u0018\u001a3\u0010\u001b\u001a\u00020\u001a2\u0010\u0010\u0019\u001a\f\u0012\b\u0012\u00060\u0010j\u0002`\u00110\u00162\u0010\u0010\u000e\u001a\f\u0012\b\u0012\u00060\u0010j\u0002`\u00110\u000fH\u0002¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001b\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0002\u001a\u00020\u0000H\u0080Hø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001f\u001a\"\u0010 \u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0081\b¢\u0006\u0004\b \u0010\u0004\u001a!\u0010!\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0001¢\u0006\u0004\b!\u0010\u0004\u001a\u001e\u0010\"\u001a\f\u0012\b\u0012\u00060\u0010j\u0002`\u00110\u000f2\n\u0010\u0007\u001a\u00060\tj\u0002`\nH\u0002\u001a\u0010\u0010$\u001a\u00020#*\u00060\u0010j\u0002`\u0011H\u0000\u001a%\u0010(\u001a\u00020'*\f\u0012\b\u0012\u00060\u0010j\u0002`\u00110\u00162\u0006\u0010&\u001a\u00020%H\u0002¢\u0006\u0004\b(\u0010)\u001a\u001c\u0010*\u001a\u00020#*\u00060\u0010j\u0002`\u00112\n\u0010(\u001a\u00060\u0010j\u0002`\u0011H\u0002\u001a\u0014\u0010+\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\r\u001a\u00020\u0000H\u0000\"\u0014\u0010-\u001a\u00020%8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010,\"\u0014\u0010.\u001a\u00020%8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010,\"\u0014\u00100\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010/\"\u001c\u00102\u001a\n 1*\u0004\u0018\u00010%0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010,\"\u001c\u00103\u001a\n 1*\u0004\u0018\u00010%0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010,*\f\b\u0000\u00104\"\u00020\t2\u00020\t*\f\b\u0000\u00105\"\u00020\u00102\u00020\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u00066"}, m61528d2 = {"", "E", "exception", "recoverStackTrace", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "i", "Lkotlin/coroutines/Continuation;", "continuation", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", C6999h.f39688c, "(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;", "cause", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Ljava/util/ArrayDeque;", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "resultStackTrace", "b", "(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;", "Lkotlin/Pair;", "", "a", "(Ljava/lang/Throwable;)Lkotlin/Pair;", "recoveredStacktrace", "", C6997f.f39671c, "([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V", "", "recoverAndThrow", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unwrap", "unwrapImpl", "c", "", "isArtificial", "", "methodName", "", "e", "([Ljava/lang/StackTraceElement;Ljava/lang/String;)I", "d", "initCause", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "baseContinuationImplClass", "stackTraceRecoveryClass", "Ljava/lang/StackTraceElement;", "ARTIFICIAL_FRAME", "kotlin.jvm.PlatformType", "baseContinuationImplClassName", "stackTraceRecoveryClassName", "CoroutineStackFrame", "StackTraceElement", "kotlinx-coroutines-core"}, m61529k = 2, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nStackTraceRecovery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n1735#2,6:217\n12744#2,2:225\n1627#2,6:229\n12744#2,2:235\n1627#2,6:238\n37#3,2:223\n26#4:227\n26#4:228\n1#5:237\n*S KotlinDebug\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n43#1:217,6\n131#1:225,2\n141#1:229,6\n173#1:235,2\n194#1:238,6\n106#1:223,2\n133#1:227\n135#1:228\n*E\n"})
/* loaded from: classes11.dex */
public final class StackTraceRecoveryKt {

    /* renamed from: a */
    @NotNull
    public static final String f98615a = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";

    /* renamed from: b */
    @NotNull
    public static final String f98616b = "kotlinx.coroutines.internal.StackTraceRecoveryKt";

    /* renamed from: c */
    @NotNull
    public static final StackTraceElement f98617c = new ArtificialStackFrames().coroutineBoundary();

    /* renamed from: d */
    public static final String f98618d;

    /* renamed from: e */
    public static final String f98619e;

    static {
        Object m72621constructorimpl;
        Object m72621constructorimpl2;
        try {
            Result.Companion companion = Result.INSTANCE;
            m72621constructorimpl = Result.m72621constructorimpl(BaseContinuationImpl.class.getCanonicalName());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m72621constructorimpl = Result.m72621constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m72624exceptionOrNullimpl(m72621constructorimpl) != null) {
            m72621constructorimpl = f98615a;
        }
        f98618d = (String) m72621constructorimpl;
        try {
            Result.Companion companion3 = Result.INSTANCE;
            m72621constructorimpl2 = Result.m72621constructorimpl(StackTraceRecoveryKt.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            m72621constructorimpl2 = Result.m72621constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m72624exceptionOrNullimpl(m72621constructorimpl2) != null) {
            m72621constructorimpl2 = f98616b;
        }
        f98619e = (String) m72621constructorimpl2;
    }

    public static /* synthetic */ void CoroutineStackFrame$annotations() {
    }

    public static /* synthetic */ void StackTraceElement$annotations() {
    }

    /* renamed from: a */
    public static final <E extends Throwable> Pair<E, StackTraceElement[]> m62233a(E e) {
        boolean z;
        Throwable cause = e.getCause();
        if (cause == null || !Intrinsics.areEqual(cause.getClass(), e.getClass())) {
            return TuplesKt.m61535to(e, new StackTraceElement[0]);
        }
        StackTraceElement[] stackTrace = e.getStackTrace();
        int length = stackTrace.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            }
            if (isArtificial(stackTrace[i])) {
                z = true;
                break;
            }
            i++;
        }
        return z ? TuplesKt.m61535to(cause, stackTrace) : TuplesKt.m61535to(e, new StackTraceElement[0]);
    }

    /* renamed from: b */
    public static final <E extends Throwable> E m62234b(E e, E e2, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(f98617c);
        StackTraceElement[] stackTrace = e.getStackTrace();
        int m62237e = m62237e(stackTrace, f98618d);
        int i = 0;
        if (m62237e == -1) {
            e2.setStackTrace((StackTraceElement[]) arrayDeque.toArray(new StackTraceElement[0]));
            return e2;
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + m62237e];
        for (int i2 = 0; i2 < m62237e; i2++) {
            stackTraceElementArr[i2] = stackTrace[i2];
        }
        Iterator<StackTraceElement> it2 = arrayDeque.iterator();
        while (it2.hasNext()) {
            stackTraceElementArr[i + m62237e] = it2.next();
            i++;
        }
        e2.setStackTrace(stackTraceElementArr);
        return e2;
    }

    /* renamed from: c */
    public static final ArrayDeque<StackTraceElement> m62235c(CoroutineStackFrame coroutineStackFrame) {
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement stackTraceElement = coroutineStackFrame.getStackTraceElement();
        if (stackTraceElement != null) {
            arrayDeque.add(stackTraceElement);
        }
        while (true) {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return arrayDeque;
            }
            StackTraceElement stackTraceElement2 = coroutineStackFrame.getStackTraceElement();
            if (stackTraceElement2 != null) {
                arrayDeque.add(stackTraceElement2);
            }
        }
    }

    /* renamed from: d */
    public static final boolean m62236d(StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && Intrinsics.areEqual(stackTraceElement.getMethodName(), stackTraceElement2.getMethodName()) && Intrinsics.areEqual(stackTraceElement.getFileName(), stackTraceElement2.getFileName()) && Intrinsics.areEqual(stackTraceElement.getClassName(), stackTraceElement2.getClassName());
    }

    /* renamed from: e */
    public static final int m62237e(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        for (int i = 0; i < length; i++) {
            if (Intrinsics.areEqual(str, stackTraceElementArr[i].getClassName())) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: f */
    public static final void m62238f(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (isArtificial(stackTraceElementArr[i])) {
                break;
            } else {
                i++;
            }
        }
        int i2 = i + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (i2 > length2) {
            return;
        }
        while (true) {
            if (m62236d(stackTraceElementArr[length2], arrayDeque.getLast())) {
                arrayDeque.removeLast();
            }
            arrayDeque.addFirst(stackTraceElementArr[length2]);
            if (length2 == i2) {
                return;
            } else {
                length2--;
            }
        }
    }

    /* renamed from: g */
    public static final Object m62239g(Throwable th, Continuation<?> continuation) {
        throw th;
    }

    /* renamed from: h */
    public static final <E extends Throwable> E m62240h(E e, CoroutineStackFrame coroutineStackFrame) {
        Pair m62233a = m62233a(e);
        Throwable th = (Throwable) m62233a.component1();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) m62233a.component2();
        Throwable tryCopyException = ExceptionsConstructorKt.tryCopyException(th);
        if (tryCopyException == null) {
            return e;
        }
        ArrayDeque<StackTraceElement> m62235c = m62235c(coroutineStackFrame);
        if (m62235c.isEmpty()) {
            return e;
        }
        if (th != e) {
            m62238f(stackTraceElementArr, m62235c);
        }
        return (E) m62234b(th, tryCopyException, m62235c);
    }

    /* renamed from: i */
    public static final <E extends Throwable> E m62241i(E e) {
        StackTraceElement[] stackTrace = e.getStackTrace();
        int length = stackTrace.length;
        int length2 = stackTrace.length - 1;
        if (length2 >= 0) {
            while (true) {
                int i = length2 - 1;
                if (Intrinsics.areEqual(f98619e, stackTrace[length2].getClassName())) {
                    break;
                }
                if (i < 0) {
                    break;
                }
                length2 = i;
            }
        }
        length2 = -1;
        int i2 = length2 + 1;
        int m62237e = m62237e(stackTrace, f98618d);
        int i3 = 0;
        int i4 = (length - length2) - (m62237e == -1 ? 0 : length - m62237e);
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i4];
        while (i3 < i4) {
            stackTraceElementArr[i3] = i3 == 0 ? f98617c : stackTrace[(i2 + i3) - 1];
            i3++;
        }
        e.setStackTrace(stackTraceElementArr);
        return e;
    }

    public static final void initCause(@NotNull Throwable th, @NotNull Throwable th2) {
        th.initCause(th2);
    }

    public static final boolean isArtificial(@NotNull StackTraceElement stackTraceElement) {
        boolean startsWith$default;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(stackTraceElement.getClassName(), CoroutineDebuggingKt.getARTIFICIAL_FRAME_PACKAGE_NAME(), false, 2, null);
        return startsWith$default;
    }

    @Nullable
    public static final Object recoverAndThrow(@NotNull Throwable th, @NotNull Continuation<?> continuation) {
        throw th;
    }

    @NotNull
    public static final <E extends Throwable> E recoverStackTrace(@NotNull E e) {
        return e;
    }

    @PublishedApi
    @NotNull
    public static final <E extends Throwable> E unwrap(@NotNull E e) {
        return e;
    }

    @PublishedApi
    @NotNull
    public static final <E extends Throwable> E unwrapImpl(@NotNull E e) {
        E e2 = (E) e.getCause();
        if (e2 != null && Intrinsics.areEqual(e2.getClass(), e.getClass())) {
            StackTraceElement[] stackTrace = e.getStackTrace();
            int length = stackTrace.length;
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (isArtificial(stackTrace[i])) {
                    z = true;
                    break;
                }
                i++;
            }
            if (z) {
                return e2;
            }
        }
        return e;
    }

    @NotNull
    public static final <E extends Throwable> E recoverStackTrace(@NotNull E e, @NotNull Continuation<?> continuation) {
        return e;
    }
}
