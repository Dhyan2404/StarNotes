package com.onyx.android.sdk.cloudstorage.utils;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b#\u0010$J\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J1\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u0004HÆ\u0001J\t\u0010\u000e\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\u0013\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\n\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0015\u001a\u0004\b\u001b\u0010\u0017\"\u0004\b\u001c\u0010\u0019R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0015\u001a\u0004\b\u001e\u0010\u0017\"\u0004\b\u001f\u0010\u0019R\"\u0010\f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u0015\u001a\u0004\b!\u0010\u0017\"\u0004\b\"\u0010\u0019¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/utils/ProviderInfo;", "", "Ljava/io/File;", "absoluteDir", "", "component1", "component2", "component3", "component4", Constant.TAG_USER_ID, "baseDir", "dbName", "key", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "b", "getBaseDir", "setBaseDir", "c", "getDbName", "setDbName", "d", "getKey", "setKey", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class ProviderInfo {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String userId;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String baseDir;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public String dbName;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public String key;

    public ProviderInfo() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ ProviderInfo copy$default(ProviderInfo providerInfo, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = providerInfo.userId;
        }
        if ((i & 2) != 0) {
            str2 = providerInfo.baseDir;
        }
        if ((i & 4) != 0) {
            str3 = providerInfo.dbName;
        }
        if ((i & 8) != 0) {
            str4 = providerInfo.key;
        }
        return providerInfo.copy(str, str2, str3, str4);
    }

    @NotNull
    public final File absoluteDir() {
        return new File(this.baseDir, this.userId);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getBaseDir() {
        return this.baseDir;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getDbName() {
        return this.dbName;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final ProviderInfo copy(@NotNull String userId, @NotNull String baseDir, @NotNull String dbName, @NotNull String key) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(baseDir, "baseDir");
        Intrinsics.checkNotNullParameter(dbName, "dbName");
        Intrinsics.checkNotNullParameter(key, "key");
        return new ProviderInfo(userId, baseDir, dbName, key);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ProviderInfo)) {
            return false;
        }
        ProviderInfo providerInfo = (ProviderInfo) other;
        return Intrinsics.areEqual(this.userId, providerInfo.userId) && Intrinsics.areEqual(this.baseDir, providerInfo.baseDir) && Intrinsics.areEqual(this.dbName, providerInfo.dbName) && Intrinsics.areEqual(this.key, providerInfo.key);
    }

    @NotNull
    public final String getBaseDir() {
        return this.baseDir;
    }

    @NotNull
    public final String getDbName() {
        return this.dbName;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return (((((this.userId.hashCode() * 31) + this.baseDir.hashCode()) * 31) + this.dbName.hashCode()) * 31) + this.key.hashCode();
    }

    public final void setBaseDir(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.baseDir = str;
    }

    public final void setDbName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.dbName = str;
    }

    public final void setKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.key = str;
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    @NotNull
    public String toString() {
        return "ProviderInfo(userId=" + this.userId + ", baseDir=" + this.baseDir + ", dbName=" + this.dbName + ", key=" + this.key + ')';
    }

    public ProviderInfo(@NotNull String userId, @NotNull String baseDir, @NotNull String dbName, @NotNull String key) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(baseDir, "baseDir");
        Intrinsics.checkNotNullParameter(dbName, "dbName");
        Intrinsics.checkNotNullParameter(key, "key");
        this.userId = userId;
        this.baseDir = baseDir;
        this.dbName = dbName;
        this.key = key;
    }

    public /* synthetic */ ProviderInfo(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4);
    }
}
