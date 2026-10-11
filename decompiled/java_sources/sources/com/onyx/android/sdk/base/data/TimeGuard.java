package com.onyx.android.sdk.base.data;

import com.google.android.exoplayer2.text.ttml.TtmlDecoder;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003J\u0010\u0010\u000b\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/TimeGuard;", "", "exceedDuration", "", "startTime", "(JJ)V", "check", "", "resetExceedDuration", "", TtmlDecoder.f27117s, "resetStartTime", "time", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TimeGuard {
    private long exceedDuration;
    private long startTime;

    public TimeGuard(long j, long j2) {
        this.exceedDuration = j;
        this.startTime = j2;
    }

    public static /* synthetic */ void resetStartTime$default(TimeGuard timeGuard, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = System.currentTimeMillis();
        }
        timeGuard.resetStartTime(j);
    }

    public final boolean check() {
        return System.currentTimeMillis() - this.startTime > this.exceedDuration;
    }

    public final void resetExceedDuration(long dur) {
        this.exceedDuration = dur;
    }

    public final void resetStartTime(long time) {
        this.startTime = time;
    }

    public /* synthetic */ TimeGuard(long j, long j2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, (i & 2) != 0 ? System.currentTimeMillis() : j2);
    }
}
