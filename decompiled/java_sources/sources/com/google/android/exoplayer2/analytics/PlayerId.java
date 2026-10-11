package com.google.android.exoplayer2.analytics;

import android.media.metrics.LogSessionId;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class PlayerId {
    public static final PlayerId UNSET;

    /* renamed from: a */
    @Nullable
    public final C4677a f22975a;

    @RequiresApi(31)
    /* renamed from: com.google.android.exoplayer2.analytics.PlayerId$a */
    /* loaded from: classes5.dex */
    public static final class C4677a {

        /* renamed from: b */
        public static final C4677a f22976b;

        /* renamed from: a */
        public final LogSessionId f22977a;

        static {
            LogSessionId logSessionId;
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            f22976b = new C4677a(logSessionId);
        }

        public C4677a(LogSessionId logSessionId) {
            this.f22977a = logSessionId;
        }
    }

    static {
        UNSET = Util.SDK_INT < 31 ? new PlayerId() : new PlayerId(C4677a.f22976b);
    }

    public PlayerId() {
        this((C4677a) null);
        Assertions.checkState(Util.SDK_INT < 31);
    }

    @RequiresApi(31)
    public LogSessionId getLogSessionId() {
        return ((C4677a) Assertions.checkNotNull(this.f22975a)).f22977a;
    }

    @RequiresApi(31)
    public PlayerId(LogSessionId logSessionId) {
        this(new C4677a(logSessionId));
    }

    public PlayerId(@Nullable C4677a c4677a) {
        this.f22975a = c4677a;
    }
}
