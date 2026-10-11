package com.onyx.android.sdk.data.config;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/data/config/DocConvertConfig;", "", "()V", "convertServerName", "", "getConvertServerName", "()Ljava/lang/String;", "setConvertServerName", "(Ljava/lang/String;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DocConvertConfig {

    @NotNull
    private String convertServerName = "zh";

    @NotNull
    public final String getConvertServerName() {
        return this.convertServerName;
    }

    public final void setConvertServerName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.convertServerName = str;
    }
}
