package kotlinx.coroutines.debug.internal;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010-\u001a\u00020,\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b.\u0010/R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\r\u001a\u0004\u0018\u00010\b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001d\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010 \u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0019\u0010&\u001a\u0004\u0018\u00010!8\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u0019\u0010)\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b'\u0010\n\u001a\u0004\b(\u0010\fR\u001d\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148G¢\u0006\f\n\u0004\b*\u0010\u0017\u001a\u0004\b+\u0010\u0019¨\u00060"}, m61528d2 = {"Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;", "", "Lkotlin/coroutines/CoroutineContext;", "a", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "b", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "getCreationStackBottom$kotlinx_coroutines_core", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "creationStackBottom", "", "c", "J", "getSequenceNumber", "()J", "sequenceNumber", "", "Ljava/lang/StackTraceElement;", "d", "Ljava/util/List;", "getCreationStackTrace", "()Ljava/util/List;", "creationStackTrace", "", "e", Constants.STRING_SIG, "getState", "()Ljava/lang/String;", "state", "Ljava/lang/Thread;", C6997f.f39671c, "Ljava/lang/Thread;", "getLastObservedThread", "()Ljava/lang/Thread;", "lastObservedThread", C6998g.f39679a, "getLastObservedFrame", "lastObservedFrame", C6999h.f39688c, "lastObservedStackTrace", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "source", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@PublishedApi
/* loaded from: classes11.dex */
public final class DebugCoroutineInfo {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CoroutineContext context;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final CoroutineStackFrame creationStackBottom;

    /* renamed from: c, reason: from kotlin metadata */
    public final long sequenceNumber;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<StackTraceElement> creationStackTrace;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String state;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public final Thread lastObservedThread;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public final CoroutineStackFrame lastObservedFrame;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<StackTraceElement> lastObservedStackTrace;

    public DebugCoroutineInfo(@NotNull kotlinx.coroutines.debug.internal.DebugCoroutineInfo debugCoroutineInfo, @NotNull CoroutineContext coroutineContext) {
        this.context = coroutineContext;
        this.creationStackBottom = debugCoroutineInfo.getCreationStackBottom();
        this.sequenceNumber = debugCoroutineInfo.sequenceNumber;
        this.creationStackTrace = debugCoroutineInfo.getCreationStackTrace();
        this.state = debugCoroutineInfo.get_state();
        this.lastObservedThread = debugCoroutineInfo.lastObservedThread;
        this.lastObservedFrame = debugCoroutineInfo.getLastObservedFrame$kotlinx_coroutines_core();
        this.lastObservedStackTrace = debugCoroutineInfo.lastObservedStackTrace$kotlinx_coroutines_core();
    }

    @NotNull
    public final CoroutineContext getContext() {
        return this.context;
    }

    @Nullable
    /* renamed from: getCreationStackBottom$kotlinx_coroutines_core, reason: from getter */
    public final CoroutineStackFrame getCreationStackBottom() {
        return this.creationStackBottom;
    }

    @NotNull
    public final List<StackTraceElement> getCreationStackTrace() {
        return this.creationStackTrace;
    }

    @Nullable
    public final CoroutineStackFrame getLastObservedFrame() {
        return this.lastObservedFrame;
    }

    @Nullable
    public final Thread getLastObservedThread() {
        return this.lastObservedThread;
    }

    public final long getSequenceNumber() {
        return this.sequenceNumber;
    }

    @NotNull
    public final String getState() {
        return this.state;
    }

    @JvmName(name = "lastObservedStackTrace")
    @NotNull
    public final List<StackTraceElement> lastObservedStackTrace() {
        return this.lastObservedStackTrace;
    }
}
