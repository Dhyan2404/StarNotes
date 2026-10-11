package com.onyx.android.sdk.base.p018rx;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b+\u0010,J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0014J\u0006\u0010\u0005\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\u000b\u001a\u00020\u00022\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0014J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tH\u0014J\b\u0010\u000e\u001a\u00020\u0002H&J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\u0012\u0010\u0012\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\tH\u0002R\u0017\u0010\u0017\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R$\u0010\u001e\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010$\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0017\u0010*\u001a\u00020%8\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "execute", "closeResources", "disableThrowException", "", "hasException", "Lkotlin/Function0;", "", "formatMsg", "reportInfoImpl", NotificationCompat.CATEGORY_MESSAGE, "getMsg", "safelyExecuteImpl", "b", "e", "a", "c", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "getBenchmark", "()Lcom/onyx/android/sdk/base/utils/Benchmark;", "benchmark", "", "Ljava/lang/Throwable;", "getThrowable", "()Ljava/lang/Throwable;", "setThrowable", "(Ljava/lang/Throwable;)V", "throwable", Constants.HASIDCALL_INDEX_SIG, "getThrowException", Constants.BOOLEAN_VALUE_SIG, "setThrowException", "(Z)V", "throwException", "Ljava/util/concurrent/atomic/AtomicBoolean;", "d", "Ljava/util/concurrent/atomic/AtomicBoolean;", "getRunning", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "running", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public abstract class RxBaseBenchmarkRequest extends RxBaseRequest<Unit> {

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Throwable throwable;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Benchmark benchmark = new Benchmark();

    /* renamed from: c, reason: from kotlin metadata */
    public boolean throwException = true;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean running = new AtomicBoolean(false);

    /* renamed from: d */
    public static /* synthetic */ void m31981d(RxBaseBenchmarkRequest rxBaseBenchmarkRequest, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportDuration");
        }
        if ((i & 1) != 0) {
            str = "";
        }
        rxBaseBenchmarkRequest.m31984c(str);
    }

    /* renamed from: a */
    public final void m31982a() {
        Throwable th;
        m31981d(this, null, 1, null);
        if (!this.throwException || (th = this.throwable) == null) {
            return;
        }
        if (!(th instanceof Error)) {
            throw th;
        }
        throw new RuntimeException("fatal error: " + th.getMessage());
    }

    /* renamed from: b */
    public final void m31983b() {
        this.benchmark.restart();
        if (Debug.INSTANCE.getDebug()) {
            this.benchmark.report("Request: " + AnyKt.toSimpleNameString(this) + ", beforeExecute, threadName = " + Thread.currentThread().getName() + ", threadId = " + Thread.currentThread().getId());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.String] */
    /* renamed from: c */
    public final void m31984c(String msg) {
        if (getAbort()) {
            Debug.INSTANCE.m32061w(AnyKt.toSimpleNameString(this) + "---> is abort");
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = msg;
        Throwable th = this.throwable;
        if (th == null) {
            reportInfoImpl(new Function0<String>() { // from class: com.onyx.android.sdk.base.rx.RxBaseBenchmarkRequest$reportDuration$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final String invoke() {
                    return RxBaseBenchmarkRequest.this.getMsg(objectRef.element);
                }
            });
            return;
        }
        th.printStackTrace();
        StringBuilder sb = new StringBuilder();
        sb.append((String) objectRef.element);
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        sb.append(message);
        ?? sb2 = sb.toString();
        objectRef.element = sb2;
        this.benchmark.reportError(getMsg(sb2));
    }

    public void closeResources() {
    }

    public final void disableThrowException() {
        this.throwException = false;
    }

    /* renamed from: e */
    public final void m31985e() {
        try {
            this.running.set(true);
        } finally {
            try {
            } finally {
            }
        }
        if (getAbort()) {
            return;
        }
        safelyExecuteImpl();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Unit execute() {
        execute2();
        return Unit.INSTANCE;
    }

    @NotNull
    public final Benchmark getBenchmark() {
        return this.benchmark;
    }

    @NotNull
    public String getMsg(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return AnyKt.toSimpleNameString(this) + ':' + msg;
    }

    @NotNull
    public final AtomicBoolean getRunning() {
        return this.running;
    }

    public final boolean getThrowException() {
        return this.throwException;
    }

    @Nullable
    public final Throwable getThrowable() {
        return this.throwable;
    }

    public final boolean hasException() {
        return this.throwable != null;
    }

    public void reportInfoImpl(@NotNull Function0<String> formatMsg) {
        Intrinsics.checkNotNullParameter(formatMsg, "formatMsg");
        if (Debug.INSTANCE.getDebug()) {
            this.benchmark.report(formatMsg.invoke());
        }
    }

    public abstract void safelyExecuteImpl();

    public final void setThrowException(boolean z) {
        this.throwException = z;
    }

    public final void setThrowable(@Nullable Throwable th) {
        this.throwable = th;
    }

    /* renamed from: execute, reason: avoid collision after fix types in other method */
    public final void execute2() {
        m31983b();
        m31985e();
        m31982a();
    }
}
