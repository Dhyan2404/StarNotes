package com.onyx.android.sdk.cloudstorage.provider.webdav.action;

import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudNote;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u0016J\b\u0010\t\u001a\u00020\bH\u0016R\u0014\u0010\f\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSaveNoteAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/SaveCloudNoteAction;", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", BaiduYunConstant.CREATE, "fileBean", BaiduYunConstant.UPLOAD, "ensureFolderCreated", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "webDavProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "cloudNote", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavSaveNoteAction extends SaveCloudNoteAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final WebDavProvider webDavProvider;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavSaveNoteAction$a */
    /* loaded from: classes7.dex */
    public static final class C7357a<T, R> implements Function {
        public C7357a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return WebDavSaveNoteAction.this.createCloudFile();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavSaveNoteAction$b */
    /* loaded from: classes7.dex */
    public static final class C7358b<T, R> implements Function {
        public C7358b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return WebDavSaveNoteAction.this.ensureFolderCreated(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavSaveNoteAction$c */
    /* loaded from: classes7.dex */
    public static final class C7359c<T, R> implements Function {
        public C7359c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return WebDavSaveNoteAction.this.createLocalFile(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavSaveNoteAction$d */
    /* loaded from: classes7.dex */
    public static final class C7360d<T, R> implements Function {
        public C7360d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return WebDavSaveNoteAction.this.upload(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavSaveNoteAction$e */
    /* loaded from: classes7.dex */
    public static final class C7361e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CloudFileBean f41945e;

        public C7361e(CloudFileBean cloudFileBean) {
            this.f41945e = cloudFileBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41945e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebDavSaveNoteAction(@NotNull WebDavProvider webDavProvider, @NotNull CloudNote cloudNote) {
        super(cloudNote);
        Intrinsics.checkNotNullParameter(webDavProvider, "webDavProvider");
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        this.webDavProvider = webDavProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction, com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileBean> create() {
        Observable<CloudFileBean> flatMap = createObservable().flatMap(new C7357a()).flatMap(new C7358b()).flatMap(new C7359c()).flatMap(new C7360d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction
    @NotNull
    public Observable<CloudFileBean> ensureFolderCreated(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        return new EnsureCreateFolderPathAction(this.webDavProvider, fileBean).build();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction
    @NotNull
    public Observable<CloudFileBean> upload(@NotNull CloudFileBean fileBean) {
        List listOf;
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        WebDavProvider webDavProvider = this.webDavProvider;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(fileBean);
        Observable map = new WebDavUploadFileAction(webDavProvider, listOf).build().map(new C7361e(fileBean));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public WebDavProvider getWebDavProvider() {
        return this.webDavProvider;
    }
}
