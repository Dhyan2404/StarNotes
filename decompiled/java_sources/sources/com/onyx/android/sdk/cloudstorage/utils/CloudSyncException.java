package com.onyx.android.sdk.cloudstorage.utils;

import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/utils/CloudSyncException;", "", "()V", "isCloudSyncException", "", "e", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CloudSyncException {

    @NotNull
    public static final CloudSyncException INSTANCE = new CloudSyncException();

    public final boolean isCloudSyncException(@Nullable Throwable e) {
        return (e instanceof ConnectException) || (e instanceof SocketTimeoutException) || (e instanceof SocketException) || (e instanceof UnknownHostException);
    }
}
