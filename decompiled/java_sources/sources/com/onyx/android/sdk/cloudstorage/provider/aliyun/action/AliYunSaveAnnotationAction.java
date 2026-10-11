package com.onyx.android.sdk.cloudstorage.provider.aliyun.action;

import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudAnnotation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudAnnotationAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\b\u001a\u00020\u0007H\u0016R\u0014\u0010\u000b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunSaveAnnotationAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/SaveCloudAnnotationAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "Lio/reactivex/rxjava3/core/Observable;", "ensureFolderCreated", BaiduYunConstant.UPLOAD, "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "aliYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "cloudAnnotation", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AliYunSaveAnnotationAction extends SaveCloudAnnotationAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider aliYunProvider;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunSaveAnnotationAction$a */
    /* loaded from: classes7.dex */
    public static final class C7190a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CloudFileBean f41203e;

        public C7190a(CloudFileBean cloudFileBean) {
            this.f41203e = cloudFileBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41203e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AliYunSaveAnnotationAction(@NotNull AliYunProvider aliYunProvider, @NotNull CloudAnnotation cloudAnnotation) {
        super(cloudAnnotation);
        Intrinsics.checkNotNullParameter(aliYunProvider, "aliYunProvider");
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        this.aliYunProvider = aliYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudAnnotationAction
    @NotNull
    public Observable<CloudFileBean> ensureFolderCreated(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        return new AliYunCreateParentFolderAction(this.aliYunProvider, fileBean).build();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudAnnotationAction
    @NotNull
    public Observable<CloudFileBean> upload(@NotNull CloudFileBean fileBean) {
        List listOf;
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        AliYunProvider aliYunProvider = this.aliYunProvider;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(fileBean);
        Observable map = new AliYunUploadAction(aliYunProvider, listOf).build().map(new C7190a(fileBean));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public AliYunProvider getAliYunProvider() {
        return this.aliYunProvider;
    }
}
