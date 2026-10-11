package com.onyx.android.sdk.replicator.colorset.core;

import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.sun.org.apache.bcel.internal.Constants;
import defpackage.ColorSetQueryResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/colorset/core/ColorServiceExecutor;", "", "LColorSetQueryResponse;", "loadColorSet", "Lcom/onyx/android/sdk/replicator/colorset/core/ColorService;", "a", "Lcom/onyx/android/sdk/replicator/colorset/core/ColorService;", "getColorApi", "()Lcom/onyx/android/sdk/replicator/colorset/core/ColorService;", "colorApi", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ColorServiceExecutor {

    @NotNull
    public static final ColorServiceExecutor INSTANCE = new ColorServiceExecutor();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final ColorService colorApi = (ColorService) ServiceFactory.INSTANCE.getOnyxApiV2Service(ColorService.class);

    @NotNull
    public final ColorService getColorApi() {
        return colorApi;
    }

    @NotNull
    public final ColorSetQueryResponse loadColorSet() {
        ColorSetQueryResponse body = colorApi.loadColorSet().execute().body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }
}
