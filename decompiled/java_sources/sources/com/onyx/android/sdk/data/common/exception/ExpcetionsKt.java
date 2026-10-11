package com.onyx.android.sdk.data.common.exception;

import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.nio.file.FileAlreadyExistsException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"isFileAlreadyExistsException", "", "Ljava/io/IOException;", "isNetworkErrorException", "", "sdk-data_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ExpcetionsKt {
    public static final boolean isFileAlreadyExistsException(@NotNull IOException iOException) {
        Intrinsics.checkNotNullParameter(iOException, "<this>");
        return (iOException instanceof FileAlreadyExistsException) || (iOException instanceof kotlin.io.FileAlreadyExistsException);
    }

    public static final boolean isNetworkErrorException(@NotNull Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        return (th instanceof UnknownHostException) || (th instanceof ConnectException) || (th instanceof SocketTimeoutException);
    }
}
