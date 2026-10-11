package com.onyx.android.sdk.base.utils;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.sun.org.apache.bcel.internal.Constants;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bJ\u0016\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0014\u0010\f\u001a\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u000bJ\u000e\u0010\r\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0014\u0010\u000f\u001a\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u000bJ\u0016\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0010\u001a\u00020\bJ\u0006\u0010\u0011\u001a\u00020\u0004R\u0016\u0010\u0014\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/Benchmark;", "", "", "restart", "", NotificationCompat.CATEGORY_MESSAGE, "report", "tag", "", "reportDuration", "reportAndRestart", "Lkotlin/Function0;", "reportDebugAndRestart", "reportError", "reportWarn", "reportDebug", "duration", "durationString", "a", "J", "benchmarkStart", "b", "benchmarkEnd", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBenchmark.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Benchmark.kt\ncom/onyx/android/sdk/base/utils/Benchmark\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,101:1\n86#2,4:102\n92#2,4:106\n*S KotlinDebug\n*F\n+ 1 Benchmark.kt\ncom/onyx/android/sdk/base/utils/Benchmark\n*L\n84#1:102,4\n88#1:106,4\n*E\n"})
/* loaded from: classes7.dex */
public final class Benchmark {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    public static boolean f40842c = true;

    /* renamed from: d */
    public static long f40843d = 5;

    /* renamed from: e */
    @NotNull
    public static final Benchmark f40844e = new Benchmark();

    /* renamed from: a, reason: from kotlin metadata */
    public long benchmarkStart;

    /* renamed from: b, reason: from kotlin metadata */
    public long benchmarkEnd;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/Benchmark$Companion;", "", "()V", "sInstance", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "getSInstance", "()Lcom/onyx/android/sdk/base/utils/Benchmark;", "shortDurationThreshold", "", "getShortDurationThreshold", "()J", "setShortDurationThreshold", "(J)V", "showShortDurationInfoLog", "", "getShowShortDurationInfoLog", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setShowShortDurationInfoLog", "(Z)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Benchmark getSInstance() {
            return Benchmark.f40844e;
        }

        public final long getShortDurationThreshold() {
            return Benchmark.f40843d;
        }

        public final boolean getShowShortDurationInfoLog() {
            return Benchmark.f40842c;
        }

        public final void setShortDurationThreshold(long j) {
            Benchmark.f40843d = j;
        }

        public final void setShowShortDurationInfoLog(boolean z) {
            Benchmark.f40842c = z;
        }

        public Companion() {
        }
    }

    public Benchmark() {
        restart();
    }

    public final long duration() {
        long currentTimeMillis = System.currentTimeMillis();
        this.benchmarkEnd = currentTimeMillis;
        return currentTimeMillis - this.benchmarkStart;
    }

    @NotNull
    public final String durationString() {
        return duration() + HttpMeasureConstants.f94668b;
    }

    public final void report(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        long duration = duration();
        if (duration >= f40843d || f40842c) {
            Debug.INSTANCE.m32052i(Benchmark.class, msg + " ---> " + duration + HttpMeasureConstants.f94668b, new Object[0]);
        }
    }

    public final void reportAndRestart(@NotNull String msg, long reportDuration) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (duration() < reportDuration) {
            restart();
        } else {
            reportAndRestart(msg);
        }
    }

    public final void reportDebug(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Debug.INSTANCE.m32035d(Benchmark.class, msg + " ---> " + duration() + HttpMeasureConstants.f94668b, new Object[0]);
    }

    public final void reportDebugAndRestart(@NotNull Function0<String> msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Debug.INSTANCE.m32035d(Benchmark.class, msg.invoke() + " ---> " + duration() + HttpMeasureConstants.f94668b, new Object[0]);
        restart();
    }

    public final void reportError(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Debug.INSTANCE.m32044e(Benchmark.class, msg + " ---> " + duration() + HttpMeasureConstants.f94668b, new Object[0]);
    }

    public final void reportWarn(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Debug.INSTANCE.m32059w(Benchmark.class, msg + " ---> " + duration() + HttpMeasureConstants.f94668b, new Object[0]);
    }

    public final void restart() {
        this.benchmarkStart = System.currentTimeMillis();
    }

    public final void reportDebug(@NotNull Function0<String> msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Debug debug = Debug.INSTANCE;
        if (debug.getDebug()) {
            Log.d(debug.getTAG(), msg.invoke() + " ---> " + duration() + HttpMeasureConstants.f94668b);
        }
    }

    public final void report(@NotNull String tag, @NotNull String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        Log.i(tag, msg + " ---> " + duration() + HttpMeasureConstants.f94668b);
    }

    public final void reportAndRestart(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        report(msg);
        restart();
    }

    public final void report(@NotNull String msg, long reportDuration) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (duration() < reportDuration) {
            return;
        }
        report(msg);
    }

    public final void reportDebug(@NotNull String tag, @NotNull String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (Debug.INSTANCE.getDebug()) {
            Log.d(tag, msg + " ---> " + duration() + HttpMeasureConstants.f94668b);
        }
    }
}
