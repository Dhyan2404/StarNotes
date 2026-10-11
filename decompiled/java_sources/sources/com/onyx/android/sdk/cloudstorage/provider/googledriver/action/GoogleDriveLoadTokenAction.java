package com.onyx.android.sdk.cloudstorage.provider.googledriver.action;

import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.data.GoogleDriveTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleLoadTokenRequest;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0014J\b\u0010\n\u001a\u00020\u0004H\u0016J\b\u0010\u000b\u001a\u00020\u0002H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriveLoadTokenAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "code", "", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Ljava/lang/String;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "getProvider", "load", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriveLoadTokenAction extends BaseCloudStorageAction<GoogleDriveTokenResponse> {

    @NotNull
    private final String code;

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    public GoogleDriveLoadTokenAction(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull String code) {
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(code, "code");
        this.googleDriverProvider = googleDriverProvider;
        this.code = code;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GoogleDriveTokenResponse load() throws Exception {
        return new GoogleLoadTokenRequest(this.code).execute();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GoogleDriveTokenResponse> create() {
        Observable map = createObservable().map(new Function() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriveLoadTokenAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final GoogleDriveTokenResponse apply(@NotNull BaseCloudStorageProvider it2) {
                GoogleDriveTokenResponse load;
                Intrinsics.checkNotNullParameter(it2, "it");
                load = GoogleDriveLoadTokenAction.this.load();
                return load;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public GoogleDriverProvider getGoogleDriverProvider() {
        return this.googleDriverProvider;
    }
}
