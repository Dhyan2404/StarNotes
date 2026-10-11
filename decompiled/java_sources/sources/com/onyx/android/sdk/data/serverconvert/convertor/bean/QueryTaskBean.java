package com.onyx.android.sdk.data.serverconvert.convertor.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J1\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryTaskBean;", "", "platform", "", "bucket", "region", "ticket", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBucket", "()Ljava/lang/String;", "setBucket", "(Ljava/lang/String;)V", "getPlatform", "setPlatform", "getRegion", "setRegion", "getTicket", "setTicket", "component1", "component2", "component3", "component4", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class QueryTaskBean {

    @NotNull
    private String bucket;

    @NotNull
    private String platform;

    @NotNull
    private String region;

    @NotNull
    private String ticket;

    public QueryTaskBean() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ QueryTaskBean copy$default(QueryTaskBean queryTaskBean, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = queryTaskBean.platform;
        }
        if ((i & 2) != 0) {
            str2 = queryTaskBean.bucket;
        }
        if ((i & 4) != 0) {
            str3 = queryTaskBean.region;
        }
        if ((i & 8) != 0) {
            str4 = queryTaskBean.ticket;
        }
        return queryTaskBean.copy(str, str2, str3, str4);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getPlatform() {
        return this.platform;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getBucket() {
        return this.bucket;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getRegion() {
        return this.region;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getTicket() {
        return this.ticket;
    }

    @NotNull
    public final QueryTaskBean copy(@NotNull String platform, @NotNull String bucket, @NotNull String region, @NotNull String ticket) {
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(bucket, "bucket");
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(ticket, "ticket");
        return new QueryTaskBean(platform, bucket, region, ticket);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof QueryTaskBean)) {
            return false;
        }
        QueryTaskBean queryTaskBean = (QueryTaskBean) other;
        return Intrinsics.areEqual(this.platform, queryTaskBean.platform) && Intrinsics.areEqual(this.bucket, queryTaskBean.bucket) && Intrinsics.areEqual(this.region, queryTaskBean.region) && Intrinsics.areEqual(this.ticket, queryTaskBean.ticket);
    }

    @NotNull
    public final String getBucket() {
        return this.bucket;
    }

    @NotNull
    public final String getPlatform() {
        return this.platform;
    }

    @NotNull
    public final String getRegion() {
        return this.region;
    }

    @NotNull
    public final String getTicket() {
        return this.ticket;
    }

    public int hashCode() {
        return (((((this.platform.hashCode() * 31) + this.bucket.hashCode()) * 31) + this.region.hashCode()) * 31) + this.ticket.hashCode();
    }

    public final void setBucket(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.bucket = str;
    }

    public final void setPlatform(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.platform = str;
    }

    public final void setRegion(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.region = str;
    }

    public final void setTicket(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.ticket = str;
    }

    @NotNull
    public String toString() {
        return "QueryTaskBean(platform=" + this.platform + ", bucket=" + this.bucket + ", region=" + this.region + ", ticket=" + this.ticket + ')';
    }

    public QueryTaskBean(@NotNull String platform, @NotNull String bucket, @NotNull String region, @NotNull String ticket) {
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(bucket, "bucket");
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(ticket, "ticket");
        this.platform = platform;
        this.bucket = bucket;
        this.region = region;
        this.ticket = ticket;
    }

    public /* synthetic */ QueryTaskBean(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4);
    }
}
