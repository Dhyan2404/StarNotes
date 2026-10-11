package com.dropbox.core.p006v2.callbacks;

/* loaded from: classes4.dex */
public interface DbxGlobalCallbackFactory {
    DbxNetworkErrorCallback createNetworkErrorCallback(String str);

    <T> DbxRouteErrorCallback<T> createRouteErrorCallback(String str, T t);
}
