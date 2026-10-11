package com.onyx.android.sdk.pennative;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/pennative/PenInkResult;", "", "Lcom/onyx/android/sdk/pennative/PenInk;", "a", "Lcom/onyx/android/sdk/pennative/PenInk;", "getRealInk", "()Lcom/onyx/android/sdk/pennative/PenInk;", "realInk", "b", "getPredictionInk", "predictionInk", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/pennative/PenInk;Lcom/onyx/android/sdk/pennative/PenInk;)V", "Companion", "sdk-pennative_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PenInkResult {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final PenInk realInk;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final PenInk predictionInk;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/pennative/PenInkResult$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/pennative/PenInkResult;", "realInk", "Lcom/onyx/android/sdk/pennative/PenInk;", "predictionInk", "sdk-pennative_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final PenInkResult create(@NotNull PenInk realInk, @NotNull PenInk predictionInk) {
            Intrinsics.checkNotNullParameter(realInk, "realInk");
            Intrinsics.checkNotNullParameter(predictionInk, "predictionInk");
            return new PenInkResult(realInk, predictionInk);
        }

        public Companion() {
        }
    }

    public PenInkResult(@NotNull PenInk realInk, @NotNull PenInk predictionInk) {
        Intrinsics.checkNotNullParameter(realInk, "realInk");
        Intrinsics.checkNotNullParameter(predictionInk, "predictionInk");
        this.realInk = realInk;
        this.predictionInk = predictionInk;
    }

    @JvmStatic
    @NotNull
    public static final PenInkResult create(@NotNull PenInk penInk, @NotNull PenInk penInk2) {
        return INSTANCE.create(penInk, penInk2);
    }

    @NotNull
    public final PenInk getPredictionInk() {
        return this.predictionInk;
    }

    @NotNull
    public final PenInk getRealInk() {
        return this.realInk;
    }
}
