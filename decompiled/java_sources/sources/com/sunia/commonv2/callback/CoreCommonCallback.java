package com.sunia.commonv2.callback;

/* loaded from: classes10.dex */
public interface CoreCommonCallback<T> {
    void onError(Throwable th);

    void onSuccess(T t);
}
