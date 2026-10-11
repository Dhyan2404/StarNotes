package com.onyx.android.sdk.cloudstorage.provider.aliyun.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.cloudstorage.constans.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0016\u001a\u00020\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0006\"\u0004\b\u0012\u0010\bR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0006\"\u0004\b\u0015\u0010\b¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;", "()V", "expiration", "", "getExpiration", "()Ljava/lang/String;", "setExpiration", "(Ljava/lang/String;)V", "expireSec", "", "getExpireSec", "()Ljava/lang/Long;", "setExpireSec", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "method", "getMethod", "setMethod", "url", "getUrl", "setUrl", "toString", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AliYunFileLink extends AliYunFileBase {

    @Nullable
    private String expiration;

    /* renamed from: expireSec, reason: from kotlin metadata and from toString */
    @JSONField(alternateNames = {Constants.ALI_YUN_EXPIRE_SEC})
    @Nullable
    private Long expire_sec;

    @Nullable
    private String method;

    @Nullable
    private String url;

    @Nullable
    public final String getExpiration() {
        return this.expiration;
    }

    @Nullable
    /* renamed from: getExpireSec, reason: from getter */
    public final Long getExpire_sec() {
        return this.expire_sec;
    }

    @Nullable
    public final String getMethod() {
        return this.method;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public final void setExpiration(@Nullable String str) {
        this.expiration = str;
    }

    public final void setExpireSec(@Nullable Long l) {
        this.expire_sec = l;
    }

    public final void setMethod(@Nullable String str) {
        this.method = str;
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }

    @NotNull
    public String toString() {
        return "AliYunDriveFileLink{drive_id='" + getDriveId() + "', file_id='" + getFileId() + "', expire_sec=" + this.expire_sec + ", url='" + this.url + "', expiration='" + this.expiration + "', method='" + this.method + "'}";
    }
}
