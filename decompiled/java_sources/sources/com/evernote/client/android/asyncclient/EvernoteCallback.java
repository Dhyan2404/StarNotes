package com.evernote.client.android.asyncclient;

/* loaded from: classes4.dex */
public interface EvernoteCallback<T> {
    void onException(Exception exc);

    void onSuccess(T t);
}
