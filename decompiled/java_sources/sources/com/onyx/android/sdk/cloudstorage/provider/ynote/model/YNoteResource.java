package com.onyx.android.sdk.cloudstorage.provider.ynote.model;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteResource;", "", "", "a", Constants.STRING_SIG, "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "url", "b", "getSrc", "setSrc", Constant.SRC_TAG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class YNoteResource {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String url;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String src;

    @Nullable
    public final String getSrc() {
        return this.src;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public final void setSrc(@Nullable String str) {
        this.src = str;
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }
}
