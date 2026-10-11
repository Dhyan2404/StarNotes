package com.onyx.android.sdk.data.common.download.extension;

import com.couchbase.lite.internal.core.C4Replicator;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.StatusUtil;
import com.onyx.android.sdk.data.common.cloud.Constant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Credentials;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0007¨\u0006\b"}, m61528d2 = {"addBasicAuthentication", "Lcom/liulishuo/okdownload/DownloadTask$Builder;", C4Replicator.REPLICATOR_AUTH_USER_NAME, "", "password", "getStatus", "Lcom/liulishuo/okdownload/StatusUtil$Status;", "Lcom/liulishuo/okdownload/DownloadTask;", "sdk-data_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DownloadTaskKt {
    @NotNull
    public static final DownloadTask.Builder addBasicAuthentication(@NotNull DownloadTask.Builder builder, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        if (!(str == null || str.length() == 0)) {
            if (!(str2 == null || str2.length() == 0)) {
                builder.addHeader(Constant.TAG_AUTHORIZATION, Credentials.basic$default(str, str2, null, 4, null));
            }
        }
        return builder;
    }

    @NotNull
    public static final StatusUtil.Status getStatus(@NotNull DownloadTask downloadTask) {
        Intrinsics.checkNotNullParameter(downloadTask, "<this>");
        StatusUtil.Status status = StatusUtil.getStatus(downloadTask);
        Intrinsics.checkNotNullExpressionValue(status, "getStatus(...)");
        return status;
    }
}
