package com.onyx.android.sdk.data.common.cloud.p026v2;

import com.onyx.android.sdk.base.utils.MarketUtils;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/v2/MarketChannelHeaderInterceptor;", "Lokhttp3/Interceptor;", "channel", "", "(Ljava/lang/String;)V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MarketChannelHeaderInterceptor implements Interceptor {

    @NotNull
    private final String channel;

    /* JADX WARN: Multi-variable type inference failed */
    public MarketChannelHeaderInterceptor() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request.Builder newBuilder = chain.request().newBuilder();
        if (this.channel.length() > 0) {
            newBuilder.addHeader("channel", this.channel);
        }
        return chain.proceed(newBuilder.build());
    }

    public MarketChannelHeaderInterceptor(@NotNull String channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        this.channel = channel;
    }

    public /* synthetic */ MarketChannelHeaderInterceptor(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? MarketUtils.INSTANCE.getMarketChannel() : str);
    }
}
