package com.onyx.android.sdk.replicator.sticker.http;

import com.onyx.android.sdk.data.common.data.ResponeData;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import java.util.List;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/http/StickerCreateResponse;", "Lcom/onyx/android/sdk/data/common/data/ResponeData;", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "()V", "isDataFormatOk", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class StickerCreateResponse extends ResponeData<List<? extends StickerModel>> {
    @Override // com.onyx.android.sdk.data.common.data.ResponeData
    public boolean isDataFormatOk() {
        List<? extends StickerModel> data = getData();
        return !(data == null || data.isEmpty());
    }
}
