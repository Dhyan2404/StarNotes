package com.onyx.android.sdk.prediction;

import android.content.Context;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/prediction/EstimateManager;", "", "Landroid/content/Context;", "appContext", "Lcom/onyx/android/sdk/prediction/IEstimate;", "createEstimate", "", "a", Constants.HASIDCALL_INDEX_SIG, "isEstimateValid", Constants.BOOLEAN_VALUE_SIG, "setEstimateValid", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-prediction_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EstimateManager {

    @NotNull
    public static final EstimateManager INSTANCE = new EstimateManager();

    /* renamed from: a, reason: from kotlin metadata */
    public static boolean isEstimateValid = true;

    @Nullable
    public final IEstimate createEstimate(@NotNull Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        if (isEstimateValid) {
            return new EstimateCreator(appContext).ensureEstimate();
        }
        return null;
    }

    public final boolean isEstimateValid() {
        return isEstimateValid;
    }

    public final void setEstimateValid(boolean z) {
        isEstimateValid = z;
    }
}
