package com.sunia.commonv2.callback;

/* loaded from: classes10.dex */
public interface ICommonCallback<T> {
    default void onException(Exception exc) {
    }

    void onSuccess(T t);
}
