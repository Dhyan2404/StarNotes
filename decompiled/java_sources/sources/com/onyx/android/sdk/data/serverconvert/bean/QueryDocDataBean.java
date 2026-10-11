package com.onyx.android.sdk.data.serverconvert.bean;

import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001c\u0010$\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\u001a\u0010'\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001b\"\u0004\b)\u0010\u001d¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/bean/QueryDocDataBean;", "", "()V", CouchFieldKey.KEY_CREATE_AT, "", "getCreatedAt", "()Ljava/lang/String;", "setCreatedAt", "(Ljava/lang/String;)V", HuaweiYunQueryArgs.FILE_NAME, "getFileName", "setFileName", "key", "getKey", "setKey", CouchFieldKey.KEY_MD5, "getMd5", "setMd5", "params", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertRequestBody;", "getParams", "()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertRequestBody;", "setParams", "(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertRequestBody;)V", "status", "", "getStatus", "()I", "setStatus", "(I)V", "ticket", "getTicket", "setTicket", "updateAt", "getUpdateAt", "setUpdateAt", "url", "getUrl", "setUrl", "waiting", "getWaiting", "setWaiting", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class QueryDocDataBean {

    @Nullable
    private String createdAt;

    @Nullable
    private String fileName;

    @Nullable
    private String key;

    @Nullable
    private String md5;

    @Nullable
    private ConvertRequestBody params;
    private int status;

    @Nullable
    private String ticket;

    @Nullable
    private String updateAt;

    @Nullable
    private String url;
    private int waiting;

    @Nullable
    public final String getCreatedAt() {
        return this.createdAt;
    }

    @Nullable
    public final String getFileName() {
        return this.fileName;
    }

    @Nullable
    public final String getKey() {
        return this.key;
    }

    @Nullable
    public final String getMd5() {
        return this.md5;
    }

    @Nullable
    public final ConvertRequestBody getParams() {
        return this.params;
    }

    public final int getStatus() {
        return this.status;
    }

    @Nullable
    public final String getTicket() {
        return this.ticket;
    }

    @Nullable
    public final String getUpdateAt() {
        return this.updateAt;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public final int getWaiting() {
        return this.waiting;
    }

    public final void setCreatedAt(@Nullable String str) {
        this.createdAt = str;
    }

    public final void setFileName(@Nullable String str) {
        this.fileName = str;
    }

    public final void setKey(@Nullable String str) {
        this.key = str;
    }

    public final void setMd5(@Nullable String str) {
        this.md5 = str;
    }

    public final void setParams(@Nullable ConvertRequestBody convertRequestBody) {
        this.params = convertRequestBody;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTicket(@Nullable String str) {
        this.ticket = str;
    }

    public final void setUpdateAt(@Nullable String str) {
        this.updateAt = str;
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }

    public final void setWaiting(int i) {
        this.waiting = i;
    }
}
