package com.onyx.android.sdk.pen;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoMarkerPen;", "Lcom/onyx/android/sdk/pen/NeoSinglePathResultPen;", "penHandle", "", "(J)V", "Companion", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NeoMarkerPen extends NeoSinglePathResultPen {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoMarkerPen$Companion;", "", "()V", "defaultPenConfig", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final NeoPenConfig defaultPenConfig() {
            NeoPenConfig neoPenConfig = new NeoPenConfig();
            neoPenConfig.m72320setType(3);
            return neoPenConfig;
        }

        public Companion() {
        }
    }

    public NeoMarkerPen() {
        this(0L, 1, null);
    }

    public NeoMarkerPen(long j) {
        super(j);
    }

    public /* synthetic */ NeoMarkerPen(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j);
    }
}
