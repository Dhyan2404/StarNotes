package com.onyx.android.sdk.cloudstorage.model.common;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J\u000e\u0010\r\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J\u0016\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000bJ\u000e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/common/FetchPolicy;", "", "()V", "CLOUD_MEM_DB", "", "CLOUD_ONLY", "DB_ONLY", "MEM_CLOUD_DB", "MEM_DB_CLOUD", "MEM_DB_ONLY", "isCloudOnlyPolicy", "", "fetchPolicy", "isCloudPartPolicy", "isDataFromMemDb", "policy", "wifiConnected", "isMemDbCloudPolicy", "isMemPartPolicy", "translate", "value", "Type", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FetchPolicy {
    public static final int CLOUD_MEM_DB = 2;
    public static final int CLOUD_ONLY = 0;
    public static final int DB_ONLY = 5;

    @NotNull
    public static final FetchPolicy INSTANCE = new FetchPolicy();
    public static final int MEM_CLOUD_DB = 4;
    public static final int MEM_DB_CLOUD = 3;
    public static final int MEM_DB_ONLY = 1;

    @Metadata(m61527d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/common/FetchPolicy$Type;", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    /* loaded from: classes7.dex */
    public @interface Type {
    }

    public final boolean isCloudOnlyPolicy(int fetchPolicy) {
        return fetchPolicy == 0;
    }

    public final boolean isCloudPartPolicy(int fetchPolicy) {
        return fetchPolicy == 0 || fetchPolicy == 2 || fetchPolicy == 4;
    }

    public final boolean isDataFromMemDb(int policy, boolean wifiConnected) {
        if (policy == 1) {
            return true;
        }
        return (policy == 2 || policy == 3 || policy == 4) && !wifiConnected;
    }

    public final boolean isMemDbCloudPolicy(int fetchPolicy) {
        return 3 == fetchPolicy;
    }

    public final boolean isMemPartPolicy(int fetchPolicy) {
        return fetchPolicy == 4 || fetchPolicy == 3 || fetchPolicy == 1;
    }

    public final int translate(int value) {
        return value;
    }
}
