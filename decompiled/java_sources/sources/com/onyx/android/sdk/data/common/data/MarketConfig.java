package com.onyx.android.sdk.data.common.data;

import com.onyx.galaxy.note.message.data.MessageConst;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/MarketConfig;", "", "()V", "channel", "", "getChannel", "()Ljava/lang/String;", "setChannel", "(Ljava/lang/String;)V", "localMarketUri", "getLocalMarketUri", "setLocalMarketUri", MessageConst.KEY_PACKAGE_NAME, "getPackageName", "setPackageName", "webMarketUri", "getWebMarketUri", "setWebMarketUri", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MarketConfig {

    @NotNull
    private String channel = "";

    @NotNull
    private String packageName = "";

    @NotNull
    private String localMarketUri = "";

    @NotNull
    private String webMarketUri = "";

    @NotNull
    public final String getChannel() {
        return this.channel;
    }

    @NotNull
    public final String getLocalMarketUri() {
        return this.localMarketUri;
    }

    @NotNull
    public final String getPackageName() {
        return this.packageName;
    }

    @NotNull
    public final String getWebMarketUri() {
        return this.webMarketUri;
    }

    public final void setChannel(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.channel = str;
    }

    public final void setLocalMarketUri(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.localMarketUri = str;
    }

    public final void setPackageName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.packageName = str;
    }

    public final void setWebMarketUri(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.webMarketUri = str;
    }
}
