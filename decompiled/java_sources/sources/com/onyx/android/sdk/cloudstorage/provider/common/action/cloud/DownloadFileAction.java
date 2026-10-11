package com.onyx.android.sdk.cloudstorage.provider.common.action.cloud;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.common.SyncStatus;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0005\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u0015\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H$J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f2\u0006\u0010\u000b\u001a\u00020\u0005H$J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0014J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\u0006\u0010\t\u001a\u00020\u0005H\u0002J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0002J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0005H\u0002J\u0010\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0005H\u0002R\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R&\u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\u00198\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR \u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00050\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;", "R", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFileBeanList", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "fileBean", "fetchFileInfoFromCloud", "cloudFile", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "createDownloadRequest", "downloadImpl", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "cloudFileBean", "r", "oldFileBean", "s", "fileBeans", "Ljava/util/List;", "getFileBeans", "()Ljava/util/List;", "Ljava/util/concurrent/CopyOnWriteArrayList;", "transferRequestList", "Ljava/util/concurrent/CopyOnWriteArrayList;", "getTransferRequestList", "()Ljava/util/concurrent/CopyOnWriteArrayList;", "", "", "cloudFileBeanMap", "Ljava/util/Map;", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDownloadFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n1855#2,2:126\n*S KotlinDebug\n*F\n+ 1 DownloadFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction\n*L\n27#1:126,2\n*E\n"})
/* loaded from: classes7.dex */
public abstract class DownloadFileAction<R> extends BaseCloudStorageAction<Unit> {

    @NotNull
    private final Map<String, CloudFileBean> cloudFileBeanMap;

    @NotNull
    private final List<CloudFileBean> fileBeans;

    @NotNull
    private final CopyOnWriteArrayList<TransferCloudFileRequest<R>> transferRequestList;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction$a */
    /* loaded from: classes7.dex */
    public static final class C7234a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ DownloadFileAction<R> f41425e;

