package com.onyx.android.sdk.cloudstorage.provider.onedrive.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.request.OneDriverFetchFileInfoRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0016J\b\u0010\u0007\u001a\u00020\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileInfoAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "getProvider", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "oneDriveProvider", C6997f.f39671c, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriverFetchFileInfoAction extends BaseCloudStorageAction<CloudFileBean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final OneDriveProvider oneDriveProvider;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean cloudFile;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriverFetchFileInfoAction$a */
    /* loaded from: classes7.dex */
    public static final class C7329a<T, R> implements Function {
        public C7329a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OneDriverFetchFileInfoAction.this.m32755l();
        }
    }

    public OneDriverFetchFileInfoAction(@NotNull OneDriveProvider oneDriveProvider, @NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(oneDriveProvider, "oneDriveProvider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.oneDriveProvider = oneDriveProvider;
        this.cloudFile = cloudFile;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileBean> create() {
        Observable map = createObservable().map(new C7329a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final CloudFileBean m32755l() throws Exception {
        OneDriverFetchFileInfoRequest oneDriverFetchFileInfoRequest = new OneDriverFetchFileInfoRequest(this.oneDriveProvider.getOneDriveClient());
        oneDriverFetchFileInfoRequest.setId(this.cloudFile.getUniqueId());
        CloudFileBean cloudFile = OneDriverFileInfo.INSTANCE.toCloudFile(this.oneDriveProvider.getCloudStorageRecordProvider(), oneDriverFetchFileInfoRequest.execute(), this.oneDriveProvider.getAccountId());
        cloudFile.setParentId(this.cloudFile.getParentId());
        return cloudFile;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public OneDriveProvider getWebDavProvider() {
        return this.oneDriveProvider;
    }
}
