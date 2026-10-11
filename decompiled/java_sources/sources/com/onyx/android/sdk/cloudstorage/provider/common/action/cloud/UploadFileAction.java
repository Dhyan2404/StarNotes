package com.onyx.android.sdk.cloudstorage.provider.common.action.cloud;

import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.common.SyncStatus;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u0000 %*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001%B\u0015\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00070\u0019¢\u0006\u0004\b#\u0010$J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0004H\u0016J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000H$¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\n\u001a\u00020\u0007H$J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\r\u001a\u00020\u0007H\u0014J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\r\u001a\u00020\u0007H\u0002J\u001c\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00102\u0006\u0010\r\u001a\u00020\u0007H\u0002J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\r\u001a\u00020\u0007H\u0002J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u0007H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u0007H\u0002J\u001c\u0010\u0006\u001a\u00020\u00162\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0010H\u0002R \u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00070\u00198\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR&\u0010\u001f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\u001e8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;", "R", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "r", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "toCloudFile", "(Ljava/lang/Object;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "createUploadRequest", "fileBean", "createParent", BaiduYunConstant.UPLOAD, "Lkotlin/Pair;", "u", C4921e.f26528e, "q", "Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;", "p", "", GoogleApiAvailabilityLight.f29016b, "pair", "", "fileBeans", "Ljava/util/List;", "getFileBeans", "()Ljava/util/List;", "Ljava/util/concurrent/CopyOnWriteArrayList;", "transferRequestList", "Ljava/util/concurrent/CopyOnWriteArrayList;", "getTransferRequestList", "()Ljava/util/concurrent/CopyOnWriteArrayList;", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUploadFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UploadFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,182:1\n1855#2,2:183\n*S KotlinDebug\n*F\n+ 1 UploadFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction\n*L\n35#1:183,2\n*E\n"})
/* loaded from: classes7.dex */
public abstract class UploadFileAction<R> extends BaseCloudStorageAction<BaseCloudStorageProvider> {

    @NotNull
    private static final String TAG = "UploadFileAction";

    @NotNull
    private final List<CloudFileBean> fileBeans;

    @NotNull
    private final CopyOnWriteArrayList<TransferCloudFileRequest<R>> transferRequestList;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction$a */
    /* loaded from: classes7.dex */
    public static final class C7277a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ UploadFileAction<R> f41489e;

