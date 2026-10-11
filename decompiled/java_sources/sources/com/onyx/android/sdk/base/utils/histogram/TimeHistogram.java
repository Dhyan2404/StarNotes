package com.onyx.android.sdk.base.utils.histogram;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u001b\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0006R\u0017\u0010\f\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\"\u0010\u0010\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;", "", "", "time", "", "addTimeIf", "", "getTimeHistogramIf", "a", Constants.STRING_SIG, "getTag", "()Ljava/lang/String;", "tag", "", "b", Constants.HASIDCALL_INDEX_SIG, "isEnabled", Constants.BOOLEAN_VALUE_SIG, "setEnabled", "(Z)V", "", "c", "Ljava/util/List;", "timeList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Z)V", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTimeHistogram.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeHistogram.kt\ncom/onyx/android/sdk/base/utils/histogram/TimeHistogram\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,46:1\n1477#2:47\n1502#2,3:48\n1505#2,3:58\n1855#2,2:61\n372#3,7:51\n*S KotlinDebug\n*F\n+ 1 TimeHistogram.kt\ncom/onyx/android/sdk/base/utils/histogram/TimeHistogram\n*L\n33#1:47\n33#1:48,3\n33#1:58,3\n36#1:61,2\n33#1:51,7\n*E\n"})
/* loaded from: classes7.dex */
public final class TimeHistogram {
    public static final int MAX_SIZE = 10000;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String tag;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean isEnabled;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final List<Long> timeList;

    /* JADX WARN: Multi-variable type inference failed */
    public TimeHistogram() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public final void addTimeIf(long time) {
        if (this.isEnabled) {
            this.timeList.add(Long.valueOf(time));
            if (this.timeList.size() > 10000) {
                this.timeList.clear();
            }
        }
    }

    @NotNull
    public final String getTag() {
        return this.tag;
    }

    @NotNull
    public final String getTimeHistogramIf() {
        List sorted;
        if (!this.isEnabled) {
            return "";
        }
        List<Long> list = this.timeList;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            Long valueOf = Long.valueOf(((Number) obj).longValue());
            Object obj2 = linkedHashMap.get(valueOf);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(valueOf, obj2);
            }
            ((List) obj2).add(obj);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("-- " + this.tag + "-TimeHistogram start --\n");
        sorted = CollectionsKt___CollectionsKt.sorted(linkedHashMap.keySet());
        Iterator it2 = sorted.iterator();
        while (it2.hasNext()) {
            long longValue = ((Number) it2.next()).longValue();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("time = ");
            sb2.append(longValue);
            sb2.append(" ms, size = ");
            List list2 = (List) linkedHashMap.get(Long.valueOf(longValue));
            sb2.append(list2 != null ? Integer.valueOf(list2.size()) : null);
            sb2.append('\n');
            sb.append(sb2.toString());
        }
        sb.append("-- " + this.tag + "-TimeHistogram end --\n");
        String sb3 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    /* renamed from: isEnabled, reason: from getter */
    public final boolean getIsEnabled() {
        return this.isEnabled;
    }

    public final void setEnabled(boolean z) {
        this.isEnabled = z;
    }

    public TimeHistogram(@NotNull String tag, boolean z) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.tag = tag;
        this.isEnabled = z;
        this.timeList = new ArrayList();
    }

    public /* synthetic */ TimeHistogram(String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? true : z);
    }
}
