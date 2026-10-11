package com.onyx.android.sdk.cloudstorage.provider.onedrive.bean;

import com.couchbase.lite.internal.core.C4Replicator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010$\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\b\u0018\u0000 &2\u00020\u0001:\u0001&B\u0007¢\u0006\u0004\b$\u0010%J\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0001R$\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR$\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\t\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR$\u0010\u0016\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\t\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\rR0\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR0\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u0019\u001a\u0004\b!\u0010\u001b\"\u0004\b\"\u0010\u001d¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/HttpRequest;", "", "", "addJSONContentTypeHeader", "", "key", "value", "addHeader", "a", Constants.STRING_SIG, "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "id", "b", "getUrl", "setUrl", "url", "c", "getMethod", "setMethod", "method", "", "d", "Ljava/util/Map;", "getBody", "()Ljava/util/Map;", "setBody", "(Ljava/util/Map;)V", "body", "", "e", "getHeaders", "setHeaders", C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HttpRequest {

    @NotNull
    public static final String CONTENT_TYPE_APP_JSON = "application/json";

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String id;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String url;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String method;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public Map<String, ? extends Object> body;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Map<String, Object> headers;

    public final void addHeader(@NotNull String key, @NotNull Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        if (this.headers == null) {
            this.headers = new LinkedHashMap();
        }
        Map<String, Object> map = this.headers;
        Intrinsics.checkNotNull(map);
        map.put(key, value);
    }

    public final void addJSONContentTypeHeader() {
        addHeader("Content-Type", "application/json");
    }

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

    @Nullable
    public final String getMethod() {
        return this.method;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public final void setBody(@Nullable Map<String, ? extends Object> map) {
        this.body = map;
    }

    public final void setHeaders(@Nullable Map<String, Object> map) {
        this.headers = map;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setMethod(@Nullable String str) {
        this.method = str;
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }
}
