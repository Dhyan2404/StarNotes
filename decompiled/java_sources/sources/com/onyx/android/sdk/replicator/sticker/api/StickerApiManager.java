package com.onyx.android.sdk.replicator.sticker.api;

import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.replicator.sticker.service.StickerCategoryService;
import com.onyx.android.sdk.replicator.sticker.service.StickerService;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;", "", "Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;", "a", "Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;", "getStickerApi", "()Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;", "stickerApi", "Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;", "b", "Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;", "getStickerCategoryApi", "()Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;", "stickerCategoryApi", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StickerApiManager {

    @NotNull
    public static final StickerApiManager INSTANCE = new StickerApiManager();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final StickerService stickerApi;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final StickerCategoryService stickerCategoryApi;

    static {
        ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
        stickerApi = (StickerService) serviceFactory.getOnyxApiV2Service(StickerService.class);
        stickerCategoryApi = (StickerCategoryService) serviceFactory.getOnyxApiV2Service(StickerCategoryService.class);
    }

    @NotNull
    public final StickerService getStickerApi() {
        return stickerApi;
    }

    @NotNull
    public final StickerCategoryService getStickerCategoryApi() {
        return stickerCategoryApi;
    }
}
