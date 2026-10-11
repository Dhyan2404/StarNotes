package com.onyx.android.sdk.base.utils.debug;

import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.text.ttml.TtmlDecoder;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.debug.PerformanceWatcher;
import com.sun.org.apache.bcel.internal.Constants;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002)*B\t\b\u0002¢\u0006\u0004\b'\u0010(J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\n\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\u000b\u001a\u00020\u0002J\u0010\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u0005J\u0014\u0010\u000f\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u000eJ\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0012\u001a\u00020\u0011J\u0018\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0014\u001a\u00020\u0011J\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00052\b\b\u0002\u0010\u0014\u001a\u00020\u0011J:\u0010\u001b\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0016\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\u0014\u001a\u00020\u00112\u0014\b\u0002\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00110\u0019J\b\u0010\u001c\u001a\u00020\u0002H\u0002J\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\u0010\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J \u0010\"\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 H\u0002R \u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00170#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;", "", "", "beginAppCreate", "endAppCreate", "", "filter", "beginFirstDocList", "", "count", "endFirstDocList", "beginOpenDoc", NotificationCompat.CATEGORY_MESSAGE, "endOpenDoc", "Lkotlin/Function0;", "endFirstDisplaySinceOpen", "requestName", "", "logBefore", "beginRequest", "force", "endRequest", "type", "Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher$PerformanceData;", TtmlDecoder.f27116r, "Lkotlin/Function1;", "logPredict", "end", "d", C6997f.f39671c, "i", "e", "", "duration", C6999h.f39688c, "Ljava/util/concurrent/ConcurrentHashMap;", "a", "Ljava/util/concurrent/ConcurrentHashMap;", "benchmarkMap", Constants.CONSTRUCTOR_NAME, "()V", "PerformanceData", "PerformanceType", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PerformanceWatcher {

    @NotNull
    public static final PerformanceWatcher INSTANCE = new PerformanceWatcher();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final ConcurrentHashMap<String, PerformanceData> benchmarkMap = new ConcurrentHashMap<>();

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\"\u0010\f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher$PerformanceData;", "", "", TtmlDecoder.f27116r, "", "end", "a", "J", "getDuration", "()J", "setDuration", "(J)V", "duration", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "b", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "getBenchmark", "()Lcom/onyx/android/sdk/base/utils/Benchmark;", "benchmark", Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class PerformanceData {

        /* renamed from: a, reason: from kotlin metadata */
        public long duration;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final Benchmark benchmark = new Benchmark();

        public final void begin() {
            this.benchmark.restart();
            this.duration = 0L;
        }

        public final long end() {
            long duration = this.benchmark.duration();
            this.duration = duration;
            return duration;
        }

        @NotNull
        public final Benchmark getBenchmark() {
            return this.benchmark;
        }

        public final long getDuration() {
            return this.duration;
        }

        public final void setDuration(long j) {
            this.duration = j;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher$PerformanceType;", "", "(Ljava/lang/String;I)V", "APP_CREATE", "FIRST_DOC_LIST", "OPEN_DOC", "FIRST_DISPLAY_SINCE_OPEN", "REQUEST", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class PerformanceType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PerformanceType[] $VALUES;
        public static final PerformanceType APP_CREATE = new PerformanceType("APP_CREATE", 0);
        public static final PerformanceType FIRST_DOC_LIST = new PerformanceType("FIRST_DOC_LIST", 1);
        public static final PerformanceType OPEN_DOC = new PerformanceType("OPEN_DOC", 2);
        public static final PerformanceType FIRST_DISPLAY_SINCE_OPEN = new PerformanceType("FIRST_DISPLAY_SINCE_OPEN", 3);
        public static final PerformanceType REQUEST = new PerformanceType("REQUEST", 4);

        private static final /* synthetic */ PerformanceType[] $values() {
            return new PerformanceType[]{APP_CREATE, FIRST_DOC_LIST, OPEN_DOC, FIRST_DISPLAY_SINCE_OPEN, REQUEST};
        }

        static {
            PerformanceType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private PerformanceType(String str, int i) {
        }

        @NotNull
        public static EnumEntries<PerformanceType> getEntries() {
            return $ENTRIES;
        }

        public static PerformanceType valueOf(String str) {
            return (PerformanceType) Enum.valueOf(PerformanceType.class, str);
        }

        public static PerformanceType[] values() {
            return (PerformanceType[]) $VALUES.clone();
        }
    }

    public static /* synthetic */ PerformanceData begin$default(PerformanceWatcher performanceWatcher, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return performanceWatcher.begin(str, z);
    }

    public static /* synthetic */ void beginRequest$default(PerformanceWatcher performanceWatcher, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        performanceWatcher.beginRequest(str, z);
    }

    /* renamed from: c */
    public static final PerformanceData m32167c(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (PerformanceData) tmp0.invoke(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PerformanceData end$default(PerformanceWatcher performanceWatcher, String str, String str2, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            function1 = new Function1<PerformanceData, Boolean>() { // from class: com.onyx.android.sdk.base.utils.debug.PerformanceWatcher$end$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull PerformanceWatcher.PerformanceData it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.TRUE;
                }
            };
        }
        return performanceWatcher.end(str, str2, z, function1);
    }

    public static /* synthetic */ void endOpenDoc$default(PerformanceWatcher performanceWatcher, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        performanceWatcher.endOpenDoc(str);
    }

    public static /* synthetic */ void endRequest$default(PerformanceWatcher performanceWatcher, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        performanceWatcher.endRequest(str, z);
    }

    /* renamed from: g */
    public static final PerformanceData m32168g(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (PerformanceData) tmp0.invoke(obj);
    }

    @NotNull
    public final PerformanceData begin(@NotNull String type, boolean force) {
        Intrinsics.checkNotNullParameter(type, "type");
        ConcurrentHashMap<String, PerformanceData> concurrentHashMap = benchmarkMap;
        final PerformanceWatcher$begin$data$1 performanceWatcher$begin$data$1 = new Function1<String, PerformanceData>() { // from class: com.onyx.android.sdk.base.utils.debug.PerformanceWatcher$begin$data$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final PerformanceWatcher.PerformanceData invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new PerformanceWatcher.PerformanceData();
            }
        };
        PerformanceData computeIfAbsent = concurrentHashMap.computeIfAbsent(type, new Function() { // from class: com.sunia.HTREnginev2.c3l
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                PerformanceWatcher.PerformanceData m32167c;
                m32167c = PerformanceWatcher.m32167c(Function1.this, obj);
                return m32167c;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        PerformanceData performanceData = computeIfAbsent;
        if (performanceData.getDuration() > 0 && !force) {
            return performanceData;
        }
        performanceData.begin();
        return performanceData;
    }

    public final void beginAppCreate() {
        begin$default(this, "APP_CREATE", false, 2, null);
    }

    public final void beginFirstDocList(@NotNull String filter) {
        Intrinsics.checkNotNullParameter(filter, "filter");
        begin(m32170e(filter), false);
    }

    public final void beginOpenDoc() {
        begin$default(this, String.valueOf(PerformanceType.OPEN_DOC), false, 2, null);
        m32169d();
    }

    public final void beginRequest(@NotNull String requestName, boolean logBefore) {
        Intrinsics.checkNotNullParameter(requestName, "requestName");
        String str = PerformanceType.REQUEST + ' ' + requestName;
        PerformanceData begin$default = begin$default(this, str, false, 2, null);
        if (logBefore) {
            m32172h(str, TtmlDecoder.f27116r, begin$default.getDuration());
        }
    }

    /* renamed from: d */
    public final void m32169d() {
        begin("FIRST_DISPLAY_SINCE_OPEN", true);
    }

    /* renamed from: e */
    public final String m32170e(String filter) {
        return PerformanceType.FIRST_DOC_LIST + " filter(" + filter + ')';
    }

    @Nullable
    public final PerformanceData end(@NotNull String type, @NotNull String msg, boolean force, @NotNull Function1<? super PerformanceData, Boolean> logPredict) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(logPredict, "logPredict");
        PerformanceData m32173i = m32173i(type);
        if (m32173i == null) {
            return null;
        }
        if (m32173i.getDuration() > 0 && !force) {
            return m32173i;
        }
        long end = m32173i.end();
        if (Debug.INSTANCE.getDebug() || logPredict.invoke(m32173i).booleanValue()) {
            m32172h(type, msg, end);
        }
        return m32173i;
    }

    public final void endAppCreate() {
        end$default(this, "APP_CREATE", null, false, null, 14, null);
    }

    public final void endFirstDisplaySinceOpen(@NotNull Function0<String> msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (m32171f("FIRST_DISPLAY_SINCE_OPEN").getDuration() > 0) {
            return;
        }
        end$default(this, "FIRST_DISPLAY_SINCE_OPEN", msg.invoke(), false, new Function1<PerformanceData, Boolean>() { // from class: com.onyx.android.sdk.base.utils.debug.PerformanceWatcher$endFirstDisplaySinceOpen$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PerformanceWatcher.PerformanceData it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getDuration() >= 1000);
            }
        }, 4, null);
    }

    public final void endFirstDocList(@NotNull String filter, int count) {
        Intrinsics.checkNotNullParameter(filter, "filter");
        end$default(this, m32170e(filter), "count(" + count + ')', false, null, 8, null);
    }

    public final void endOpenDoc(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        end$default(this, String.valueOf(PerformanceType.OPEN_DOC), msg, false, new Function1<PerformanceData, Boolean>() { // from class: com.onyx.android.sdk.base.utils.debug.PerformanceWatcher$endOpenDoc$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PerformanceWatcher.PerformanceData it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getDuration() >= 1000);
            }
        }, 4, null);
    }

    public final void endRequest(@NotNull String requestName, boolean force) {
        Intrinsics.checkNotNullParameter(requestName, "requestName");
        end$default(this, PerformanceType.REQUEST + ' ' + requestName, "end", force, null, 8, null);
    }

    /* renamed from: f */
    public final PerformanceData m32171f(String type) {
        ConcurrentHashMap<String, PerformanceData> concurrentHashMap = benchmarkMap;
        final PerformanceWatcher$getPerformanceData$1 performanceWatcher$getPerformanceData$1 = new Function1<String, PerformanceData>() { // from class: com.onyx.android.sdk.base.utils.debug.PerformanceWatcher$getPerformanceData$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final PerformanceWatcher.PerformanceData invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new PerformanceWatcher.PerformanceData();
            }
        };
        PerformanceData computeIfAbsent = concurrentHashMap.computeIfAbsent(type, new Function() { // from class: com.sunia.HTREnginev2.d3l
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                PerformanceWatcher.PerformanceData m32168g;
                m32168g = PerformanceWatcher.m32168g(Function1.this, obj);
                return m32168g;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    /* renamed from: h */
    public final void m32172h(String type, String msg, long duration) {
        Debug.INSTANCE.m32052i(PerformanceWatcher.class, "Performance " + type + ' ' + msg + ':' + duration + HttpMeasureConstants.f94668b, new Object[0]);
    }

    /* renamed from: i */
    public final PerformanceData m32173i(String type) {
        return benchmarkMap.remove(type);
    }
}
