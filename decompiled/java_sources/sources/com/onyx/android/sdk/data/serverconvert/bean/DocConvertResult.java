package com.onyx.android.sdk.data.serverconvert.bean;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteKey;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertResult;", "", "()V", BreakpointSQLiteKey.FILENAME, "", "getFilename", "()Ljava/lang/String;", "setFilename", "(Ljava/lang/String;)V", "key", "getKey", "setKey", CouchFieldKey.KEY_MD5, "getMd5", "setMd5", "url", "getUrl", "setUrl", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DocConvertResult {

    @Nullable
    private String filename;

    @Nullable
    private String key;

    @Nullable
    private String md5;

    @Nullable
    private String url;

    @Nullable
    public final String getFilename() {
        return this.filename;
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
    public final String getUrl() {
        return this.url;
    }

    public final void setFilename(@Nullable String str) {
        this.filename = str;
    }

    public final void setKey(@Nullable String str) {
        this.key = str;
    }

    public final void setMd5(@Nullable String str) {
        this.md5 = str;
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }
}
