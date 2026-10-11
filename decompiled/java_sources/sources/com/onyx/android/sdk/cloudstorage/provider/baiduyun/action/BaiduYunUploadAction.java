package com.onyx.android.sdk.cloudstorage.provider.baiduyun.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunUserBean;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunLoadUserInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunUploadFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction;
import com.onyx.android.sdk.cloudstorage.provider.common.request.SaveCloudFileInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.data.cache.TimedCache;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 \u001b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB\u001d\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00070\r¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0016J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0014J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\t\u001a\u00020\u0007H\u0014J\b\u0010\f\u001a\u00020\u0004H\u0016J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\rH\u0002J\b\u0010\u0010\u001a\u00020\u000fH\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", BaiduYunConstant.CREATE, "r", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "toCloudFile", "cloudFile", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "createUploadRequest", "getProvider", "", "w", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;", "v", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", C6997f.f39671c, "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;", "userBean", "fileBeans", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Ljava/util/List;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunUploadAction extends UploadFileAction<BaiduYunFileInfo> {

    /* renamed from: g */
    @NotNull
    public static final TimedCache<String, BaiduYunUserBean> f41303g = new TimedCache<>(600000);

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public BaiduYunUserBean userBean;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunUploadAction$a */
    /* loaded from: classes7.dex */
    public static final class C7205a<T, R> implements Function {
        public C7205a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BaiduYunUserBean apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaiduYunUploadAction.this.m32387v();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunUploadAction$b */
    /* loaded from: classes7.dex */
    public static final class C7206b<T, R> implements Function {
        public C7206b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull BaiduYunUserBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaiduYunUploadAction.this.m32388w();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunUploadAction$c */
    /* loaded from: classes7.dex */
    public static final class C7207c<T, R> implements Function {
        public C7207c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BaseCloudStorageProvider> apply(@NotNull List<CloudFileBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaiduYunUploadAction.super.create();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaiduYunUploadAction(@NotNull BaiduYunProvider baiduYunProvider, @NotNull List<CloudFileBean> fileBeans) {
        super(fileBeans);
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        this.baiduYunProvider = baiduYunProvider;
        this.userBean = new BaiduYunUserBean();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction, com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<BaseCloudStorageProvider> create() {
        Observable<BaseCloudStorageProvider> flatMap = createMultiObservable().map(new C7205a()).map(new C7206b()).flatMap(new C7207c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction
    @NotNull
    public TransferCloudFileRequest<BaiduYunFileInfo> createUploadRequest(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        BaiduYunProvider baiduYunProvider = this.baiduYunProvider;
        return new BaiduYunUploadFileRequest(baiduYunProvider, cloudFile, baiduYunProvider.getAccountId(), this.userBean);
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider */
    public BaseCloudStorageProvider getWebDavProvider() {
        return this.baiduYunProvider;
    }

    /* renamed from: v */
    public final BaiduYunUserBean m32387v() {
        TimedCache<String, BaiduYunUserBean> timedCache = f41303g;
        BaiduYunUserBean baiduYunUserBean = timedCache.get(this.baiduYunProvider.getAccountId());
        if (baiduYunUserBean != null) {
            this.userBean = baiduYunUserBean;
            return baiduYunUserBean;
        }
        BaiduYunLoadUserInfoRequest baiduYunLoadUserInfoRequest = new BaiduYunLoadUserInfoRequest(this.baiduYunProvider, true);
        baiduYunLoadUserInfoRequest.setAccountId(this.baiduYunProvider.getAccountId());
        try {
            baiduYunLoadUserInfoRequest.execute();
            this.userBean = baiduYunLoadUserInfoRequest.getUserBean();
            timedCache.put(this.baiduYunProvider.getAccountId(), this.userBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.userBean;
    }

    /* renamed from: w */
    public final List<CloudFileBean> m32388w() throws Exception {
        return new SaveCloudFileInfoRequest(this.baiduYunProvider, getFileBeans()).execute();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction
    @NotNull
    public CloudFileBean toCloudFile(@NotNull BaiduYunFileInfo r) {
        Intrinsics.checkNotNullParameter(r, "r");
        return BaiduYunFileInfo.INSTANCE.toCloudFile(r, this.baiduYunProvider.getAccountId());
    }
}
