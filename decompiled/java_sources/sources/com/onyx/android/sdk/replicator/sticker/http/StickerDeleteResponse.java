package com.onyx.android.sdk.replicator.sticker.http;

import com.onyx.android.sdk.data.common.data.ResponeData;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/http/StickerDeleteResponse;", "Lcom/onyx/android/sdk/data/common/data/ResponeData;", "", "()V", "isSuccess", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class StickerDeleteResponse extends ResponeData<Object> {
    @Override // com.onyx.android.sdk.data.common.data.ResponeData
    public boolean isSuccess() {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{0, 1});
        return listOf.contains(Integer.valueOf(getCode()));
    }
}
