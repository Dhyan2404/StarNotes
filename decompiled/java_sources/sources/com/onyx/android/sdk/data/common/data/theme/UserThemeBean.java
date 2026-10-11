package com.onyx.android.sdk.data.common.data.theme;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/theme/UserThemeBean;", "", CouchFieldKey.KEY_UNIQUE_ID, "", "key", "(Ljava/lang/String;Ljava/lang/String;)V", "getKey", "()Ljava/lang/String;", "setKey", "(Ljava/lang/String;)V", "getUniqueId", "setUniqueId", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class UserThemeBean {

    @NotNull
    private String key;

    @NotNull
    private String uniqueId;

    public UserThemeBean(@NotNull String uniqueId, @NotNull String key) {
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        Intrinsics.checkNotNullParameter(key, "key");
        this.uniqueId = uniqueId;
        this.key = key;
    }

    public static /* synthetic */ UserThemeBean copy$default(UserThemeBean userThemeBean, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = userThemeBean.uniqueId;
        }
        if ((i & 2) != 0) {
            str2 = userThemeBean.key;
        }
        return userThemeBean.copy(str, str2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getUniqueId() {
        return this.uniqueId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final UserThemeBean copy(@NotNull String uniqueId, @NotNull String key) {
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        Intrinsics.checkNotNullParameter(key, "key");
        return new UserThemeBean(uniqueId, key);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UserThemeBean)) {
            return false;
        }
        UserThemeBean userThemeBean = (UserThemeBean) other;
        return Intrinsics.areEqual(this.uniqueId, userThemeBean.uniqueId) && Intrinsics.areEqual(this.key, userThemeBean.key);
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    public int hashCode() {
        return (this.uniqueId.hashCode() * 31) + this.key.hashCode();
    }

    public final void setKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.key = str;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }

    @NotNull
    public String toString() {
        return "UserThemeBean(uniqueId=" + this.uniqueId + ", key=" + this.key + ')';
    }

    public /* synthetic */ UserThemeBean(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, str2);
    }
}
