package com.onyx.android.sdk.cloudstorage.provider.webdav.bean;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR$\u0010\u0014\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/SearchBuilder;", "", "", "a", Constants.STRING_SIG, "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "url", "b", "getMethod", "setMethod", "method", "c", Constants.OBJECT_SIG, "getBody", "()Ljava/lang/Object;", "setBody", "(Ljava/lang/Object;)V", "body", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class SearchBuilder {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String url;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String method;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Object body;

    public SearchBuilder() {
        String upperCase = "search".toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        this.method = upperCase;
    }

    @Nullable
    public final Object getBody() {
        return this.body;
    }

    @NotNull
    public final String getMethod() {
        return this.method;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public final void setBody(@Nullable Object obj) {
        this.body = obj;
    }

    public final void setMethod(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.method = str;
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }
}
