package com.onyx.android.sdk.replicator.note.data.line;

import android.graphics.DashPathEffect;
import android.graphics.Paint;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;", "Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;", "()V", "applyStyle", "", "paint", "Landroid/graphics/Paint;", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "", "scale", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class DashLineStyle extends LineStyle {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private static final DashLineStyle DASH_LINE_1;

    @NotNull
    private static final DashLineStyle DASH_LINE_2;

    @NotNull
    private static final DashLineStyle DASH_LINE_3;

    @NotNull
    private static final DashLineStyle DASH_LINE_4;

    @NotNull
    private static final DashLineStyle DASH_LINE_5;

    @NotNull
    private static final DashLineStyle DASH_LINE_6;

    @Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018J\u0010\u0010\u001a\u001a\u00020\u00042\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u0018\u0010\u001a\u001a\u00020\u00042\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u0018R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0006R\u0011\u0010\u000f\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0006¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;", "", "()V", "DASH_LINE_1", "Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;", "getDASH_LINE_1", "()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;", "DASH_LINE_2", "getDASH_LINE_2", "DASH_LINE_3", "getDASH_LINE_3", "DASH_LINE_4", "getDASH_LINE_4", "DASH_LINE_5", "getDASH_LINE_5", "DASH_LINE_6", "getDASH_LINE_6", "applyStyle", "", "lineStyle", "Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;", "paint", "Landroid/graphics/Paint;", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "", "scale", BaiduYunConstant.CREATE, "dashLineIntervals", "", TypedValues.CycleType.S_WAVE_PHASE, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void applyStyle(@NotNull LineStyle lineStyle, @NotNull Paint paint, float strokeWidth, float scale) {
            Intrinsics.checkNotNullParameter(lineStyle, "lineStyle");
            Intrinsics.checkNotNullParameter(paint, "paint");
            if (lineStyle.ensureIntervalsValid()) {
                paint.setPathEffect(new DashPathEffect(lineStyle.getIntervalsWithScale(strokeWidth, scale), lineStyle.getPhase() * scale));
            }
        }

        @NotNull
        public final DashLineStyle create(@Nullable float[] dashLineIntervals) {
            return create(dashLineIntervals, 0.0f);
        }

        @NotNull
        public final DashLineStyle getDASH_LINE_1() {
            return DashLineStyle.DASH_LINE_1;
        }

        @NotNull
        public final DashLineStyle getDASH_LINE_2() {
            return DashLineStyle.DASH_LINE_2;
        }

        @NotNull
        public final DashLineStyle getDASH_LINE_3() {
            return DashLineStyle.DASH_LINE_3;
        }

        @NotNull
        public final DashLineStyle getDASH_LINE_4() {
            return DashLineStyle.DASH_LINE_4;
        }

        @NotNull
        public final DashLineStyle getDASH_LINE_5() {
            return DashLineStyle.DASH_LINE_5;
        }

        @NotNull
        public final DashLineStyle getDASH_LINE_6() {
            return DashLineStyle.DASH_LINE_6;
        }

        private Companion() {
        }

        @NotNull
        public final DashLineStyle create(@Nullable float[] dashLineIntervals, float phase) {
            DashLineStyle dashLineStyle = new DashLineStyle();
            dashLineStyle.setDashLineIntervals(dashLineIntervals);
            dashLineStyle.setPhase(phase);
            dashLineStyle.setType(1);
            return dashLineStyle;
        }
    }

    static {
        Companion companion = new Companion(null);
        INSTANCE = companion;
        DASH_LINE_1 = companion.create(new float[]{8.0f, 5.0f});
        DASH_LINE_2 = companion.create(new float[]{20.0f, 5.0f});
        DASH_LINE_3 = companion.create(new float[]{40.0f, 15.0f});
        DASH_LINE_4 = companion.create(new float[]{20.0f, 10.0f, 5.0f, 10.0f});
        DASH_LINE_5 = companion.create(new float[]{20.0f, 10.0f, 5.0f, 10.0f, 5.0f, 10.0f});
        DASH_LINE_6 = companion.create(new float[]{40.0f, 10.0f, 10.0f, 10.0f});
    }

    @Override // com.onyx.android.sdk.replicator.note.data.line.LineStyle
    public void applyStyle(@NotNull Paint paint, float strokeWidth, float scale) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        INSTANCE.applyStyle(this, paint, strokeWidth, scale);
    }
}
