package com.onyx.android.sdk.cloudstorage.event;

import com.onyx.android.sdk.cloudstorage.model.AuthResult;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R$\u0010\u000f\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;", "Lcom/onyx/android/sdk/cloudstorage/event/BaseCloudStorageEvent;", "", "b", Constants.STRING_SIG, "getTag", "()Ljava/lang/String;", "tag", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "c", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "getAuthResult", "()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "setAuthResult", "(Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V", "authResult", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class CloudAuthEvent extends BaseCloudStorageEvent {

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final String tag;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public AuthResult authResult;

    public CloudAuthEvent(@Nullable String str) {
        this.tag = str;
    }

    @Nullable
    public final AuthResult getAuthResult() {
        return this.authResult;
    }

    @Nullable
    public final String getTag() {
        return this.tag;
    }

    public final void setAuthResult(@Nullable AuthResult authResult) {
        this.authResult = authResult;
    }
}
