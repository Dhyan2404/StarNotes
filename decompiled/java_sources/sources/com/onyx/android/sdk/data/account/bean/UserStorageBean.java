package com.onyx.android.sdk.data.account.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.utils.StorageUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.mortbay.jetty.HttpHeaderValues;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0015\u001a\u00020\u0007H\u0007J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0007R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001e\u0010\f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR\u001e\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000bR\u001e\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000b¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;", "", "()V", "isStorageTooLow", "", Constants.BOOLEAN_VALUE_SIG, "storageLeft", "", "getStorageLeft", "()J", "setStorageLeft", "(J)V", "storageLimit", "getStorageLimit", "setStorageLimit", "storageRed", "getStorageRed", "setStorageRed", "storageUsed", "getStorageUsed", "setStorageUsed", "getStorageRedMB", "useStorage", "", HttpHeaderValues.BYTES, "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class UserStorageBean {

    @JSONField(name = "storage_left")
    private long storageLeft;

    @JSONField(name = "storage_limit")
    private long storageLimit;

    @JSONField(name = "storage_red")
    private long storageRed;

    @JSONField(name = "storage_used")
    private long storageUsed;

    public final long getStorageLeft() {
        return this.storageLeft;
    }

    public final long getStorageLimit() {
        return this.storageLimit;
    }

    public final long getStorageRed() {
        return this.storageRed;
    }

    @JSONField(serialize = false)
    public final long getStorageRedMB() {
        return StorageUtils.INSTANCE.convertBytesToMB(this.storageRed);
    }

    public final long getStorageUsed() {
        return this.storageUsed;
    }

    public final boolean isStorageTooLow() {
        return this.storageLeft < this.storageRed;
    }

    public final void setStorageLeft(long j) {
        this.storageLeft = j;
    }

    public final void setStorageLimit(long j) {
        this.storageLimit = j;
    }

    public final void setStorageRed(long j) {
        this.storageRed = j;
    }

    public final void setStorageUsed(long j) {
        this.storageUsed = j;
    }

    public final void useStorage(long bytes) {
        this.storageUsed += bytes;
        this.storageLeft -= bytes;
    }
}
