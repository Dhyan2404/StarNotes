package com.onyx.android.sdk.cloudstorage.provider.onedrive.bean;

import com.couchbase.lite.internal.core.C4Replicator;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b&\u0010'J#\u0010\u0005\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006R$\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R0\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR0\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0019\u001a\u0004\b \u0010\u001b\"\u0004\b!\u0010\u001dR\u0011\u0010$\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b$\u0010%¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/HttpResponse;", "", "T", "Ljava/lang/Class;", "tClass", "parseBody", "(Ljava/lang/Class;)Ljava/lang/Object;", "", "a", Constants.STRING_SIG, "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "id", "", "b", "I", "getStatus", "()I", "setStatus", "(I)V", "status", "", "c", "Ljava/util/Map;", "getHeaders", "()Ljava/util/Map;", "setHeaders", "(Ljava/util/Map;)V", C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS, "d", "getBody", "setBody", "body", "", "isSuccessful", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HttpResponse {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String id;

    /* renamed from: b, reason: from kotlin metadata */
    public int status;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Map<String, ? extends Object> headers;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public Map<String, ? extends Object> body;

    @Nullable
    public final Map<String, Object> getBody() {
        return this.body;
    }

    @Nullable
    public final Map<String, Object> getHeaders() {
        return this.headers;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    public final int getStatus() {
        return this.status;
    }

    public final boolean isSuccessful() {
        return this.status == 200;
    }

    public final <T> T parseBody(@Nullable Class<T> tClass) {
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        T t = (T) jSONUtils.parseObject(jSONUtils.toJson(this.body), tClass);
        Intrinsics.checkNotNull(t);
        return t;
    }

    public final void setBody(@Nullable Map<String, ? extends Object> map) {
        this.body = map;
    }

    public final void setHeaders(@Nullable Map<String, ? extends Object> map) {
        this.headers = map;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }
}
