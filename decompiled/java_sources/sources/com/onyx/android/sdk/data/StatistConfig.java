package com.onyx.android.sdk.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0019B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J-\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00032\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/data/StatistConfig;", "", "enable", "", "apiUrl", "", "retryConfigs", "", "Lcom/onyx/android/sdk/data/StatistConfig$RetryConfig;", "(ZLjava/lang/String;Ljava/util/List;)V", "getApiUrl", "()Ljava/lang/String;", "getEnable", Constants.BOOLEAN_VALUE_SIG, "getRetryConfigs", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "RetryConfig", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class StatistConfig {

    @NotNull
    private final String apiUrl;
    private final boolean enable;

    @NotNull
    private final List<RetryConfig> retryConfigs;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\r\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/data/StatistConfig$RetryConfig;", "", "isClearData", "", "periodTime", "", "(ZI)V", Constants.BOOLEAN_VALUE_SIG, "getPeriodTime", "()I", "component1", "component2", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "toString", "", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final /* data */ class RetryConfig {
        private final boolean isClearData;
        private final int periodTime;

        public RetryConfig(boolean z, int i) {
            this.isClearData = z;
            this.periodTime = i;
        }

        public static /* synthetic */ RetryConfig copy$default(RetryConfig retryConfig, boolean z, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                z = retryConfig.isClearData;
            }
            if ((i2 & 2) != 0) {
                i = retryConfig.periodTime;
            }
            return retryConfig.copy(z, i);
        }

        /* renamed from: component1, reason: from getter */
        public final boolean getIsClearData() {
            return this.isClearData;
        }

        /* renamed from: component2, reason: from getter */
        public final int getPeriodTime() {
            return this.periodTime;
        }

        @NotNull
        public final RetryConfig copy(boolean isClearData, int periodTime) {
            return new RetryConfig(isClearData, periodTime);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RetryConfig)) {
                return false;
            }
            RetryConfig retryConfig = (RetryConfig) other;
            return this.isClearData == retryConfig.isClearData && this.periodTime == retryConfig.periodTime;
        }

        public final int getPeriodTime() {
            return this.periodTime;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r0v5 */
        public int hashCode() {
            boolean z = this.isClearData;
            ?? r0 = z;
            if (z) {
                r0 = 1;
            }
            return (r0 * 31) + Integer.hashCode(this.periodTime);
        }

        public final boolean isClearData() {
            return this.isClearData;
        }

        @NotNull
        public String toString() {
            return "RetryConfig(isClearData=" + this.isClearData + ", periodTime=" + this.periodTime + ')';
        }
    }

    public StatistConfig(boolean z, @NotNull String apiUrl, @NotNull List<RetryConfig> retryConfigs) {
        Intrinsics.checkNotNullParameter(apiUrl, "apiUrl");
        Intrinsics.checkNotNullParameter(retryConfigs, "retryConfigs");
        this.enable = z;
        this.apiUrl = apiUrl;
        this.retryConfigs = retryConfigs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StatistConfig copy$default(StatistConfig statistConfig, boolean z, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = statistConfig.enable;
        }
        if ((i & 2) != 0) {
            str = statistConfig.apiUrl;
        }
        if ((i & 4) != 0) {
            list = statistConfig.retryConfigs;
        }
        return statistConfig.copy(z, str, list);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getEnable() {
        return this.enable;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getApiUrl() {
        return this.apiUrl;
    }

    @NotNull
    public final List<RetryConfig> component3() {
        return this.retryConfigs;
    }

    @NotNull
    public final StatistConfig copy(boolean enable, @NotNull String apiUrl, @NotNull List<RetryConfig> retryConfigs) {
        Intrinsics.checkNotNullParameter(apiUrl, "apiUrl");
        Intrinsics.checkNotNullParameter(retryConfigs, "retryConfigs");
        return new StatistConfig(enable, apiUrl, retryConfigs);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StatistConfig)) {
            return false;
        }
        StatistConfig statistConfig = (StatistConfig) other;
        return this.enable == statistConfig.enable && Intrinsics.areEqual(this.apiUrl, statistConfig.apiUrl) && Intrinsics.areEqual(this.retryConfigs, statistConfig.retryConfigs);
    }

    @NotNull
    public final String getApiUrl() {
        return this.apiUrl;
    }

    public final boolean getEnable() {
        return this.enable;
    }

    @NotNull
    public final List<RetryConfig> getRetryConfigs() {
        return this.retryConfigs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public int hashCode() {
        boolean z = this.enable;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (((r0 * 31) + this.apiUrl.hashCode()) * 31) + this.retryConfigs.hashCode();
    }

    @NotNull
    public String toString() {
        return "StatistConfig(enable=" + this.enable + ", apiUrl=" + this.apiUrl + ", retryConfigs=" + this.retryConfigs + ')';
    }
}
