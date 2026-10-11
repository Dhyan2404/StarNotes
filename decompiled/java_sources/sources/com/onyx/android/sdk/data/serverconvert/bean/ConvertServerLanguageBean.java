package com.onyx.android.sdk.data.serverconvert.bean;

import com.onyx.android.sdk.data.common.oss.OssConfigInfo;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0007HÆ\u0003J3\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\n\"\u0004\b\u0014\u0010\f¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertServerLanguageBean;", "", "name", "", "lang", "region", "ossConfig", "Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;)V", "getLang", "()Ljava/lang/String;", "setLang", "(Ljava/lang/String;)V", "getName", "setName", "getOssConfig", "()Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;", "setOssConfig", "(Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;)V", "getRegion", "setRegion", "component1", "component2", "component3", "component4", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class ConvertServerLanguageBean {

    @NotNull
    private String lang;

    @NotNull
    private String name;

    @Nullable
    private OssConfigInfo ossConfig;

    @NotNull
    private String region;

    public ConvertServerLanguageBean(@NotNull String name, @NotNull String lang, @NotNull String region, @Nullable OssConfigInfo ossConfigInfo) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(lang, "lang");
        Intrinsics.checkNotNullParameter(region, "region");
        this.name = name;
        this.lang = lang;
        this.region = region;
        this.ossConfig = ossConfigInfo;
    }

    public static /* synthetic */ ConvertServerLanguageBean copy$default(ConvertServerLanguageBean convertServerLanguageBean, String str, String str2, String str3, OssConfigInfo ossConfigInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            str = convertServerLanguageBean.name;
        }
        if ((i & 2) != 0) {
            str2 = convertServerLanguageBean.lang;
        }
        if ((i & 4) != 0) {
            str3 = convertServerLanguageBean.region;
        }
        if ((i & 8) != 0) {
            ossConfigInfo = convertServerLanguageBean.ossConfig;
        }
        return convertServerLanguageBean.copy(str, str2, str3, ossConfigInfo);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getLang() {
        return this.lang;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getRegion() {
        return this.region;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final OssConfigInfo getOssConfig() {
        return this.ossConfig;
    }

    @NotNull
    public final ConvertServerLanguageBean copy(@NotNull String name, @NotNull String lang, @NotNull String region, @Nullable OssConfigInfo ossConfig) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(lang, "lang");
        Intrinsics.checkNotNullParameter(region, "region");
        return new ConvertServerLanguageBean(name, lang, region, ossConfig);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConvertServerLanguageBean)) {
            return false;
        }
        ConvertServerLanguageBean convertServerLanguageBean = (ConvertServerLanguageBean) other;
        return Intrinsics.areEqual(this.name, convertServerLanguageBean.name) && Intrinsics.areEqual(this.lang, convertServerLanguageBean.lang) && Intrinsics.areEqual(this.region, convertServerLanguageBean.region) && Intrinsics.areEqual(this.ossConfig, convertServerLanguageBean.ossConfig);
    }

    @NotNull
    public final String getLang() {
        return this.lang;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final OssConfigInfo getOssConfig() {
        return this.ossConfig;
    }

    @NotNull
    public final String getRegion() {
        return this.region;
    }

    public int hashCode() {
        int hashCode = ((((this.name.hashCode() * 31) + this.lang.hashCode()) * 31) + this.region.hashCode()) * 31;
        OssConfigInfo ossConfigInfo = this.ossConfig;
        return hashCode + (ossConfigInfo == null ? 0 : ossConfigInfo.hashCode());
    }

    public final void setLang(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lang = str;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setOssConfig(@Nullable OssConfigInfo ossConfigInfo) {
        this.ossConfig = ossConfigInfo;
    }

    public final void setRegion(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.region = str;
    }

    @NotNull
    public String toString() {
        return "ConvertServerLanguageBean(name=" + this.name + ", lang=" + this.lang + ", region=" + this.region + ", ossConfig=" + this.ossConfig + ')';
    }

    public /* synthetic */ ConvertServerLanguageBean(String str, String str2, String str3, OssConfigInfo ossConfigInfo, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, ossConfigInfo);
    }
}
