package com.onyx.android.sdk.data.common.oss;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.alibaba.sdk.android.oss.model.ListObjectsRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b \n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006¢\u0006\u0002\u0010\nJ\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0006HÆ\u0003JT\u0010$\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\t\u001a\u00020\u0006HÆ\u0001¢\u0006\u0002\u0010%J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0006HÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\u000e\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\f\"\u0004\b\u0019\u0010\u000eR\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;", "", RequestParameters.PREFIX, "", "marker", "maxKeys", "", "delimiter", "encodingType", "retryTimes", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V", "getDelimiter", "()Ljava/lang/String;", "setDelimiter", "(Ljava/lang/String;)V", "getEncodingType", "setEncodingType", "getMarker", "setMarker", "getMaxKeys", "()Ljava/lang/Integer;", "setMaxKeys", "(Ljava/lang/Integer;)V", Constants.INTEGER_SIG, "getPrefix", "setPrefix", "getRetryTimes", "()I", "setRetryTimes", "(I)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;", "equals", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "toString", "updateListObjectsRequest", "", AbstractLogger.REQUEST, "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class GetListObjectBean {

    @Nullable
    private String delimiter;

    @Nullable
    private String encodingType;

    @Nullable
    private String marker;

    @Nullable
    private Integer maxKeys;

    @Nullable
    private String prefix;
    private int retryTimes;

    public GetListObjectBean() {
        this(null, null, null, null, null, 0, 63, null);
    }

    public static /* synthetic */ GetListObjectBean copy$default(GetListObjectBean getListObjectBean, String str, String str2, Integer num, String str3, String str4, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = getListObjectBean.prefix;
        }
        if ((i2 & 2) != 0) {
            str2 = getListObjectBean.marker;
        }
        String str5 = str2;
        if ((i2 & 4) != 0) {
            num = getListObjectBean.maxKeys;
        }
        Integer num2 = num;
        if ((i2 & 8) != 0) {
            str3 = getListObjectBean.delimiter;
        }
        String str6 = str3;
        if ((i2 & 16) != 0) {
            str4 = getListObjectBean.encodingType;
        }
        String str7 = str4;
        if ((i2 & 32) != 0) {
            i = getListObjectBean.retryTimes;
        }
        return getListObjectBean.copy(str, str5, num2, str6, str7, i);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getPrefix() {
        return this.prefix;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getMarker() {
        return this.marker;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final Integer getMaxKeys() {
        return this.maxKeys;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final String getDelimiter() {
        return this.delimiter;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final String getEncodingType() {
        return this.encodingType;
    }

    /* renamed from: component6, reason: from getter */
    public final int getRetryTimes() {
        return this.retryTimes;
    }

    @NotNull
    public final GetListObjectBean copy(@Nullable String prefix, @Nullable String marker, @Nullable Integer maxKeys, @Nullable String delimiter, @Nullable String encodingType, int retryTimes) {
        return new GetListObjectBean(prefix, marker, maxKeys, delimiter, encodingType, retryTimes);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GetListObjectBean)) {
            return false;
        }
        GetListObjectBean getListObjectBean = (GetListObjectBean) other;
        return Intrinsics.areEqual(this.prefix, getListObjectBean.prefix) && Intrinsics.areEqual(this.marker, getListObjectBean.marker) && Intrinsics.areEqual(this.maxKeys, getListObjectBean.maxKeys) && Intrinsics.areEqual(this.delimiter, getListObjectBean.delimiter) && Intrinsics.areEqual(this.encodingType, getListObjectBean.encodingType) && this.retryTimes == getListObjectBean.retryTimes;
    }

    @Nullable
    public final String getDelimiter() {
        return this.delimiter;
    }

    @Nullable
    public final String getEncodingType() {
        return this.encodingType;
    }

    @Nullable
    public final String getMarker() {
        return this.marker;
    }

    @Nullable
    public final Integer getMaxKeys() {
        return this.maxKeys;
    }

    @Nullable
    public final String getPrefix() {
        return this.prefix;
    }

    public final int getRetryTimes() {
        return this.retryTimes;
    }

    public int hashCode() {
        String str = this.prefix;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.marker;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.maxKeys;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.delimiter;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.encodingType;
        return ((hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31) + Integer.hashCode(this.retryTimes);
    }

    public final void setDelimiter(@Nullable String str) {
        this.delimiter = str;
    }

    public final void setEncodingType(@Nullable String str) {
        this.encodingType = str;
    }

    public final void setMarker(@Nullable String str) {
        this.marker = str;
    }

    public final void setMaxKeys(@Nullable Integer num) {
        this.maxKeys = num;
    }

    public final void setPrefix(@Nullable String str) {
        this.prefix = str;
    }

    public final void setRetryTimes(int i) {
        this.retryTimes = i;
    }

    @NotNull
    public String toString() {
        return "GetListObjectBean(prefix=" + this.prefix + ", marker=" + this.marker + ", maxKeys=" + this.maxKeys + ", delimiter=" + this.delimiter + ", encodingType=" + this.encodingType + ", retryTimes=" + this.retryTimes + ')';
    }

    public final void updateListObjectsRequest(@NotNull ListObjectsRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        request.setMarker(this.marker);
        request.setPrefix(this.prefix);
        request.setDelimiter(this.delimiter);
        request.setEncodingType(this.encodingType);
        request.setMaxKeys(this.maxKeys);
    }

    public GetListObjectBean(@Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable String str4, int i) {
        this.prefix = str;
        this.marker = str2;
        this.maxKeys = num;
        this.delimiter = str3;
        this.encodingType = str4;
        this.retryTimes = i;
    }

    public /* synthetic */ GetListObjectBean(String str, String str2, Integer num, String str3, String str4, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : num, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? 2 : i);
    }
}
