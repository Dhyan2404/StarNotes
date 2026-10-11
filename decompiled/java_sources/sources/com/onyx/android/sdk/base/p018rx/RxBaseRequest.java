package com.onyx.android.sdk.base.p018rx;

import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\r\u0010\u0006\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0007J\u0006\u0010\b\u001a\u00020\u0005J\b\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "T", "", "()V", "abort", "", "execute", "()Ljava/lang/Object;", "isAbort", "setAbort", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class RxBaseRequest<T> {
    private volatile boolean abort;

    public abstract T execute() throws Exception;

    /* renamed from: isAbort, reason: from getter */
    public final boolean getAbort() {
        return this.abort;
    }

    public void setAbort() {
        this.abort = true;
    }
}