        public C7277a(UploadFileAction<R> uploadFileAction) {
            this.f41489e = uploadFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull CloudFileBean cloudFileBean) {
            Intrinsics.checkNotNullParameter(cloudFileBean, "cloudFileBean");
            return this.f41489e.upload(cloudFileBean);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction$b */
    /* loaded from: classes7.dex */
    public static final class C7278b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ UploadFileAction<R> f41490e;

        public C7278b(UploadFileAction<R> uploadFileAction) {
            this.f41490e = uploadFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BaseCloudStorageProvider apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41490e.getWebDavProvider();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction$c */
    /* loaded from: classes7.dex */
    public static final class C7279c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CloudFileBean f41491e;

        public C7279c(CloudFileBean cloudFileBean) {
            this.f41491e = cloudFileBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41491e;
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction$d */
    /* loaded from: classes7.dex */
    public static final class C7280d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ UploadFileAction<R> f41492e;

        /* renamed from: f */
        public final /* synthetic */ CloudFileBean f41493f;

        public C7280d(UploadFileAction<R> uploadFileAction, CloudFileBean cloudFileBean) {
            this.f41492e = uploadFileAction;
            this.f41493f = cloudFileBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41492e.m32592q(this.f41493f);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction$e */
    /* loaded from: classes7.dex */
    public static final class C7281e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ UploadFileAction<R> f41494e;

        /* renamed from: f */
        public final /* synthetic */ CloudFileBean f41495f;

        public C7281e(UploadFileAction<R> uploadFileAction, CloudFileBean cloudFileBean) {
            this.f41494e = uploadFileAction;
            this.f41495f = cloudFileBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41494e.m32590o(this.f41495f);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction$f */
    /* loaded from: classes7.dex */
    public static final class C7282f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ UploadFileAction<R> f41496e;

        public C7282f(UploadFileAction<R> uploadFileAction) {
            this.f41496e = uploadFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<CloudFileBean, CloudFileBean> apply(@NotNull CloudFileBean cloudFileBean) {
            Intrinsics.checkNotNullParameter(cloudFileBean, "cloudFileBean");
            return this.f41496e.m32594u(cloudFileBean);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction$g */
    /* loaded from: classes7.dex */
    public static final class C7283g<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ UploadFileAction<R> f41497e;

        public C7283g(UploadFileAction<R> uploadFileAction) {
            this.f41497e = uploadFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Pair<CloudFileBean, CloudFileBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f41497e.m32593r(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction$h */
    /* loaded from: classes7.dex */
    public static final class C7284h<T, R> implements Function {

        /* renamed from: e */
        public static final C7284h<T, R> f41498e = new C7284h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull Pair<CloudFileBean, CloudFileBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getSecond();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.UploadFileAction$i */
    /* loaded from: classes7.dex */
    public static final class C7285i<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ CloudFileBean f41499e;

        /* renamed from: f */
        public final /* synthetic */ UploadFileAction<R> f41500f;

        public C7285i(CloudFileBean cloudFileBean, UploadFileAction<R> uploadFileAction) {
            this.f41499e = cloudFileBean;
            this.f41500f = uploadFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable dispose) {
            Intrinsics.checkNotNullParameter(dispose, "dispose");
            if (StringUtils.isNotEmpty(this.f41499e.getLocalFilePath())) {
                BaseCloudStorageProvider webDavProvider = this.f41500f.getWebDavProvider();
                String localFilePath = this.f41499e.getLocalFilePath();
                Intrinsics.checkNotNull(localFilePath);
                webDavProvider.addTransferDisposable(localFilePath, dispose);
            }
        }
    }

    public UploadFileAction(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        this.fileBeans = fileBeans;
        this.transferRequestList = new CopyOnWriteArrayList<>();
    }

    /* renamed from: s */
    public static final void m32587s(CloudFileBean fileBean, UploadFileAction this$0) {
        Intrinsics.checkNotNullParameter(fileBean, "$fileBean");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Debug.INSTANCE.m32046e("dispose upload:" + fileBean.getLocalFilePath() + ",uid:" + fileBean.getUniqueId());
        this$0.m32589n(fileBean);
    }

    /* renamed from: t */
    public static final void m32588t(CloudFileBean fileBean, UploadFileAction this$0) {
        Intrinsics.checkNotNullParameter(fileBean, "$fileBean");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (StringUtils.isNotEmpty(fileBean.getLocalFilePath())) {
            BaseCloudStorageProvider webDavProvider = this$0.getWebDavProvider();
            String localFilePath = fileBean.getLocalFilePath();
            Intrinsics.checkNotNull(localFilePath);
            webDavProvider.removeTransferDisposable(localFilePath);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<BaseCloudStorageProvider> create() {
        Iterator<T> it2 = this.fileBeans.iterator();
        while (it2.hasNext()) {
            ((CloudFileBean) it2.next()).setAccountId(getWebDavProvider().getAccountId());
        }
        Observable<R> map = Observable.fromIterable(this.fileBeans).observeOn(getObserveOn()).flatMap(new C7277a(this)).takeLast(1).map(new C7278b(this));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public Observable<CloudFileBean> createParent(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        Observable<CloudFileBean> just = Observable.just(fileBean);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public abstract TransferCloudFileRequest<R> createUploadRequest(@NotNull CloudFileBean cloudFile) throws Exception;

    @NotNull
    public final List<CloudFileBean> getFileBeans() {
        return this.fileBeans;
    }

    @NotNull
    public final CopyOnWriteArrayList<TransferCloudFileRequest<R>> getTransferRequestList() {
        return this.transferRequestList;
    }

    /* renamed from: n */
    public final void m32589n(CloudFileBean fileBean) {
        Iterator<TransferCloudFileRequest<R>> it2 = this.transferRequestList.iterator();
        while (it2.hasNext()) {
            TransferCloudFileRequest<R> next = it2.next();
            if (StringUtils.equals(String.valueOf(next.getStatus().getTag()), fileBean.getCloudFilePath())) {
                next.setAbort();
                return;
            }
        }
    }

    /* renamed from: o */
    public final Observable<CloudFileBean> m32590o(CloudFileBean fileBean) {
        CloudFileBean queryParentFolder = getWebDavProvider().getCloudStorageRecordProvider().queryParentFolder(fileBean.getLocalFilePath());
        if (queryParentFolder == null || queryParentFolder.getSyncStatus().isNewFromCloud()) {
            Observable<CloudFileBean> just = Observable.just(fileBean);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<R> map = createParent(queryParentFolder).map(new C7279c(fileBean));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final SyncStatus m32591p(CloudFileBean fileBean) {
        return fileBean.getSyncStatus().isNewFromLocal() ? SyncStatus.NEW_FROM_LOCAL : SyncStatus.UPLOAD;
    }

    /* renamed from: q */
    public final CloudFileBean m32592q(CloudFileBean fileBean) {
        CloudFileBean cloudFileBean;
        List listOf;
        if (StringKt.isNotBlank(fileBean.getLocalFilePath())) {
            CloudStorageRecordProvider cloudStorageRecordProvider = getWebDavProvider().getCloudStorageRecordProvider();
            String localFilePath = fileBean.getLocalFilePath();
            Intrinsics.checkNotNull(localFilePath);
            cloudFileBean = cloudStorageRecordProvider.queryFileInfoByLocalPath(localFilePath);
        } else {
            cloudFileBean = null;
        }
        if (cloudFileBean != null) {
            cloudFileBean.setSyncStatus(m32591p(cloudFileBean));
            CloudStorageRecordProvider cloudStorageRecordProvider2 = getWebDavProvider().getCloudStorageRecordProvider();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(cloudFileBean);
            cloudStorageRecordProvider2.saveCloudFiles(listOf);
        }
        if (StringUtils.isEmpty(fileBean.getUniqueId())) {
            if (cloudFileBean != null) {
                fileBean.setUniqueId(cloudFileBean.getUniqueId());
            } else {
                String computeMD5 = FileUtils.INSTANCE.computeMD5(fileBean.getLocalFilePath());
                if (computeMD5 == null) {
                    computeMD5 = "";
                }
                fileBean.setUniqueId(computeMD5);
            }
        }
        if (StringUtils.isEmpty(fileBean.getParentId()) && cloudFileBean != null && StringUtils.isNotBlank(cloudFileBean.getParentId())) {
            fileBean.setParentId(cloudFileBean.getParentId());
        }
        fileBean.setSyncStatus(m32591p(fileBean));
        return fileBean;
    }

    /* renamed from: r */
    public final void m32593r(Pair<CloudFileBean, CloudFileBean> pair) {
        List listOf;
        CloudFileBean first = pair.getFirst();
        CloudFileBean second = pair.getSecond();
        CloudStorageRecordProvider cloudStorageRecordProvider = getWebDavProvider().getCloudStorageRecordProvider();
        cloudStorageRecordProvider.setParentId(second);
        cloudStorageRecordProvider.delete(first);
        StringBuilder sb = new StringBuilder();
        sb.append("delete oldCloudFile:");
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        sb.append(jSONUtils.toJson(first));
        LogUtils.wTag(TAG, sb.toString());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(second);
        cloudStorageRecordProvider.saveCloudFiles(listOf);
        LogUtils.wTag(TAG, "save newCloudFile:" + jSONUtils.toJson(second));
        first.updateModelField(second);
    }

    @NotNull
    public abstract CloudFileBean toCloudFile(R r) throws Exception;

    /* renamed from: u */
    public final Pair<CloudFileBean, CloudFileBean> m32594u(CloudFileBean fileBean) throws Exception {
        TransferCloudFileRequest<R> createUploadRequest = createUploadRequest(fileBean);
        createUploadRequest.getStatus().setUpload(true);
        try {
            try {
                OnyxFileTransferStatus<CloudFileBean> status = createUploadRequest.getStatus();
                status.setTag(fileBean.getCloudFilePath());
                status.setNewTag(fileBean.getUniqueId());
                status.setEntry(fileBean);
                this.transferRequestList.add(createUploadRequest);
                createUploadRequest.onStart();
                CloudFileBean cloudFile = toCloudFile(createUploadRequest.execute());
                OnyxFileTransferStatus<CloudFileBean> status2 = createUploadRequest.getStatus();
                status2.setNewTag(cloudFile.getUniqueId());
                status2.setEntry(cloudFile);
                createUploadRequest.onDone(null);
                return TuplesKt.m61535to(fileBean, cloudFile);
            } catch (Exception e) {
                createUploadRequest.onDone(e);
                throw e;
            }
        } finally {
            createUploadRequest.disposeTransfer();
            this.transferRequestList.remove(createUploadRequest);
        }
    }

    public final Observable<CloudFileBean> upload(final CloudFileBean fileBean) {
        Observable<R> doFinally = createObservableWithUpdateClusterInfo().map(new C7280d(this, fileBean)).flatMap(new C7281e(this, fileBean)).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.nxn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                UploadFileAction.m32587s(CloudFileBean.this, this);
            }
        }).observeOn(getMultiObserveOn()).map(new C7282f(this)).observeOn(getObserveOn()).doOnNext(new C7283g(this)).map(C7284h.f41498e).doOnSubscribe(new C7285i(fileBean, this)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.oxn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                UploadFileAction.m32588t(CloudFileBean.this, this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }
}
