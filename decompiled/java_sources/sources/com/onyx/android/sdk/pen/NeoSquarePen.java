package com.onyx.android.sdk.pen;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.pen.PenPathResult;
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

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J'\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0010¢\u0006\u0002\b\n¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoSquarePen;", "Lcom/onyx/android/sdk/pen/NeoNativePen;", "handle", "", "(J)V", "buildPenResult", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/pen/PenResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/pennative/PenInkResult;", "buildPenResult$sdk_pen_release", "Companion", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NeoSquarePen extends NeoNativePen {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoSquarePen$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/pen/NeoPen;", AbstractLogger.CONFIG, "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "defaultPenConfig", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final NeoPen create(@NotNull NeoPenConfig config) {
            Intrinsics.checkNotNullParameter(config, "config");
            long createPen = NeoPenNative.INSTANCE.createPen(9, config.toNativeConfig());
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (createPen == 0) {
                return null;
            }
            return new NeoSquarePen(createPen, defaultConstructorMarker);
        }

        @NotNull
        public final NeoPenConfig defaultPenConfig() {
            NeoPenConfig neoPenConfig = new NeoPenConfig();
            neoPenConfig.setDirectionEnabled(true);
            neoPenConfig.setBrushShape(1);
            neoPenConfig.setSmoothLevel(0.2f);
            return neoPenConfig;
        }

        public Companion() {
        }
    }

    public /* synthetic */ NeoSquarePen(long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(j);
    }

    @Override // com.onyx.android.sdk.pen.NeoNativePen
    @NotNull
    public Pair<PenResult, PenResult> buildPenResult$sdk_pen_release(@Nullable PenInkResult result) {
        PenPathResult.Companion companion = PenPathResult.INSTANCE;
        return new Pair<>(companion.buildFromInkArray(result != null ? result.getRealInk() : null), companion.buildFromInkArray(result != null ? result.getPredictionInk() : null));
    }

    public NeoSquarePen(long j) {
        super(j);
    }
}
