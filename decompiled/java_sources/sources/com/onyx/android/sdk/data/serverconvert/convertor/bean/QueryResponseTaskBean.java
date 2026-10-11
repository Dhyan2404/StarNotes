package com.onyx.android.sdk.data.serverconvert.convertor.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b!\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003JO\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u0003HÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0005HÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000fR\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\r\"\u0004\b\u001b\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\r\"\u0004\b\u001d\u0010\u000f¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponseTaskBean;", "", "ticket", "", "status", "", "key", "bucket", "region", "target", "targetKey", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBucket", "()Ljava/lang/String;", "setBucket", "(Ljava/lang/String;)V", "getKey", "setKey", "getRegion", "setRegion", "getStatus", "()I", "setStatus", "(I)V", "getTarget", "setTarget", "getTargetKey", "setTargetKey", "getTicket", "setTicket", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class QueryResponseTaskBean {

    @NotNull
    private String bucket;

    @NotNull
    private String key;

    @NotNull
    private String region;
    private int status;

    @NotNull
    private String target;

    @NotNull
    private String targetKey;

    @NotNull
    private String ticket;

    public QueryResponseTaskBean() {
        this(null, 0, null, null, null, null, null, 127, null);
    }

    public static /* synthetic */ QueryResponseTaskBean copy$default(QueryResponseTaskBean queryResponseTaskBean, String str, int i, String str2, String str3, String str4, String str5, String str6, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = queryResponseTaskBean.ticket;
        }
        if ((i2 & 2) != 0) {
            i = queryResponseTaskBean.status;
        }
        int i3 = i;
        if ((i2 & 4) != 0) {
            str2 = queryResponseTaskBean.key;
        }
        String str7 = str2;
        if ((i2 & 8) != 0) {
            str3 = queryResponseTaskBean.bucket;
        }
        String str8 = str3;
        if ((i2 & 16) != 0) {
            str4 = queryResponseTaskBean.region;
        }
        String str9 = str4;
        if ((i2 & 32) != 0) {
            str5 = queryResponseTaskBean.target;
        }
        String str10 = str5;
        if ((i2 & 64) != 0) {
            str6 = queryResponseTaskBean.targetKey;
        }
        return queryResponseTaskBean.copy(str, i3, str7, str8, str9, str10, str6);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getTicket() {
        return this.ticket;
    }

    /* renamed from: component2, reason: from getter */
    public final int getStatus() {
        return this.status;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getBucket() {
        return this.bucket;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final String getRegion() {
        return this.region;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final String getTarget() {
        return this.target;
    }

    @NotNull
    /* renamed from: component7, reason: from getter */
    public final String getTargetKey() {
        return this.targetKey;
    }

    @NotNull
    public final QueryResponseTaskBean copy(@NotNull String ticket, int status, @NotNull String key, @NotNull String bucket, @NotNull String region, @NotNull String target, @NotNull String targetKey) {
        Intrinsics.checkNotNullParameter(ticket, "ticket");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(bucket, "bucket");
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(targetKey, "targetKey");
        return new QueryResponseTaskBean(ticket, status, key, bucket, region, target, targetKey);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof QueryResponseTaskBean)) {
            return false;
        }
        QueryResponseTaskBean queryResponseTaskBean = (QueryResponseTaskBean) other;
        return Intrinsics.areEqual(this.ticket, queryResponseTaskBean.ticket) && this.status == queryResponseTaskBean.status && Intrinsics.areEqual(this.key, queryResponseTaskBean.key) && Intrinsics.areEqual(this.bucket, queryResponseTaskBean.bucket) && Intrinsics.areEqual(this.region, queryResponseTaskBean.region) && Intrinsics.areEqual(this.target, queryResponseTaskBean.target) && Intrinsics.areEqual(this.targetKey, queryResponseTaskBean.targetKey);
    }

    @NotNull
    public final String getBucket() {
        return this.bucket;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final String getRegion() {
        return this.region;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final String getTarget() {
        return this.target;
    }

    @NotNull
    public final String getTargetKey() {
        return this.targetKey;
    }

    @NotNull
    public final String getTicket() {
        return this.ticket;
    }

    public int hashCode() {
        return (((((((((((this.ticket.hashCode() * 31) + Integer.hashCode(this.status)) * 31) + this.key.hashCode()) * 31) + this.bucket.hashCode()) * 31) + this.region.hashCode()) * 31) + this.target.hashCode()) * 31) + this.targetKey.hashCode();
    }

    public final void setBucket(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.bucket = str;
    }

    public final void setKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.key = str;
    }

    public final void setRegion(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.region = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTarget(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.target = str;
    }

    public final void setTargetKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.targetKey = str;
    }

    public final void setTicket(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.ticket = str;
    }

    @NotNull
    public String toString() {
        return "QueryResponseTaskBean(ticket=" + this.ticket + ", status=" + this.status + ", key=" + this.key + ", bucket=" + this.bucket + ", region=" + this.region + ", target=" + this.target + ", targetKey=" + this.targetKey + ')';
    }

    public QueryResponseTaskBean(@NotNull String ticket, int i, @NotNull String key, @NotNull String bucket, @NotNull String region, @NotNull String target, @NotNull String targetKey) {
        Intrinsics.checkNotNullParameter(ticket, "ticket");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(bucket, "bucket");
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(targetKey, "targetKey");
        this.ticket = ticket;
        this.status = i;
        this.key = key;
        this.bucket = bucket;
        this.region = region;
        this.target = target;
        this.targetKey = targetKey;
    }

    public /* synthetic */ QueryResponseTaskBean(String str, int i, String str2, String str3, String str4, String str5, String str6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? -1 : i, (i2 & 4) != 0 ? "" : str2, (i2 & 8) != 0 ? "" : str3, (i2 & 16) != 0 ? "" : str4, (i2 & 32) != 0 ? "" : str5, (i2 & 64) != 0 ? "" : str6);
    }
}
