package com.onyx.android.sdk.data.account.bean;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u00102\b\u0010\u0016\u001a\u0004\u0018\u00010\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/DevicePushBean;", "", "()V", "action", "", "getAction", "()Ljava/lang/String;", "setAction", "(Ljava/lang/String;)V", CouchFieldKey.KEY_CREATE_AT, "Ljava/util/Date;", "getCreatedAt", "()Ljava/util/Date;", "setCreatedAt", "(Ljava/util/Date;)V", "isLockDeviceAction", "", Constants.BOOLEAN_VALUE_SIG, CloudStorageConstants.MAC_TAG, "getMac", "setMac", "isCreatedAtTimeUpdated", "time", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DevicePushBean {

    @Nullable
    private String action;

    @Nullable
    private Date createdAt;

    @Nullable
    private String mac;

    @Nullable
    public final String getAction() {
        return this.action;
    }

    @Nullable
    public final Date getCreatedAt() {
        return this.createdAt;
    }

    @Nullable
    public final String getMac() {
        return this.mac;
    }

    public final boolean isCreatedAtTimeUpdated(@Nullable Date time) {
        if (time != null) {
            Date date = this.createdAt;
            Intrinsics.checkNotNull(date);
            if (date.getTime() > time.getTime()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isLockDeviceAction() {
        return StringUtils.equals(this.action, DevicePushAction.LOCK_DEVICE);
    }

    public final void setAction(@Nullable String str) {
        this.action = str;
    }

    public final void setCreatedAt(@Nullable Date date) {
        this.createdAt = date;
    }

    public final void setMac(@Nullable String str) {
        this.mac = str;
    }
}
