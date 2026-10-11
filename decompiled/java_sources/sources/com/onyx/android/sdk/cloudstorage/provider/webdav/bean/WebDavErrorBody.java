package com.onyx.android.sdk.cloudstorage.provider.webdav.bean;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavErrorBody;", "", "", "a", Constants.STRING_SIG, "getException", "()Ljava/lang/String;", "setException", "(Ljava/lang/String;)V", "exception", "b", "getMessage", "setMessage", "message", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavErrorBody {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String exception;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String message;

    @Nullable
    public final String getException() {
        return this.exception;
    }

    @Nullable
    public final String getMessage() {
        return this.message;
    }

    public final void setException(@Nullable String str) {
        this.exception = str;
    }

    public final void setMessage(@Nullable String str) {
        this.message = str;
    }
}
