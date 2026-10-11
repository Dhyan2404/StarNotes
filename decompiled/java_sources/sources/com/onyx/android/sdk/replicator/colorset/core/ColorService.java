package com.onyx.android.sdk.replicator.colorset.core;

import defpackage.ColorSetQueryResponse;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.GET;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003H'¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/colorset/core/ColorService;", "", "loadColorSet", "Lretrofit2/Call;", "LColorSetQueryResponse;", "loadColorSet2", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ColorService {
    @GET("colors/")
    @NotNull
    Call<ColorSetQueryResponse> loadColorSet();

    @GET("colors/")
    @NotNull
    Call<String> loadColorSet2();
}
