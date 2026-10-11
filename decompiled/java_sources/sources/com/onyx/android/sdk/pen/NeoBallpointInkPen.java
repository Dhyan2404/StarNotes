package com.onyx.android.sdk.pen;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.pen.PenPathResult;
import com.onyx.android.sdk.pen.PenPointResult;
import com.onyx.android.sdk.pennative.NeoPenNative;
import com.onyx.android.sdk.pennative.PenInkResult;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0019\b\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u0016\u001a\u00020\u000f¢\u0006\u0004\b\u001d\u0010\u001eJ(\u0010\b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J*\u0010\b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J)\u0010\u000e\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0010¢\u0006\u0004\b\f\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoBallpointInkPen;", "Lcom/onyx/android/sdk/pen/NeoNativePen;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "point", "", "repaint", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/pen/PenResult;", "onPenDown", IStyleSheet.CLASS_PREDICTION, "Lcom/onyx/android/sdk/pennative/PenInkResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "buildPenResult$sdk_pen_release", "(Lcom/onyx/android/sdk/pennative/PenInkResult;)Lkotlin/Pair;", "buildPenResult", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "b", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "getConfig$sdk_pen_release", "()Lcom/onyx/android/sdk/pen/NeoPenConfig;", "setConfig$sdk_pen_release", "(Lcom/onyx/android/sdk/pen/NeoPenConfig;)V", AbstractLogger.CONFIG, "Lcom/onyx/android/sdk/pen/PenPointResult;", "c", "Lcom/onyx/android/sdk/pen/PenPointResult;", "lastPointResult", "", "handle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(JLcom/onyx/android/sdk/pen/NeoPenConfig;)V", "Companion", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NeoBallpointInkPen extends NeoNativePen {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public NeoPenConfig config;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public PenPointResult lastPointResult;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoBallpointInkPen$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/pen/NeoPen;", AbstractLogger.CONFIG, "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "defaultPenConfig", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final NeoPen create(@NotNull NeoPenConfig config) {
            Intrinsics.checkNotNullParameter(config, "config");
            long createPen = NeoPenNative.INSTANCE.createPen(8, config.toNativeConfig());
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (createPen == 0) {
                return null;
            }
            return new NeoBallpointInkPen(createPen, config, defaultConstructorMarker);
        }

        @NotNull
        public final NeoPenConfig defaultPenConfig() {
            NeoPenConfig neoPenConfig = new NeoPenConfig();
            neoPenConfig.m72320setType(8);
            neoPenConfig.setSmoothLevel(0.2f);
            return neoPenConfig;
        }

        public Companion() {
        }
    }

    public /* synthetic */ NeoBallpointInkPen(long j, NeoPenConfig neoPenConfig, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, neoPenConfig);
    }

    @Override // com.onyx.android.sdk.pen.NeoNativePen
    @NotNull
    public Pair<PenResult, PenResult> buildPenResult$sdk_pen_release(@Nullable PenInkResult result) {
        if (!this.config.getFastMode()) {
            PenPathResult.Companion companion = PenPathResult.INSTANCE;
            return new Pair<>(companion.buildFromInkArray(result != null ? result.getRealInk() : null), companion.buildFromInkArray(result != null ? result.getPredictionInk() : null));
        }
        PenPointResult.Companion companion2 = PenPointResult.INSTANCE;
        PenPointResult buildFromInkArray = companion2.buildFromInkArray(result != null ? result.getRealInk() : null, this.lastPointResult);
        PenPointResult buildFromInkArray2 = companion2.buildFromInkArray(result != null ? result.getPredictionInk() : null, buildFromInkArray);
        if (buildFromInkArray != null) {
            this.lastPointResult = buildFromInkArray;
        }
        return new Pair<>(buildFromInkArray, buildFromInkArray2);
    }

    @NotNull
    /* renamed from: getConfig$sdk_pen_release, reason: from getter */
    public final NeoPenConfig getConfig() {
        return this.config;
    }

    @Override // com.onyx.android.sdk.pen.NeoNativePen, com.onyx.android.sdk.pen.NeoPen
    @NotNull
    public Pair<PenResult, PenResult> onPenDown(@NotNull TouchPoint point, boolean repaint) {
        Intrinsics.checkNotNullParameter(point, "point");
        this.lastPointResult = null;
        return super.onPenDown(point, repaint);
    }

    public final void setConfig$sdk_pen_release(@NotNull NeoPenConfig neoPenConfig) {
        Intrinsics.checkNotNullParameter(neoPenConfig, "<set-?>");
        this.config = neoPenConfig;
    }

    public NeoBallpointInkPen(long j, NeoPenConfig neoPenConfig) {
        super(j);
        this.config = neoPenConfig;
    }

    @Override // com.onyx.android.sdk.pen.NeoNativePen, com.onyx.android.sdk.pen.NeoPen
    @NotNull
    public Pair<PenResult, PenResult> onPenDown(@NotNull TouchPoint point, @Nullable TouchPoint prediction) {
        Intrinsics.checkNotNullParameter(point, "point");
        this.lastPointResult = null;
        return super.onPenDown(point, prediction);
    }
}
