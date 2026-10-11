package com.onyx.android.sdk.pen;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.pen.PenPointResult;
import com.onyx.android.sdk.pennative.NeoPenNative;
import com.onyx.android.sdk.pennative.PenInkResult;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0011\b\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J(\u0010\b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J)\u0010\r\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0010¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoBrushPen;", "Lcom/onyx/android/sdk/pen/NeoNativePen;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "point", "", "repaint", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/pen/PenResult;", "onPenDown", "Lcom/onyx/android/sdk/pennative/PenInkResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "buildPenResult$sdk_pen_release", "(Lcom/onyx/android/sdk/pennative/PenInkResult;)Lkotlin/Pair;", "buildPenResult", "Lcom/onyx/android/sdk/pen/PenPointResult;", "b", "Lcom/onyx/android/sdk/pen/PenPointResult;", "lastResult", "", "handle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(J)V", "Companion", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NeoBrushPen extends NeoNativePen {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public PenPointResult lastResult;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoBrushPen$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/pen/NeoPen;", AbstractLogger.CONFIG, "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final NeoPen create(@NotNull NeoPenConfig config) {
            Intrinsics.checkNotNullParameter(config, "config");
            long createPen = NeoPenNative.INSTANCE.createPen(1, config.toNativeConfig());
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (createPen == 0) {
                return null;
            }
            return new NeoBrushPen(createPen, defaultConstructorMarker);
        }

        public Companion() {
        }
    }

    public /* synthetic */ NeoBrushPen(long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(j);
    }

    @Override // com.onyx.android.sdk.pen.NeoNativePen
    @NotNull
    public Pair<PenResult, PenResult> buildPenResult$sdk_pen_release(@Nullable PenInkResult result) {
        PenPointResult.Companion companion = PenPointResult.INSTANCE;
        PenPointResult buildFromInkArray = companion.buildFromInkArray(result != null ? result.getRealInk() : null, this.lastResult);
        PenPointResult buildFromInkArray2 = companion.buildFromInkArray(result != null ? result.getPredictionInk() : null, buildFromInkArray);
        if (buildFromInkArray != null) {
            this.lastResult = buildFromInkArray;
        }
        return new Pair<>(buildFromInkArray, buildFromInkArray2);
    }

    @Override // com.onyx.android.sdk.pen.NeoNativePen, com.onyx.android.sdk.pen.NeoPen
    @NotNull
    public Pair<PenResult, PenResult> onPenDown(@NotNull TouchPoint point, boolean repaint) {
        Intrinsics.checkNotNullParameter(point, "point");
        this.lastResult = null;
        return super.onPenDown(point, repaint);
    }

    public NeoBrushPen(long j) {
        super(j);
    }
}
