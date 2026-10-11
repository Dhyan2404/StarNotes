package com.onyx.android.sdk.data.common.oss;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u0011\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005B\u000f\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0000¢\u0006\u0002\u0010\u0007R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0005¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/OssSTS;", "", "()V", "server", "", "(Ljava/lang/String;)V", "sts", "(Lcom/onyx/android/sdk/data/common/oss/OssSTS;)V", "getServer", "()Ljava/lang/String;", "setServer", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OssSTS {

    @Nullable
    private String server;

    public OssSTS() {
    }

    @Nullable
    public final String getServer() {
        return this.server;
    }

    public final void setServer(@Nullable String str) {
        this.server = str;
    }

    public OssSTS(@Nullable String str) {
        this.server = str;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OssSTS(@NotNull OssSTS sts) {
        this(sts.server);
        Intrinsics.checkNotNullParameter(sts, "sts");
    }
}
