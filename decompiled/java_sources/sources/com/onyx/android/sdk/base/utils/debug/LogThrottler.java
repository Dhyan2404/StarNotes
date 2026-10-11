package com.onyx.android.sdk.base.utils.debug;

import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringBuilderJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\t\u0018\u0000  2\u00020\u0001:\u0001 B\u0011\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0013¢\u0006\u0004\b\u001e\u0010\u001fJ7\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\u0003\u001a\u00020\u00022%\u0010\u000b\u001a!\u0012\u0017\u0012\u00150\u0005j\u0002`\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0004J3\u0010\u000f\u001a\u00020\n2\b\b\u0002\u0010\u0003\u001a\u00020\u00022!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\n0\u0004J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0017\u0010\u0017\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R \u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00130\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0019R\u0018\u0010\u001d\u001a\u00060\u0005j\u0002`\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/debug/LogThrottler;", "", "", "tag", "Lkotlin/Function1;", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "Lkotlin/ParameterName;", "name", "stringBuilder", "", "collectLog", "collectLogIf", "logMsg", "logger", "printLogIf", "", "b", "a", "", "I", "getLogTagCountThreshold", "()I", "logTagCountThreshold", "", "Ljava/util/Map;", "logTagCountMap", "c", "Ljava/lang/StringBuilder;", "logStringCache", Constants.CONSTRUCTOR_NAME, "(I)V", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class LogThrottler {

    /* renamed from: d */
    @NotNull
    public static final String f40973d = "LogThrottler";

    /* renamed from: a, reason: from kotlin metadata */
    public final int logTagCountThreshold;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Integer> logTagCountMap;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final StringBuilder logStringCache;

    public LogThrottler() {
        this(0, 1, null);
    }

    public static /* synthetic */ void collectLogIf$default(LogThrottler logThrottler, String str, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = f40973d;
        }
        logThrottler.collectLogIf(str, function1);
    }

    public static /* synthetic */ void printLogIf$default(LogThrottler logThrottler, String str, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = f40973d;
        }
        logThrottler.printLogIf(str, function1);
    }

    /* renamed from: a */
    public final void m32163a(String tag) {
        StringsKt__StringBuilderJVMKt.clear(this.logStringCache);
        Map<String, Integer> map = this.logTagCountMap;
        map.put(tag, Integer.valueOf(map.getOrDefault(tag, 0).intValue() + 1));
    }

    /* renamed from: b */
    public final boolean m32164b(String tag) {
        return !(tag.length() == 0) && this.logTagCountMap.getOrDefault(tag, 0).intValue() < this.logTagCountThreshold;
    }

    public final void collectLogIf(@NotNull String tag, @NotNull Function1<? super StringBuilder, Unit> collectLog) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(collectLog, "collectLog");
        if (m32164b(tag)) {
            collectLog.invoke(this.logStringCache);
        }
    }

    public final int getLogTagCountThreshold() {
        return this.logTagCountThreshold;
    }

    public final void printLogIf(@NotNull String tag, @NotNull Function1<? super String, Unit> logger) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(logger, "logger");
        if (this.logStringCache.length() > 0) {
            logger.invoke(tag + ", " + ((Object) this.logStringCache));
            m32163a(tag);
        }
    }

    public LogThrottler(int i) {
        this.logTagCountThreshold = i;
        this.logTagCountMap = new LinkedHashMap();
        this.logStringCache = new StringBuilder();
    }

    public /* synthetic */ LogThrottler(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 3 : i);
    }
}
