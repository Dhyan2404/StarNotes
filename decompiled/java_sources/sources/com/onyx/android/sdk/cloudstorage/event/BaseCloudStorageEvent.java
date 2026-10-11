package com.onyx.android.sdk.cloudstorage.event;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0011\u0010\u000b\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/event/BaseCloudStorageEvent;", "", "", "a", "Ljava/lang/Throwable;", "getThrowable", "()Ljava/lang/Throwable;", "setThrowable", "(Ljava/lang/Throwable;)V", "throwable", "", "isError", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public class BaseCloudStorageEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public Throwable throwable;

    @Nullable
    public final Throwable getThrowable() {
        return this.throwable;
    }

    public final boolean isError() {
        return this.throwable != null;
    }

    public final void setThrowable(@Nullable Throwable th) {
        this.throwable = th;
    }
}
