package com.onyx.android.sdk.data.common.cloud.service;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u001b\u0018\u0000 -2\u00020\u0001:\u0001-B\u0007\b\u0012¢\u0006\u0002\u0010\u0002B\u000f\b\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R\u001a\u0010\u001b\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0015\"\u0004\b\u001d\u0010\u0017R\u001a\u0010\u001e\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0015\"\u0004\b \u0010\u0017R\u001a\u0010!\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0015\"\u0004\b#\u0010\u0017R\u001a\u0010$\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010\u0017R\u001a\u0010'\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0015\"\u0004\b)\u0010\u0017R\u001a\u0010*\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0015\"\u0004\b,\u0010\u0017¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;", "", "()V", "baseUrl", "", "(Ljava/lang/String;)V", "getBaseUrl", "()Ljava/lang/String;", "setBaseUrl", "okHttpWriteTimeoutSecond", "", "getOkHttpWriteTimeoutSecond", "()I", "setOkHttpWriteTimeoutSecond", "(I)V", "okhttpReadTimeoutSecond", "getOkhttpReadTimeoutSecond", "setOkhttpReadTimeoutSecond", "useApkVersionInterceptor", "", "getUseApkVersionInterceptor", Constants.BOOLEAN_VALUE_SIG, "setUseApkVersionInterceptor", "(Z)V", "useAuthInterceptor", "getUseAuthInterceptor", "setUseAuthInterceptor", "useDeviceInterceptor", "getUseDeviceInterceptor", "setUseDeviceInterceptor", "useDeviceSystemInterceptor", "getUseDeviceSystemInterceptor", "setUseDeviceSystemInterceptor", "useJsonConverter", "getUseJsonConverter", "setUseJsonConverter", "useLangInterceptor", "getUseLangInterceptor", "setUseLangInterceptor", "useProjectIdentityInterceptor", "getUseProjectIdentityInterceptor", "setUseProjectIdentityInterceptor", "useTokenInterceptor", "getUseTokenInterceptor", "setUseTokenInterceptor", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ServiceCreateArgs {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private String baseUrl;
    private int okHttpWriteTimeoutSecond;
    private int okhttpReadTimeoutSecond;
    private boolean useApkVersionInterceptor;
    private boolean useAuthInterceptor;
    private boolean useDeviceInterceptor;
    private boolean useDeviceSystemInterceptor;
    private boolean useJsonConverter;
    private boolean useLangInterceptor;
    private boolean useProjectIdentityInterceptor;
    private boolean useTokenInterceptor;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs$Companion;", "", "()V", "onyxServiceCreateArgs", "Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;", "baseUrl", "", "thirdPartyServiceCreateArgs", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ServiceCreateArgs onyxServiceCreateArgs(@NotNull String baseUrl) {
            Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
            ServiceCreateArgs serviceCreateArgs = new ServiceCreateArgs(baseUrl, null);
            serviceCreateArgs.setUseTokenInterceptor(true);
            serviceCreateArgs.setUseApkVersionInterceptor(true);
            serviceCreateArgs.setUseDeviceInterceptor(true);
            serviceCreateArgs.setUseLangInterceptor(true);
            serviceCreateArgs.setUseAuthInterceptor(true);
            serviceCreateArgs.setUseDeviceSystemInterceptor(true);
            serviceCreateArgs.setUseProjectIdentityInterceptor(true);
            return serviceCreateArgs;
        }

        @NotNull
        public final ServiceCreateArgs thirdPartyServiceCreateArgs(@NotNull String baseUrl) {
            Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
            return new ServiceCreateArgs(baseUrl, null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ ServiceCreateArgs(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @NotNull
    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final int getOkHttpWriteTimeoutSecond() {
        return this.okHttpWriteTimeoutSecond;
    }

    public final int getOkhttpReadTimeoutSecond() {
        return this.okhttpReadTimeoutSecond;
    }

    public final boolean getUseApkVersionInterceptor() {
        return this.useApkVersionInterceptor;
    }

    public final boolean getUseAuthInterceptor() {
        return this.useAuthInterceptor;
    }

    public final boolean getUseDeviceInterceptor() {
        return this.useDeviceInterceptor;
    }

    public final boolean getUseDeviceSystemInterceptor() {
        return this.useDeviceSystemInterceptor;
    }

    public final boolean getUseJsonConverter() {
        return this.useJsonConverter;
    }

    public final boolean getUseLangInterceptor() {
        return this.useLangInterceptor;
    }

    public final boolean getUseProjectIdentityInterceptor() {
        return this.useProjectIdentityInterceptor;
    }

    public final boolean getUseTokenInterceptor() {
        return this.useTokenInterceptor;
    }

    public final void setBaseUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.baseUrl = str;
    }

    public final void setOkHttpWriteTimeoutSecond(int i) {
        this.okHttpWriteTimeoutSecond = i;
    }

    public final void setOkhttpReadTimeoutSecond(int i) {
        this.okhttpReadTimeoutSecond = i;
    }

    public final void setUseApkVersionInterceptor(boolean z) {
        this.useApkVersionInterceptor = z;
    }

    public final void setUseAuthInterceptor(boolean z) {
        this.useAuthInterceptor = z;
    }

    public final void setUseDeviceInterceptor(boolean z) {
        this.useDeviceInterceptor = z;
    }

    public final void setUseDeviceSystemInterceptor(boolean z) {
        this.useDeviceSystemInterceptor = z;
    }

    public final void setUseJsonConverter(boolean z) {
        this.useJsonConverter = z;
    }

    public final void setUseLangInterceptor(boolean z) {
        this.useLangInterceptor = z;
    }

    public final void setUseProjectIdentityInterceptor(boolean z) {
        this.useProjectIdentityInterceptor = z;
    }

    public final void setUseTokenInterceptor(boolean z) {
        this.useTokenInterceptor = z;
    }

    private ServiceCreateArgs() {
        this.baseUrl = "";
        this.useJsonConverter = true;
        this.okhttpReadTimeoutSecond = 30;
        this.okHttpWriteTimeoutSecond = 30;
    }

    private ServiceCreateArgs(String str) {
        this.useJsonConverter = true;
        this.okhttpReadTimeoutSecond = 30;
        this.okHttpWriteTimeoutSecond = 30;
        this.baseUrl = str;
    }
}
