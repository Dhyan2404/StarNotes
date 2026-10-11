package com.onyx.android.sdk.cloudstorage.provider.ynote;

import com.onyx.android.sdk.cloudstorage.common.NetDiskClient;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;", "Lcom/onyx/android/sdk/cloudstorage/common/NetDiskClient;", "()V", "getYNoteService", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;", "baseUrl", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class YNoteClient extends NetDiskClient {
    @NotNull
    public final YNoteService getYNoteService(@NotNull String baseUrl) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Object create = getRetrofit(baseUrl).create(YNoteService.class);
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return (YNoteService) create;
    }
}
