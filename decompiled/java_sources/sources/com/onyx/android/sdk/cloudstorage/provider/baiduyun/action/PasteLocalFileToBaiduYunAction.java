package com.onyx.android.sdk.cloudstorage.provider.baiduyun.action;

import com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/PasteLocalFileToBaiduYunAction;", "Lcom/onyx/android/sdk/cloudstorage/common/action/PasteLocalFileToCloudAction;", "()V", "getMaxQueryLimit", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PasteLocalFileToBaiduYunAction extends PasteLocalFileToCloudAction {
    @Override // com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction
    public int getMaxQueryLimit() {
        return 1000;
    }
}
