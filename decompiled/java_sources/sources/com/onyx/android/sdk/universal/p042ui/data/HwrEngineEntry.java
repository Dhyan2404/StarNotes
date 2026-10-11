package com.onyx.android.sdk.universal.p042ui.data;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/ui/data/HwrEngineEntry;", "Ljava/io/Serializable;", "()V", "defaultLang", "", "getDefaultLang", "()Ljava/lang/String;", "setDefaultLang", "(Ljava/lang/String;)V", "engineName", "getEngineName", "setEngineName", "functionKey", "getFunctionKey", "setFunctionKey", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class HwrEngineEntry implements Serializable {

    @NotNull
    private String functionKey = "";

    @NotNull
    private String engineName = "";

    @NotNull
    private String defaultLang = "";

    @NotNull
    public final String getDefaultLang() {
        return this.defaultLang;
    }

    @NotNull
    public final String getEngineName() {
        return this.engineName;
    }

    @NotNull
    public final String getFunctionKey() {
        return this.functionKey;
    }

    public final void setDefaultLang(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.defaultLang = str;
    }

    public final void setEngineName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.engineName = str;
    }

    public final void setFunctionKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.functionKey = str;
    }
}
