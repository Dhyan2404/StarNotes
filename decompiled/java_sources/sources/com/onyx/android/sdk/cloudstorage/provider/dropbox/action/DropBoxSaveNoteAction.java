package com.onyx.android.sdk.cloudstorage.provider.dropbox.action;

import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudNote;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxProvider;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\n\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxSaveNoteAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/SaveCloudNoteAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.UPLOAD, "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "dropBoxProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "cloudNote", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DropBoxSaveNoteAction extends SaveCloudNoteAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final DropBoxProvider dropBoxProvider;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxSaveNoteAction$a */
    /* loaded from: classes7.dex */
    public static final class C7297a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CloudFileBean f41554e;

        public C7297a(CloudFileBean cloudFileBean) {
            this.f41554e = cloudFileBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41554e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DropBoxSaveNoteAction(@NotNull DropBoxProvider dropBoxProvider, @NotNull CloudNote cloudNote) {
        super(cloudNote);
        Intrinsics.checkNotNullParameter(dropBoxProvider, "dropBoxProvider");
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        this.dropBoxProvider = dropBoxProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction
    @NotNull
    public Observable<CloudFileBean> upload(@NotNull CloudFileBean fileBean) {
        List listOf;
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        DropBoxProvider dropBoxProvider = this.dropBoxProvider;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(fileBean);
        Observable map = new DropBoxUploadAction(dropBoxProvider, listOf).build().map(new C7297a(fileBean));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public DropBoxProvider getDropBoxProvider() {
        return this.dropBoxProvider;
    }
}
