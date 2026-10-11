package com.onyx.android.sdk.replicator.font;

import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.replicator.common.NoteService;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/font/FontServiceExecutor;", "", "()V", "loadFontList", "Lcom/onyx/android/sdk/replicator/font/FontListQueryResponse;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class FontServiceExecutor {

    @NotNull
    public static final FontServiceExecutor INSTANCE = new FontServiceExecutor();

    @NotNull
    public final FontListQueryResponse loadFontList() {
        FontListQueryResponse body = ((NoteService) ServiceFactory.INSTANCE.getOnyxApiV2Service(NoteService.class)).loadFontList().execute().body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }
}