        public C7234a(DownloadFileAction<R> downloadFileAction) {
            this.f41425e = downloadFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull ClusterInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(this.f41425e.getFileBeans());
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction$b */
    /* loaded from: classes7.dex */
    public static final class C7235b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ DownloadFileAction<R> f41426e;

        public C7235b(DownloadFileAction<R> downloadFileAction) {
            this.f41426e = downloadFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41426e.m32475s(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction$c */
    /* loaded from: classes7.dex */
    public static final class C7236c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ DownloadFileAction<R> f41427e;

        public C7236c(DownloadFileAction<R> downloadFileAction) {
            this.f41427e = downloadFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41427e.m32473o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction$d */
    /* loaded from: classes7.dex */
    public static final class C7237d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ DownloadFileAction<R> f41428e;

        public C7237d(DownloadFileAction<R> downloadFileAction) {
            this.f41428e = downloadFileAction;
        }

        /* renamed from: a */
        public final void m32479a(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f41428e.getWebDavProvider();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m32479a((CloudFileBean) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction$e */
    /* loaded from: classes7.dex */
    public static final class C7238e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ DownloadFileAction<R> f41429e;

        /* renamed from: f */
        public final /* synthetic */ CloudFileBean f41430f;

        public C7238e(DownloadFileAction<R> downloadFileAction, CloudFileBean cloudFileBean) {
            this.f41429e = downloadFileAction;
            this.f41430f = cloudFileBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f41429e.m32474r(this.f41430f);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction$f */
    /* loaded from: classes7.dex */
    public static final class C7239f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ DownloadFileAction<R> f41431e;

        /* renamed from: f */
        public final /* synthetic */ CloudFileBean f41432f;

        public C7239f(DownloadFileAction<R> downloadFileAction, CloudFileBean cloudFileBean) {
            this.f41431e = downloadFileAction;
            this.f41432f = cloudFileBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41431e.downloadImpl(this.f41432f);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction$g */
    /* loaded from: classes7.dex */
    public static final class C7240g<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ CloudFileBean f41433e;

        /* renamed from: f */
        public final /* synthetic */ DownloadFileAction<R> f41434f;

        public C7240g(CloudFileBean cloudFileBean, DownloadFileAction<R> downloadFileAction) {
            this.f41433e = cloudFileBean;
            this.f41434f = downloadFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable disposable) {
            Intrinsics.checkNotNullParameter(disposable, "disposable");
            if (StringKt.isNotBlank(this.f41433e.getLocalFilePath())) {
                BaseCloudStorageProvider webDavProvider = this.f41434f.getWebDavProvider();
                String localFilePath = this.f41433e.getLocalFilePath();
                Intrinsics.checkNotNull(localFilePath);
                webDavProvider.addTransferDisposable(localFilePath, disposable);
            }
        }
    }

    public DownloadFileAction(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        this.fileBeans = fileBeans;
        this.transferRequestList = new CopyOnWriteArrayList<>();
        this.cloudFileBeanMap = new LinkedHashMap();
        for (CloudFileBean cloudFileBean : fileBeans) {
            if (StringKt.isNotBlank(cloudFileBean.getCloudFilePath())) {
                Map<String, CloudFileBean> map = this.cloudFileBeanMap;
                String cloudFilePath = cloudFileBean.getCloudFilePath();
                Intrinsics.checkNotNull(cloudFilePath);
                map.put(cloudFilePath, cloudFileBean);
            }
        }
    }

    /* renamed from: p */
    public static final void m32470p(DownloadFileAction this$0, CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(fileBean, "$fileBean");
        Debug.INSTANCE.m32035d(this$0.getClass(), "dispose download:" + fileBean.getLocalFilePath() + ",uid:" + fileBean.getUniqueId(), new Object[0]);
        this$0.m32472n(fileBean);
    }

    /* renamed from: q */
    public static final void m32471q(CloudFileBean fileBean, DownloadFileAction this$0) {
        Intrinsics.checkNotNullParameter(fileBean, "$fileBean");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (StringKt.isNotBlank(fileBean.getLocalFilePath())) {
            BaseCloudStorageProvider webDavProvider = this$0.getWebDavProvider();
            String localFilePath = fileBean.getLocalFilePath();
            Intrinsics.checkNotNull(localFilePath);
            webDavProvider.removeTransferDisposable(localFilePath);
        }
    }

    @NotNull
    public List<CloudFileBean> cloudFileBeanList() {
        return new ArrayList(this.cloudFileBeanMap.values());
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Unit> create() {
        Observable<R> map = updateClusterInfoObservable().observeOn(getObserveOn()).flatMap(new C7234a(this)).observeOn(getMultiObserveOn()).map(new C7235b(this)).flatMap(new C7236c(this)).takeLast(1).map(new C7237d(this));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public abstract TransferCloudFileRequest<R> createDownloadRequest(@NotNull CloudFileBean cloudFile) throws Exception;

    @NotNull
    public CloudFileBean downloadImpl(@NotNull CloudFileBean cloudFile) throws Exception {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        TransferCloudFileRequest<R> createDownloadRequest = createDownloadRequest(cloudFile);
        try {
            try {
                OnyxFileTransferStatus<CloudFileBean> status = createDownloadRequest.getStatus();
                status.setTag(cloudFile.getCloudFilePath());
                status.setEntry(cloudFile);
                this.transferRequestList.add(createDownloadRequest);
                if (cloudFile.isLocalFileChanged()) {
                    createDownloadRequest.execute();
                    createDownloadRequest.getStatus().setEntry(cloudFile);
                    createDownloadRequest.onDone(null);
                } else {
                    createDownloadRequest.onDone(null);
                }
                return cloudFile;
            } catch (Exception e) {
                createDownloadRequest.onDone(e);
                throw e;
            }
        } finally {
            createDownloadRequest.disposeTransfer();
            this.transferRequestList.remove(createDownloadRequest);
        }
    }

    @NotNull
    public abstract CloudFileBean fetchFileInfoFromCloud(@NotNull CloudFileBean fileBean) throws Exception;

    @NotNull
    public final List<CloudFileBean> getFileBeans() {
        return this.fileBeans;
    }

    @NotNull
    public final CopyOnWriteArrayList<TransferCloudFileRequest<R>> getTransferRequestList() {
        return this.transferRequestList;
    }

    /* renamed from: n */
    public final void m32472n(CloudFileBean fileBean) {
        Iterator<TransferCloudFileRequest<R>> it2 = this.transferRequestList.iterator();
        while (it2.hasNext()) {
            TransferCloudFileRequest<R> next = it2.next();
            if (Intrinsics.areEqual(String.valueOf(next.getStatus().getTag()), fileBean.getCloudFilePath())) {
                next.setAbort();
                return;
            }
        }
    }

    /* renamed from: o */
    public final Observable<CloudFileBean> m32473o(final CloudFileBean fileBean) {
        Observable<R> doFinally = createMultiObservable().doOnNext(new C7238e(this, fileBean)).map(new C7239f(this, fileBean)).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.vff
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DownloadFileAction.m32470p(DownloadFileAction.this, fileBean);
            }
        }).doOnSubscribe(new C7240g(fileBean, this)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.wff
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DownloadFileAction.m32471q(CloudFileBean.this, this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: r */
    public final void m32474r(CloudFileBean cloudFileBean) {
        List listOf;
        cloudFileBean.setSyncStatus(SyncStatus.NEW_FROM_CLOUD);
        CloudStorageRecordProvider cloudStorageRecordProvider = getWebDavProvider().getCloudStorageRecordProvider();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(cloudFileBean);
        cloudStorageRecordProvider.saveCloudFiles(listOf);
    }

    /* renamed from: s */
    public final CloudFileBean m32475s(CloudFileBean oldFileBean) throws Exception {
        CloudFileBean fetchFileInfoFromCloud = fetchFileInfoFromCloud(oldFileBean);
        Map<String, CloudFileBean> map = this.cloudFileBeanMap;
        String cloudFilePath = fetchFileInfoFromCloud.getCloudFilePath();
        Intrinsics.checkNotNull(cloudFilePath);
        map.put(cloudFilePath, fetchFileInfoFromCloud);
        return fetchFileInfoFromCloud;
    }
}
