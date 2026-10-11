package com.onyx.android.sdk.data.cluster.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma;", "", "user", "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;", "(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;)V", "getUser", "()Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;", "component1", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "ClusterUserInfo", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class PriorityClusterParma {

    @NotNull
    private final ClusterUserInfo user;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003JE\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;", "", "google_email", "", "microsoft_oid", "huawei_id", "mobi", "wechat_id", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getGoogle_email", "()Ljava/lang/String;", "getHuawei_id", "getMicrosoft_oid", "getMobi", "getWechat_id", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final /* data */ class ClusterUserInfo {

        @Nullable
        private final String google_email;

        @Nullable
        private final String huawei_id;

        @Nullable
        private final String microsoft_oid;

        @Nullable
        private final String mobi;

        @Nullable
        private final String wechat_id;

        public ClusterUserInfo() {
            this(null, null, null, null, null, 31, null);
        }

        public static /* synthetic */ ClusterUserInfo copy$default(ClusterUserInfo clusterUserInfo, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
            if ((i & 1) != 0) {
                str = clusterUserInfo.google_email;
            }
            if ((i & 2) != 0) {
                str2 = clusterUserInfo.microsoft_oid;
            }
            String str6 = str2;
            if ((i & 4) != 0) {
                str3 = clusterUserInfo.huawei_id;
            }
            String str7 = str3;
            if ((i & 8) != 0) {
                str4 = clusterUserInfo.mobi;
            }
            String str8 = str4;
            if ((i & 16) != 0) {
                str5 = clusterUserInfo.wechat_id;
            }
            return clusterUserInfo.copy(str, str6, str7, str8, str5);
        }

        @Nullable
        /* renamed from: component1, reason: from getter */
        public final String getGoogle_email() {
            return this.google_email;
        }

        @Nullable
        /* renamed from: component2, reason: from getter */
        public final String getMicrosoft_oid() {
            return this.microsoft_oid;
        }

        @Nullable
        /* renamed from: component3, reason: from getter */
        public final String getHuawei_id() {
            return this.huawei_id;
        }

        @Nullable
        /* renamed from: component4, reason: from getter */
        public final String getMobi() {
            return this.mobi;
        }

        @Nullable
        /* renamed from: component5, reason: from getter */
        public final String getWechat_id() {
            return this.wechat_id;
        }

        @NotNull
        public final ClusterUserInfo copy(@Nullable String google_email, @Nullable String microsoft_oid, @Nullable String huawei_id, @Nullable String mobi, @Nullable String wechat_id) {
            return new ClusterUserInfo(google_email, microsoft_oid, huawei_id, mobi, wechat_id);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ClusterUserInfo)) {
                return false;
            }
            ClusterUserInfo clusterUserInfo = (ClusterUserInfo) other;
            return Intrinsics.areEqual(this.google_email, clusterUserInfo.google_email) && Intrinsics.areEqual(this.microsoft_oid, clusterUserInfo.microsoft_oid) && Intrinsics.areEqual(this.huawei_id, clusterUserInfo.huawei_id) && Intrinsics.areEqual(this.mobi, clusterUserInfo.mobi) && Intrinsics.areEqual(this.wechat_id, clusterUserInfo.wechat_id);
        }

        @Nullable
        public final String getGoogle_email() {
            return this.google_email;
        }

        @Nullable
        public final String getHuawei_id() {
            return this.huawei_id;
        }

        @Nullable
        public final String getMicrosoft_oid() {
            return this.microsoft_oid;
        }

        @Nullable
        public final String getMobi() {
            return this.mobi;
        }

        @Nullable
        public final String getWechat_id() {
            return this.wechat_id;
        }

        public int hashCode() {
            String str = this.google_email;
            int hashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.microsoft_oid;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.huawei_id;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.mobi;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.wechat_id;
            return hashCode4 + (str5 != null ? str5.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            return "ClusterUserInfo(google_email=" + this.google_email + ", microsoft_oid=" + this.microsoft_oid + ", huawei_id=" + this.huawei_id + ", mobi=" + this.mobi + ", wechat_id=" + this.wechat_id + ')';
        }

        public ClusterUserInfo(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
            this.google_email = str;
            this.microsoft_oid = str2;
            this.huawei_id = str3;
            this.mobi = str4;
            this.wechat_id = str5;
        }

        public /* synthetic */ ClusterUserInfo(String str, String str2, String str3, String str4, String str5, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5);
        }
    }

    public PriorityClusterParma(@NotNull ClusterUserInfo user) {
        Intrinsics.checkNotNullParameter(user, "user");
        this.user = user;
    }

    public static /* synthetic */ PriorityClusterParma copy$default(PriorityClusterParma priorityClusterParma, ClusterUserInfo clusterUserInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            clusterUserInfo = priorityClusterParma.user;
        }
        return priorityClusterParma.copy(clusterUserInfo);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final ClusterUserInfo getUser() {
        return this.user;
    }

    @NotNull
    public final PriorityClusterParma copy(@NotNull ClusterUserInfo user) {
        Intrinsics.checkNotNullParameter(user, "user");
        return new PriorityClusterParma(user);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PriorityClusterParma) && Intrinsics.areEqual(this.user, ((PriorityClusterParma) other).user);
    }

    @NotNull
    public final ClusterUserInfo getUser() {
        return this.user;
    }

    public int hashCode() {
        return this.user.hashCode();
    }

    @NotNull
    public String toString() {
        return "PriorityClusterParma(user=" + this.user + ')';
    }
}
