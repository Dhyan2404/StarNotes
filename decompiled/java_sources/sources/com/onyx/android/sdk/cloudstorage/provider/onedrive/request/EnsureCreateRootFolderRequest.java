package com.onyx.android.sdk.cloudstorage.provider.onedrive.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveClient;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0002R\u0014\u0010\u0007\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/EnsureCreateRootFolderRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "execute", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "oneDriveClient", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class EnsureCreateRootFolderRequest extends RxBaseRequest<OneDriverFileInfo> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OneDriveClient oneDriveClient;

    public EnsureCreateRootFolderRequest(@NotNull OneDriveClient oneDriveClient) {
        Intrinsics.checkNotNullParameter(oneDriveClient, "oneDriveClient");
        this.oneDriveClient = oneDriveClient;
    }

    /* renamed from: a */
    public final OneDriverFileInfo m32762a() throws Exception {
        OneDriverFetchFileInfoRequest oneDriverFetchFileInfoRequest = new OneDriverFetchFileInfoRequest(this.oneDriveClient);
        oneDriverFetchFileInfoRequest.setPath("/");
        return oneDriverFetchFileInfoRequest.execute();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public OneDriverFileInfo execute() {
        return m32762a();
    }
}
